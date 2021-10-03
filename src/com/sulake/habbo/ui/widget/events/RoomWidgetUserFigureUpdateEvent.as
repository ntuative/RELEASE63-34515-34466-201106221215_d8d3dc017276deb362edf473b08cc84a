package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserFigureUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_186:String = "RWUTUE_USER_FIGURE";
       
      
      private var _userId:int;
      
      private var var_48:BitmapData;
      
      private var var_2294:Boolean;
      
      private var var_1883:String = "";
      
      private var var_2267:int;
      
      public function RoomWidgetUserFigureUpdateEvent(param1:int, param2:BitmapData, param3:Boolean, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_186,param6,param7);
         this._userId = param1;
         this.var_48 = param2;
         this.var_2294 = param3;
         this.var_1883 = param4;
         this.var_2267 = param5;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_2294;
      }
      
      public function get customInfo() : String
      {
         return this.var_1883;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2267;
      }
   }
}
