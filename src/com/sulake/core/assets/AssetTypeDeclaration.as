package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2702:String;
      
      private var var_2703:Class;
      
      private var var_2704:Class;
      
      private var var_1984:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2702 = param1;
         this.var_2703 = param2;
         this.var_2704 = param3;
         if(rest == null)
         {
            this.var_1984 = new Array();
         }
         else
         {
            this.var_1984 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2702;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2703;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2704;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1984;
      }
   }
}
