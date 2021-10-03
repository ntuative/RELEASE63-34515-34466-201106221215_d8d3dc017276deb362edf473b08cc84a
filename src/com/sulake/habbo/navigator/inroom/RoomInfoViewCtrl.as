package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_193:IWindowContainer;
      
      private var var_3063:int;
      
      private var var_395:RoomEventViewCtrl;
      
      private var var_393:Timer;
      
      private var var_150:RoomSettingsCtrl;
      
      private var var_279:RoomThumbnailCtrl;
      
      private var var_1026:TagRenderer;
      
      private var var_394:IWindowContainer;
      
      private var var_392:IWindowContainer;
      
      private var var_649:IWindowContainer;
      
      private var var_1934:IWindowContainer;
      
      private var var_1933:IWindowContainer;
      
      private var var_1267:IWindowContainer;
      
      private var var_945:ITextWindow;
      
      private var var_1025:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_817:ITextWindow;
      
      private var var_1264:ITextWindow;
      
      private var var_1023:ITextWindow;
      
      private var var_819:ITextWindow;
      
      private var var_1529:ITextWindow;
      
      private var var_280:IWindowContainer;
      
      private var var_818:IWindowContainer;
      
      private var var_1528:IWindowContainer;
      
      private var var_1936:ITextWindow;
      
      private var var_648:ITextWindow;
      
      private var var_1935:IWindow;
      
      private var var_1268:IContainerButtonWindow;
      
      private var var_1270:IContainerButtonWindow;
      
      private var var_1265:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1269:IContainerButtonWindow;
      
      private var var_1532:IButtonWindow;
      
      private var var_1533:IButtonWindow;
      
      private var var_1530:IButtonWindow;
      
      private var var_821:IWindowContainer;
      
      private var var_1266:ITextWindow;
      
      private var var_1024:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_820:IButtonWindow;
      
      private var var_1531:Boolean = false;
      
      private const const_913:int = 75;
      
      private const const_911:int = 3;
      
      private const const_863:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_395 = new RoomEventViewCtrl(this._navigator);
         this.var_150 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_279 = new RoomThumbnailCtrl(this._navigator);
         this.var_1026 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_150);
         this.var_393 = new Timer(6000,1);
         this.var_393.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_393)
         {
            this.var_393.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_393.reset();
            this.var_393 = null;
         }
         this._navigator = null;
         this.var_395 = null;
         this.var_150 = null;
         this.var_279 = null;
         if(this.var_1026)
         {
            this.var_1026.dispose();
            this.var_1026 = null;
         }
         this.var_193 = null;
         this.var_394 = null;
         this.var_392 = null;
         this.var_649 = null;
         this.var_1934 = null;
         this.var_1933 = null;
         this.var_1267 = null;
         this.var_945 = null;
         this.var_1025 = null;
         this._ownerName = null;
         this.var_817 = null;
         this.var_1264 = null;
         this.var_1023 = null;
         this.var_819 = null;
         this.var_1529 = null;
         this.var_280 = null;
         this.var_818 = null;
         this.var_1528 = null;
         this.var_1936 = null;
         this.var_648 = null;
         this.var_1935 = null;
         this.var_1268 = null;
         this.var_1270 = null;
         this.var_1265 = null;
         this._remFavouriteButton = null;
         this.var_1269 = null;
         this.var_1532 = null;
         this.var_1533 = null;
         this.var_1530 = null;
         this.var_821 = null;
         this.var_1266 = null;
         this.var_1024 = null;
         this._buttons = null;
         this.var_820 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_393.reset();
         this.var_395.active = true;
         this.var_150.active = false;
         this.var_279.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_393.reset();
         this.var_150.load(param1);
         this.var_150.active = true;
         this.var_395.active = false;
         this.var_279.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_150.active = true;
         this.var_395.active = false;
         this.var_279.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_393.reset();
         this.var_150.active = false;
         this.var_395.active = false;
         this.var_279.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1531 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_393.reset();
         this.var_395.active = false;
         this.var_150.active = false;
         this.var_279.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_911;
         this._window.y = this.const_913;
         if(this._navigator.configuration.getBoolean("club.status.bar.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_193,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_193.height = Util.getLowestPoint(this.var_193);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_863;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_394);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_150.refresh(this.var_394);
         this.var_279.refresh(this.var_394);
         Util.moveChildrenToColumn(this.var_394,["room_details","room_buttons"],0,2);
         this.var_394.height = Util.getLowestPoint(this.var_394);
         this.var_394.visible = true;
         Logger.log("XORP: " + this.var_392.visible + ", " + this.var_1267.visible + ", " + this.var_649.visible + ", " + this.var_649.rectangle + ", " + this.var_394.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_280);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_395.refresh(this.var_280);
         if(Util.hasVisibleChildren(this.var_280) && !(this.var_150.active || this.var_279.active))
         {
            Util.moveChildrenToColumn(this.var_280,["event_details","event_buttons"],0,2);
            this.var_280.height = Util.getLowestPoint(this.var_280);
            this.var_280.visible = true;
         }
         else
         {
            this.var_280.visible = false;
         }
         Logger.log("EVENT: " + this.var_280.visible + ", " + this.var_280.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_150.active && !this.var_279.active && !this.var_395.active)
         {
            this.var_821.visible = true;
            this.var_1024.text = this.getEmbedData();
         }
         else
         {
            this.var_821.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_150.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_820)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_820.visible = _loc1_;
            if(this.var_1531)
            {
               this.var_820.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_820.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_150.active || this.var_279.active)
         {
            return;
         }
         this.var_945.text = param1.roomName;
         this.var_945.height = this.var_945.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_817.text = param1.description;
         this.var_1026.refreshTags(this.var_392,param1.tags);
         this.var_817.visible = false;
         if(param1.description != "")
         {
            this.var_817.height = this.var_817.textHeight + 5;
            this.var_817.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1270,"facebook_logo_small",_loc3_,null,0);
         this.var_1270.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1268,"thumb_up",_loc4_,null,0);
         this.var_1268.visible = _loc4_;
         this.var_819.visible = !_loc4_;
         this.var_1529.visible = !_loc4_;
         this.var_1529.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_392,"home",param2,null,0);
         this._navigator.refreshButton(this.var_392,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_392,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_945.y,0);
         this.var_392.visible = true;
         this.var_392.height = Util.getLowestPoint(this.var_392);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_392.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_150.active || this.var_279.active)
         {
            return;
         }
         this.var_1025.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1025.height = this.var_1025.textHeight + 5;
         this.var_1264.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1264.height = this.var_1264.textHeight + 5;
         Util.moveChildrenToColumn(this.var_649,["public_space_name","public_space_desc"],this.var_1025.y,0);
         this.var_649.visible = true;
         this.var_649.height = Math.max(86,Util.getLowestPoint(this.var_649));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_395.active)
         {
            return;
         }
         this.var_1936.text = param1.eventName;
         this.var_648.text = param1.eventDescription;
         this.var_1026.refreshTags(this.var_818,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_648.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_648.height = this.var_648.textHeight + 5;
            this.var_648.y = Util.getLowestPoint(this.var_818) + 2;
            this.var_648.visible = true;
         }
         this.var_818.visible = true;
         this.var_818.height = Util.getLowestPoint(this.var_818);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_150.active || this.var_279.active)
         {
            return;
         }
         this.var_1532.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1265.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1269.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1267.visible = Util.hasVisibleChildren(this.var_1267);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_395.active)
         {
            return;
         }
         this.var_1533.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1530.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1528.visible = Util.hasVisibleChildren(this.var_1528);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_193 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_394 = IWindowContainer(this.find("room_info"));
         this.var_392 = IWindowContainer(this.find("room_details"));
         this.var_649 = IWindowContainer(this.find("public_space_details"));
         this.var_1934 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1933 = IWindowContainer(this.find("rating_cont"));
         this.var_1267 = IWindowContainer(this.find("room_buttons"));
         this.var_945 = ITextWindow(this.find("room_name"));
         this.var_1025 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_817 = ITextWindow(this.find("room_desc"));
         this.var_1264 = ITextWindow(this.find("public_space_desc"));
         this.var_1023 = ITextWindow(this.find("owner_caption"));
         this.var_819 = ITextWindow(this.find("rating_caption"));
         this.var_1529 = ITextWindow(this.find("rating_txt"));
         this.var_280 = IWindowContainer(this.find("event_info"));
         this.var_818 = IWindowContainer(this.find("event_details"));
         this.var_1528 = IWindowContainer(this.find("event_buttons"));
         this.var_1936 = ITextWindow(this.find("event_name"));
         this.var_648 = ITextWindow(this.find("event_desc"));
         this.var_1270 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1268 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1935 = this.find("staff_pick_button");
         this.var_1265 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1269 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1532 = IButtonWindow(this.find("room_settings_button"));
         this.var_1533 = IButtonWindow(this.find("create_event_button"));
         this.var_1530 = IButtonWindow(this.find("edit_event_button"));
         this.var_821 = IWindowContainer(this.find("embed_info"));
         this.var_1266 = ITextWindow(this.find("embed_info_txt"));
         this.var_1024 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_820 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1265,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1532,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1269,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1533,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1530,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1024,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1268,this.onThumbUp);
         this.addMouseClickListener(this.var_1935,this.onStaffPick);
         this.addMouseClickListener(this.var_1270,this.onFacebookLike);
         this.addMouseClickListener(this.var_820,this.onZoomClick);
         this._navigator.refreshButton(this.var_1265,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1269,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_394,this.onHover);
         this.addMouseOverListener(this.var_280,this.onHover);
         this.var_1023.width = this.var_1023.textWidth;
         Util.moveChildrenToRow(this.var_1934,["owner_caption","owner_name"],this.var_1023.x,this.var_1023.y,3);
         this.var_819.width = this.var_819.textWidth;
         Util.moveChildrenToRow(this.var_1933,["rating_caption","rating_txt"],this.var_819.x,this.var_819.y,3);
         this.var_1266.height = this.var_1266.textHeight + 5;
         Util.moveChildrenToColumn(this.var_821,["embed_info_txt","embed_src_txt"],this.var_1266.y,2);
         this.var_821.height = Util.getLowestPoint(this.var_821) + 5;
         this.var_3063 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1024.setSelection(0,this.var_1024.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_362));
         this.var_1531 = !this.var_1531;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_393.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_150 != null)
         {
            this.var_150.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
