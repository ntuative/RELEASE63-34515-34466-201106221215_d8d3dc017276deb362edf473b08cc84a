package com.sulake.habbo.friendbar.events
{
   import com.sulake.habbo.friendbar.data.FriendNotification;
   import flash.events.Event;
   
   public class NotificationEvent extends Event
   {
      
      public static const const_827:String = "FBE_NOTIFICATION_EVENT";
       
      
      public var var_3018:int;
      
      public var notification:FriendNotification;
      
      public function NotificationEvent(param1:int, param2:FriendNotification)
      {
         super(const_827);
         this.var_3018 = param1;
         this.notification = param2;
      }
   }
}
