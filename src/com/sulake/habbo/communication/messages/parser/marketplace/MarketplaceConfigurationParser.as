package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1633:Boolean;
      
      private var var_2323:int;
      
      private var var_2048:int;
      
      private var var_2047:int;
      
      private var var_2324:int;
      
      private var var_2320:int;
      
      private var var_2321:int;
      
      private var var_2322:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1633;
      }
      
      public function get commission() : int
      {
         return this.var_2323;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2048;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2047;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2320;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2324;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2321;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2322;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1633 = param1.readBoolean();
         this.var_2323 = param1.readInteger();
         this.var_2048 = param1.readInteger();
         this.var_2047 = param1.readInteger();
         this.var_2320 = param1.readInteger();
         this.var_2324 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         this.var_2322 = param1.readInteger();
         return true;
      }
   }
}
