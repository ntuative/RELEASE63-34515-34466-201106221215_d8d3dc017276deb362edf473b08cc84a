package com.sulake.habbo.ui.widget.memenu
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.handler.MeMenuWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.ui.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetMeMenuMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.utils.WindowToggle;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_191:String = "me_menu_top_view";
      
      public static const const_545:String = "me_menu_my_clothes_view";
      
      public static const const_1256:String = "me_menu_dance_moves_view";
      
      public static const const_811:String = "me_menu_settings_view";
      
      public static const const_884:String = "me_menu_sound_settings";
      
      private static const const_1040:Point = new Point(95,440);
       
      
      private var var_52:IMeMenuView;
      
      private var var_17:IWindowContainer;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1436:int = 0;
      
      private var var_2289:int = 0;
      
      private var var_3047:int = 0;
      
      private var var_2290:Boolean = false;
      
      private var var_1722:int = 0;
      
      private var var_1723:Boolean = false;
      
      private var var_2293:Boolean = false;
      
      private var var_515:Boolean = false;
      
      private var var_2292:Boolean = false;
      
      private var var_2291:int = 0;
      
      private var var_1724:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1818:Boolean;
      
      public function MeMenuWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboLocalizationManager, param5:IEventDispatcher, param6:IHabboConfigurationManager)
      {
         super(param1,param2,param3,param4);
         this._config = param6;
         this._eventDispatcher = param5;
         if(false)
         {
            this.var_2292 = param6.getBoolean("client.news.embed.enabled",false);
         }
         this.var_1818 = this._config.getBoolean("menu.own_avatar.enabled",false);
         (param1 as MeMenuWidgetHandler).widget = this;
         this.changeView(const_191);
         this.hide();
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         this.hide();
         this._eventDispatcher = null;
         if(this.var_52 != null)
         {
            this.var_52.dispose();
            this.var_52 = null;
         }
         this.var_17 = null;
         this._config = null;
         super.dispose();
      }
      
      public function get handler() : MeMenuWidgetHandler
      {
         return var_930 as MeMenuWidgetHandler;
      }
      
      override public function get mainWindow() : IWindow
      {
         return this.var_17;
      }
      
      private function get mainContainer() : IWindowContainer
      {
         var _loc1_:* = null;
         if(this.var_17 == null)
         {
            _loc1_ = _assets.getAssetByName("memenu");
            if(_loc1_)
            {
               this.var_17 = windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
            }
         }
         if(this.var_17)
         {
            return this.var_17.findChildByTag("MAIN_CONTENT") as IWindowContainer;
         }
         return null;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_191:
               _loc2_ = new MeMenuMainView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_1256:
               _loc2_ = new MeMenuDanceView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_811:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_884:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_52)
            {
               this.var_52.dispose();
               this.var_52 = null;
            }
            this.var_52 = _loc2_;
            this.var_52.init(this,param1);
            this.mainContainer.removeChildAt(0);
            this.mainContainer.addChildAt(this.var_52.window,0);
            this.var_17.visible = true;
            this.var_17.activate();
         }
         this.updateSize();
      }
      
      public function updateSize() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_52 && this.var_52.window && this.var_17)
         {
            _loc1_ = 5;
            this.var_52.window.position = new Point(_loc1_,_loc1_);
            this.mainContainer.width = this.var_52.window.width + _loc1_ * 2;
            this.mainContainer.height = this.var_52.window.height + _loc1_ * 2;
            if(this._config.getBoolean("simple.memenu.enabled",false))
            {
               _loc2_ = this.handler.container.toolbar.getRect();
               this.var_17.x = _loc2_.right + _loc1_;
               this.var_17.y = _loc2_.bottom - this.var_17.height;
            }
            else
            {
               this.var_17.x = const_1040.x;
               this.var_17.y = 0 - this.mainContainer.height;
            }
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_795,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_784,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_855,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_985,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1384,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1270,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_152,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_252,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_113,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_445,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_123,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_548,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_108,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_98,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_462,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_795,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_784,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_855,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_985,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_152,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_252,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1384,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1270,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_113,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_445,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_548,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_123,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_108,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_98,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_98,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         if(this.var_52 != null)
         {
            this.var_17.removeChild(this.var_52.window);
            this.var_52.dispose();
            this.var_52 = null;
         }
         this.var_17.visible = false;
         this.var_515 = false;
         this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_1818)
         {
            return;
         }
         if(!(this.var_515 && this.var_52.window.name == const_545))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_789);
            if(messageListener != null)
            {
               if(!this.var_1724)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_515)
         {
            return;
         }
         if(this.var_52.window.name == const_884)
         {
            (this.var_52 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_548:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_515 + " view: " + this.var_52.window.name);
               if(this.var_515 != true || this.var_52.window.name != const_191)
               {
                  return;
               }
               (this.var_52 as MeMenuMainView).setIconAssets("clothes_icon",const_191,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_123:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_515)
         {
            if(this.var_17 != null && WindowToggle.isHiddenByOtherWindows(this.var_17))
            {
               this.var_17.activate();
               return;
            }
            this.var_515 = false;
         }
         else
         {
            this.var_515 = true;
         }
         if(this.var_515)
         {
            _loc2_ = new RoomWidgetMeMenuMessage(RoomWidgetMeMenuMessage.const_751);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
            this.changeView(const_191);
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_1723 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_1723 = true;
            }
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_52 != null && this.var_52.window.name != const_545)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_52 != null && this.var_52.window.name == const_545)
         {
            this.changeView(const_191);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_52 != null && this.var_52.window.name == const_545)
         {
            this.changeView(const_191);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1436;
         this.var_1436 = param1.daysLeft;
         this.var_2289 = param1.method_10;
         this.var_3047 = param1.pastPeriods;
         this.var_2290 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_1722);
         this.var_1722 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_52 != null)
            {
               this.changeView(this.var_52.window.name);
            }
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_2291 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_2291.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1724 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1724 = true;
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2290;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1436 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1436;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2289;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_1722;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2292;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_1723;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2293;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2293 = param1;
      }
   }
}
