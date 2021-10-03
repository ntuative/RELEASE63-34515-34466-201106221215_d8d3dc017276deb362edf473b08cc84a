package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2086:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_229:MsgWithRequestId;
      
      private var var_711:RoomEventData;
      
      private var var_2908:Boolean;
      
      private var var_2910:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2317:int;
      
      private var var_300:GuestRoomData;
      
      private var var_1106:PublicRoomShortData;
      
      private var var_2907:int;
      
      private var var_2912:Boolean;
      
      private var var_2906:int;
      
      private var var_2909:Boolean;
      
      private var var_2109:int;
      
      private var var_2905:Boolean;
      
      private var var_1653:Array;
      
      private var var_1654:Array;
      
      private var var_2915:int;
      
      private var var_1655:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1366:Boolean;
      
      private var var_2914:int;
      
      private var var_2911:Boolean;
      
      private var var_2913:int = 0;
      
      private var var_2110:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1653 = new Array();
         this.var_1654 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_300 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_300 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1106 = null;
         this.var_300 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1106 = param1.publicSpace;
            this.var_711 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_711 != null)
         {
            this.var_711.dispose();
            this.var_711 = null;
         }
         if(this.var_1106 != null)
         {
            this.var_1106.dispose();
            this.var_1106 = null;
         }
         if(this.var_300 != null)
         {
            this.var_300.dispose();
            this.var_300 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_300 != null)
         {
            this.var_300.dispose();
         }
         this.var_300 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_711 != null)
         {
            this.var_711.dispose();
         }
         this.var_711 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_229 != null && this.var_229 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_229 != null && this.var_229 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_229 != null && this.var_229 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_229 = param1;
         this.var_2110 = param1.ad;
         this.var_1366 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_229 = param1;
         this.var_1366 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_229 = param1;
         this.var_1366 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_229 == null)
         {
            return;
         }
         this.var_229.dispose();
         this.var_229 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2110 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2110;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_229 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_229 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_229 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_711;
      }
      
      public function get avatarId() : int
      {
         return this.var_2317;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2908;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2910;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_300;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1106;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2912;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2906;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2109;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2909;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2914;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2907;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2905;
      }
      
      public function get adIndex() : int
      {
         return this.var_2913;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2911;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2906 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2912 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2908 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2910 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2909 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2109 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2914 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2907 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2905 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2913 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2911 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1653 = param1;
         this.var_1654 = new Array();
         for each(_loc2_ in this.var_1653)
         {
            if(_loc2_.visible)
            {
               this.var_1654.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1653;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1654;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2915 = param1.limit;
         this.var_1655 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1655 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_300.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_300 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_300.flatId;
         return this.var_2109 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1655 >= this.var_2915;
      }
      
      public function startLoading() : void
      {
         this.var_1366 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1366;
      }
   }
}
