package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_934:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2635:String;
      
      private var var_2634:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_934,param3,param4);
         this.var_2635 = param1;
         this.var_2634 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2635;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2634;
      }
   }
}
