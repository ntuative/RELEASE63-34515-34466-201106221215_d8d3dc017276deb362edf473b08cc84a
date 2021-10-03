package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2033:int = 0;
      
      private var var_2034:int = 0;
      
      private var var_1893:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2033;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2034;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1893;
      }
      
      public function flush() : Boolean
      {
         this.var_2033 = 0;
         this.var_2034 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2033 = param1.readInteger();
         this.var_2034 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         return true;
      }
   }
}
