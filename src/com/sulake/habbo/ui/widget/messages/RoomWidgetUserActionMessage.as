package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_554:String = "RWUAM_WHISPER_USER";
      
      public static const const_674:String = "RWUAM_IGNORE_USER";
      
      public static const const_664:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_453:String = "RWUAM_KICK_USER";
      
      public static const const_609:String = "RWUAM_BAN_USER";
      
      public static const const_495:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_527:String = "RWUAM_RESPECT_USER";
      
      public static const const_620:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_655:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_528:String = "RWUAM_START_TRADING";
      
      public static const const_923:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_643:String = "RWUAM_KICK_BOT";
      
      public static const const_516:String = "RWUAM_REPORT";
      
      public static const const_658:String = "RWUAM_PICKUP_PET";
      
      public static const const_1977:String = "RWUAM_TRAIN_PET";
      
      public static const const_637:String = " RWUAM_RESPECT_PET";
      
      public static const const_285:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_559:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
