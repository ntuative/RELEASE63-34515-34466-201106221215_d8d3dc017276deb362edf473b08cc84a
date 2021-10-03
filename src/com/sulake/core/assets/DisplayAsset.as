package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1141:String;
      
      protected var var_193:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_931:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_931 = param1;
         this.var_1141 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1141;
      }
      
      public function get content() : Object
      {
         return this.var_193;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_931;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_193.loaderInfo != null)
            {
               if(this.var_193.loaderInfo.loader != null)
               {
                  this.var_193.loaderInfo.loader.unload();
               }
            }
            this.var_193 = null;
            this.var_931 = null;
            this._disposed = true;
            this.var_1141 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_193 = param1 as DisplayObject;
            if(this.var_193 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_193 = DisplayAsset(param1).var_193;
            this.var_931 = DisplayAsset(param1).var_931;
            if(this.var_193 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_193 = DisplayAsset(param1).var_193;
            this.var_931 = DisplayAsset(param1).var_931;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
