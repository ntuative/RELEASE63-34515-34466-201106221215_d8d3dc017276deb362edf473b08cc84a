package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomThumbnailUpdateResultMessageParser implements IMessageParser
   {
       
      
      private var var_375:int;
      
      private var var_1945:int;
      
      public function RoomThumbnailUpdateResultMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_375 = param1.readInteger();
         this.var_1945 = param1.readInteger();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_375;
      }
      
      public function get resultCode() : int
      {
         return this.var_1945;
      }
   }
}
