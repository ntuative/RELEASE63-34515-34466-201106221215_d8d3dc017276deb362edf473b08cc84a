package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetLetUserInMessage extends RoomWidgetMessage
   {
      
      public static const const_742:String = "RWLUIM_LET_USER_IN";
       
      
      private var _userName:String;
      
      private var var_2722:Boolean;
      
      public function RoomWidgetLetUserInMessage(param1:String, param2:Boolean)
      {
         super(const_742);
         this._userName = param1;
         this.var_2722 = param2;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get canEnter() : Boolean
      {
         return this.var_2722;
      }
   }
}
