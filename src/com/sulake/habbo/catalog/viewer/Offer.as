package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1991:String = "pricing_model_unknown";
      
      public static const const_454:String = "pricing_model_single";
      
      public static const const_405:String = "pricing_model_multi";
      
      public static const const_588:String = "pricing_model_bundle";
      
      public static const const_1987:String = "price_type_none";
      
      public static const const_833:String = "price_type_credits";
      
      public static const const_1253:String = "price_type_activitypoints";
      
      public static const const_1230:String = "price_type_credits_and_activitypoints";
       
      
      private var var_805:String;
      
      private var var_1246:String;
      
      private var var_1203:int;
      
      private var var_1894:String;
      
      private var var_1245:int;
      
      private var var_1244:int;
      
      private var var_1893:int;
      
      private var var_415:ICatalogPage;
      
      private var var_638:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1748:int = 0;
      
      private var var_2532:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1203 = param1;
         this.var_1894 = param2;
         this.var_1245 = param3;
         this.var_1244 = param4;
         this.var_1893 = param5;
         this.var_415 = param8;
         this.var_1748 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1748;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_415;
      }
      
      public function get offerId() : int
      {
         return this.var_1203;
      }
      
      public function get localizationId() : String
      {
         return this.var_1894;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1245;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1244;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1893;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_638;
      }
      
      public function get pricingModel() : String
      {
         return this.var_805;
      }
      
      public function get priceType() : String
      {
         return this.var_1246;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2532;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2532 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1203 = 0;
         this.var_1894 = "";
         this.var_1245 = 0;
         this.var_1244 = 0;
         this.var_1893 = 0;
         this.var_415 = null;
         if(this.var_638 != null)
         {
            this.var_638.dispose();
            this.var_638 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_805)
         {
            case const_454:
               this.var_638 = new SingleProductContainer(this,param1);
               break;
            case const_405:
               this.var_638 = new MultiProductContainer(this,param1);
               break;
            case const_588:
               this.var_638 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_805);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_805 = const_454;
            }
            else
            {
               this.var_805 = const_405;
            }
         }
         else if(param1.length > 1)
         {
            this.var_805 = const_588;
         }
         else
         {
            this.var_805 = const_1991;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1245 > 0 && this.var_1244 > 0)
         {
            this.var_1246 = const_1230;
         }
         else if(this.var_1245 > 0)
         {
            this.var_1246 = const_833;
         }
         else if(this.var_1244 > 0)
         {
            this.var_1246 = const_1253;
         }
         else
         {
            this.var_1246 = const_1987;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_415.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_638.products)
         {
            _loc4_ = this.var_415.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
