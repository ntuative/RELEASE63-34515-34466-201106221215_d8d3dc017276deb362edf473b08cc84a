package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_189:String = "e";
       
      
      private var var_1587:String;
      
      private var var_2923:int;
      
      private var var_1063:String;
      
      private var var_1586:int;
      
      private var var_2006:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1587 = param1.readString();
         this.var_2923 = param1.readInteger();
         this.var_1063 = param1.readString();
         this.var_1586 = param1.readInteger();
         this.var_2006 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1587;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2923;
      }
      
      public function get extraParam() : String
      {
         return this.var_1063;
      }
      
      public function get productCount() : int
      {
         return this.var_1586;
      }
      
      public function get expiration() : int
      {
         return this.var_2006;
      }
   }
}
