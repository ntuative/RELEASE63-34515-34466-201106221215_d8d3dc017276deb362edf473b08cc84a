package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_931:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1262:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2229:String = "RWOCM_PIXELS";
      
      public static const const_2167:String = "RWOCM_CREDITS";
      
      public static const const_2200:String = "RWOCM_SHELLS";
       
      
      private var var_2685:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_931);
         this.var_2685 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2685;
      }
   }
}
