package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_521:String = "RWTDUE_TEASER_DATA";
      
      public static const const_997:String = "RWTDUE_GIFT_DATA";
      
      public static const const_969:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_235:int;
      
      private var _data:String;
      
      private var var_427:int;
      
      private var var_192:String;
      
      private var var_2377:String;
      
      private var var_2378:Boolean;
      
      private var var_1450:int = 0;
      
      private var var_2456:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_235;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_427;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2377;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2378;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2456;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1450;
      }
      
      public function set status(param1:int) : void
      {
         this.var_427 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2377 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2456 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_235 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_192;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_192 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1450 = param1;
      }
   }
}
