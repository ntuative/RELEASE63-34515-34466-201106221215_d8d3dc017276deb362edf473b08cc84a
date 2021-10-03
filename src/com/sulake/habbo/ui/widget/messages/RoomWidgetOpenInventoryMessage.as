package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_976:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1866:String = "inventory_effects";
      
      public static const const_1348:String = "inventory_badges";
      
      public static const const_1856:String = "inventory_clothes";
      
      public static const const_1956:String = "inventory_furniture";
       
      
      private var var_2728:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_976);
         this.var_2728 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2728;
      }
   }
}
