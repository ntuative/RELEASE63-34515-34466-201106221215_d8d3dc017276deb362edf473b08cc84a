package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_772:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1494:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_772);
         this.var_1494 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1494;
      }
   }
}
