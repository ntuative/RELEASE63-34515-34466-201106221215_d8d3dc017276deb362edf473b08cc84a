package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1972:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1588:String;
      
      private var var_2064:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1588 = param2;
         this.var_2064 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1588;
      }
      
      public function get classId() : int
      {
         return this.var_2064;
      }
   }
}
