package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_868:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_187:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_235:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_235;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_235 = param1;
      }
   }
}
