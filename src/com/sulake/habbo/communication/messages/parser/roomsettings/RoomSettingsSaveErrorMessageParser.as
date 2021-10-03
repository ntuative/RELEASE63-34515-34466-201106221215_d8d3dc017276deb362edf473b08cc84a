package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2207:int = 1;
      
      public static const const_2241:int = 2;
      
      public static const const_2112:int = 3;
      
      public static const const_2108:int = 4;
      
      public static const const_1924:int = 5;
      
      public static const const_2174:int = 6;
      
      public static const const_1960:int = 7;
      
      public static const const_1990:int = 8;
      
      public static const const_2166:int = 9;
      
      public static const const_1744:int = 10;
      
      public static const const_1760:int = 11;
      
      public static const const_2002:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1821:int;
      
      private var var_700:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1821 = param1.readInteger();
         this.var_700 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1821;
      }
      
      public function get info() : String
      {
         return this.var_700;
      }
   }
}
