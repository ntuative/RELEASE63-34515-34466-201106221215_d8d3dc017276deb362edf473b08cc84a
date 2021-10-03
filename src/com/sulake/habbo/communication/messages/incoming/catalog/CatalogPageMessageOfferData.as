package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1203:int;
      
      private var var_1894:String;
      
      private var var_1245:int;
      
      private var var_1244:int;
      
      private var var_1893:int;
      
      private var var_1748:int;
      
      private var var_1301:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1203 = param1.readInteger();
         this.var_1894 = param1.readString();
         this.var_1245 = param1.readInteger();
         this.var_1244 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1301 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1301.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1748 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1203;
      }
      
      public function get localizationId() : String
      {
         return this.var_1894;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1245;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1244;
      }
      
      public function get products() : Array
      {
         return this.var_1301;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1893;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1748;
      }
   }
}
