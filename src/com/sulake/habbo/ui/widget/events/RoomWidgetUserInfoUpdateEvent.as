package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_113:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_147:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_756:int = 2;
      
      public static const const_989:int = 3;
      
      public static const const_1916:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1742:String = "";
      
      private var var_2267:int;
      
      private var var_2270:int = 0;
      
      private var var_2272:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_239:Array;
      
      private var var_1494:int = 0;
      
      private var var_2801:String = "";
      
      private var var_2800:int = 0;
      
      private var var_2794:int = 0;
      
      private var var_1846:Boolean = false;
      
      private var var_1741:String = "";
      
      private var var_2255:Boolean = false;
      
      private var var_2798:Boolean = false;
      
      private var var_2795:Boolean = true;
      
      private var var_1173:int = 0;
      
      private var var_2802:Boolean = false;
      
      private var var_2796:Boolean = false;
      
      private var var_2793:Boolean = false;
      
      private var var_2792:Boolean = false;
      
      private var var_2797:Boolean = false;
      
      private var var_2803:Boolean = false;
      
      private var var_2799:int = 0;
      
      private var var_1845:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_239 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1742 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1742;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2267 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2267;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2270 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2270;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2272 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2272;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_239 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_239;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1494 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1494;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2801 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2801;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2798 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2798;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1173 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1173;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2802 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2802;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2796 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2796;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2793 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2793;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2792 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2792;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2797 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2797;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2803 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2803;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2799 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2799;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2795 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2795;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1845 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1845;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2800 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2800;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2794;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1846 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1846;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1741 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1741;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2255 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2255;
      }
   }
}
