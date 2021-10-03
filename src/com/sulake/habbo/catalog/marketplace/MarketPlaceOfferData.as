package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_116:int = 1;
      
      public static const const_76:int = 2;
       
      
      private var var_1203:int;
      
      private var _furniId:int;
      
      private var var_2755:int;
      
      private var var_2237:String;
      
      private var var_2162:int;
      
      private var var_2754:int;
      
      private var var_2976:int;
      
      private var var_427:int;
      
      private var var_2753:int = -1;
      
      private var var_2163:int;
      
      private var var_48:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1203 = param1;
         this._furniId = param2;
         this.var_2755 = param3;
         this.var_2237 = param4;
         this.var_2162 = param5;
         this.var_427 = param6;
         this.var_2754 = param7;
         this.var_2163 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.dispose();
            this.var_48 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1203;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2755;
      }
      
      public function get stuffData() : String
      {
         return this.var_2237;
      }
      
      public function get price() : int
      {
         return this.var_2162;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2754;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_48 != null)
         {
            this.var_48.dispose();
         }
         this.var_48 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2976 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2976;
      }
      
      public function get status() : int
      {
         return this.var_427;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2753;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2753 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_2162 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1203 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2163;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2163 = param1;
      }
   }
}
