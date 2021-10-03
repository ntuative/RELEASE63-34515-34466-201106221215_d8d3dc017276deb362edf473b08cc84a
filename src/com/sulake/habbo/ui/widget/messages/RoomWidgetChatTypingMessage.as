package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_910:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_630:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_910);
         this.var_630 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_630;
      }
   }
}
