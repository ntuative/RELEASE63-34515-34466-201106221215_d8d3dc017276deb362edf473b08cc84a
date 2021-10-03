package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2288:int;
      
      private var var_2286:int;
      
      private var var_1245:int;
      
      private var var_1244:int;
      
      private var var_1893:int;
      
      private var var_2287:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2288 = param1.readInteger();
         this.var_2286 = param1.readInteger();
         this.var_1245 = param1.readInteger();
         this.var_1244 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this.var_2287 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2288;
      }
      
      public function get charges() : int
      {
         return this.var_2286;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1245;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1244;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2287;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1893;
      }
   }
}
