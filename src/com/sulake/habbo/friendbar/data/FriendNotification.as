package com.sulake.habbo.friendbar.data
{
   public class FriendNotification
   {
      
      public static const const_411:int = -1;
      
      public static const const_1322:int = 0;
      
      public static const TYPE_ACHIEVEMENT:int = 1;
      
      public static const const_1325:int = 2;
       
      
      public var typeCode:int = -1;
      
      public var message:String;
      
      public var viewOnce:Boolean;
      
      public function FriendNotification(param1:int, param2:String, param3:Boolean)
      {
         super();
         this.typeCode = param1;
         this.message = param2;
         this.viewOnce = param3;
      }
      
      public static function typeCodeToString(param1:int) : String
      {
         switch(param1)
         {
            case const_411:
               return "instant_message";
            case const_1322:
               return "room_event";
            case TYPE_ACHIEVEMENT:
               return "achievement";
            case const_1325:
               return "quest";
            default:
               return "unknown";
         }
      }
   }
}
