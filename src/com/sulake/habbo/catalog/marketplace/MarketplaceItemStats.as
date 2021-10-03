package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2754:int;
      
      private var var_2946:int;
      
      private var var_2943:int;
      
      private var _dayOffsets:Array;
      
      private var var_2189:Array;
      
      private var var_2188:Array;
      
      private var var_2945:int;
      
      private var var_2944:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2754;
      }
      
      public function get offerCount() : int
      {
         return this.var_2946;
      }
      
      public function get historyLength() : int
      {
         return this.var_2943;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2189;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2188;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2945;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2944;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2754 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2946 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2943 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2189 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2188 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2945 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2944 = param1;
      }
   }
}
