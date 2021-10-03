package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FriendNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_2842:int = -1;
      
      private var var_2317:String;
      
      private var _message:String;
      
      public function FriendNotificationMessageParser()
      {
         super();
      }
      
      public function get typeCode() : int
      {
         return this.var_2842;
      }
      
      public function get avatarId() : String
      {
         return this.var_2317;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2317 = param1.readString();
         this.var_2842 = param1.readInteger();
         this._message = param1.readString();
         return true;
      }
   }
}
