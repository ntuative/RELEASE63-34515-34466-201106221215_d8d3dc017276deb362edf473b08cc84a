package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1825:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_964:String = "RWSSM_STORE_SOUND";
      
      public static const const_883:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_990:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_990;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_990 = param1;
      }
   }
}
