package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_345:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1730:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_2406:Boolean = false;
      
      private var var_2405:Boolean = false;
      
      private var var_1845:Boolean = false;
      
      private var var_1843:Boolean = false;
      
      private var var_2404:Boolean = false;
      
      private var var_2006:int = -1;
      
      private var var_2407:int = -1;
      
      private var var_1203:int = -1;
      
      private var var_1063:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1730 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1730;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2406 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2406;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2405 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2405;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1845 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1845;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1843 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1843;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2404 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2404;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_2006 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_2006;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2407;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1203 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1203;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1063 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1063;
      }
   }
}
