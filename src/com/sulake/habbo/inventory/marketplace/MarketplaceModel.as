package com.sulake.habbo.inventory.marketplace
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.BuyMarketplaceTokensMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceCanMakeOfferComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceItemStatsComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.MakeOfferMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.HabboInventory;
   import com.sulake.habbo.inventory.IInventoryModel;
   import com.sulake.habbo.inventory.furni.FurniModel;
   import com.sulake.habbo.inventory.items.FloorItem;
   import com.sulake.habbo.inventory.items.IItem;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class MarketplaceModel implements IInventoryModel
   {
       
      
      private var var_28:HabboInventory;
      
      private var _assets:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _disposed:Boolean = false;
      
      private var var_252:IItem;
      
      private var var_1633:Boolean;
      
      private var var_2323:int;
      
      private var var_2048:int;
      
      private var var_2047:int;
      
      private var var_2320:int;
      
      private var var_2324:int;
      
      private var var_2321:int;
      
      private var var_2322:int;
      
      private var var_2819:int;
      
      private var var_2820:int;
      
      private var _view:MarketplaceView;
      
      private var var_1613:Boolean = false;
      
      public function MarketplaceModel(param1:HabboInventory, param2:IHabboWindowManager, param3:IHabboCommunicationManager, param4:IAssetLibrary, param5:IRoomEngine, param6:IHabboLocalizationManager, param7:IHabboConfigurationManager)
      {
         super();
         this.var_28 = param1;
         this._communication = param3;
         this._windowManager = param2;
         this._assets = param4;
         this._roomEngine = param5;
         this._view = new MarketplaceView(this,this._windowManager,this._assets,param5,param6,param7);
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.var_1633 = param1;
      }
      
      public function set commission(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function set tokenBatchPrice(param1:int) : void
      {
         this.var_2048 = param1;
      }
      
      public function set tokenBatchSize(param1:int) : void
      {
         this.var_2047 = param1;
      }
      
      public function set offerMinPrice(param1:int) : void
      {
         this.var_2320 = param1;
      }
      
      public function set offerMaxPrice(param1:int) : void
      {
         this.var_2324 = param1;
      }
      
      public function set expirationHours(param1:int) : void
      {
         this.var_2321 = param1;
      }
      
      public function set averagePricePeriod(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1633;
      }
      
      public function get commission() : int
      {
         return this.var_2323;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2048;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2047;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2320;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2324;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2321;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         this.var_28 = null;
         this._communication = null;
         this._windowManager = null;
         this._assets = null;
         this._roomEngine = null;
      }
      
      public function releaseItem() : void
      {
         if(this.var_28 != null && this.var_28.furniModel != null && this.var_252 != null)
         {
            this.var_28.furniModel.removeLockFrom(this.var_252.id);
            this.var_252 = null;
         }
      }
      
      public function startOfferMaking(param1:IItem) : void
      {
         if(this.var_252 != null || param1 == null)
         {
            return;
         }
         if(this.var_28 == null)
         {
            return;
         }
         var _loc2_:FurniModel = this.var_28.furniModel;
         if(_loc2_ == null)
         {
            return;
         }
         this.var_252 = param1;
         _loc2_.addLockTo(param1.id);
         var _loc3_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.send(new GetMarketplaceCanMakeOfferComposer());
      }
      
      public function buyMarketplaceTokens() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new BuyMarketplaceTokensMessageComposer());
         this.var_1613 = true;
      }
      
      public function makeOffer(param1:int) : void
      {
         if(this.var_252 == null)
         {
            return;
         }
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = this.var_252 is FloorItem ? 1 : 2;
         _loc2_.send(new MakeOfferMessageComposer(param1,_loc3_,this.var_252.ref));
         this.releaseItem();
      }
      
      public function getItemStats() : void
      {
         if(this.var_252 == null)
         {
            return;
         }
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:int = this.var_252 is FloorItem ? 1 : 2;
         this.var_2819 = _loc2_;
         this.var_2820 = this.var_252.type;
         _loc1_.send(new GetMarketplaceItemStatsComposer(_loc2_,this.var_252.type));
      }
      
      public function proceedOfferMaking(param1:int, param2:int) : void
      {
         this.var_1613 = false;
         switch(param1)
         {
            case 1:
               this._view.showMakeOffer(this.var_252);
               break;
            case 2:
               this._view.showAlert("${inventory.marketplace.no_trading_privilege.title}","${inventory.marketplace.no_trading_privilege.info}");
               break;
            case 3:
               this._view.showAlert("${inventory.marketplace.no_trading_pass.title}","${inventory.marketplace.no_trading_pass.info}");
               break;
            case 4:
               this._view.showBuyTokens(this.var_2048,this.var_2047);
         }
      }
      
      public function endOfferMaking(param1:int) : void
      {
         if(!this._view)
         {
            return;
         }
         this._view.showResult(param1);
      }
      
      public function setAveragePrice(param1:int, param2:int, param3:int) : void
      {
         if(param1 != this.var_2819 || param2 != this.var_2820)
         {
            return;
         }
         if(!this._view)
         {
            return;
         }
         this._view.updateAveragePrice(param3,this.var_2322);
      }
      
      public function onNotEnoughCredits() : void
      {
         if(this.var_1613)
         {
            this.var_1613 = false;
            this.releaseItem();
         }
      }
      
      public function requestInitialization(param1:int = 0) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return null;
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function subCategorySwitch(param1:String) : void
      {
      }
      
      public function closingInventoryView() : void
      {
      }
   }
}
