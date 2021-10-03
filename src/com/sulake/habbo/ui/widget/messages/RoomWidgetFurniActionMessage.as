package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_854:String = "RWFUAM_ROTATE";
      
      public static const const_312:String = "RWFAM_MOVE";
      
      public static const const_736:String = "RWFAM_PICKUP";
      
      public static const const_769:String = "RWFAM_USE";
      
      public static const const_941:String = "RWFAM_OPEN_WELCOME_GIFT";
      
      public static const const_1354:String = "RWFAM_SAVE_STUFF_DATA";
       
      
      private var _furniId:int = 0;
      
      private var var_2487:int = 0;
      
      private var var_2488:String;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int, param4:String = null)
      {
         super(param1);
         this._furniId = param2;
         this.var_2487 = param3;
         this.var_2488 = param4;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniCategory() : int
      {
         return this.var_2487;
      }
      
      public function get objectData() : String
      {
         return this.var_2488;
      }
   }
}
