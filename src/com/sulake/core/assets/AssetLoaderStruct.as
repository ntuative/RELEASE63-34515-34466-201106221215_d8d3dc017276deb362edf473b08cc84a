package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_1083:IAssetLoader;
      
      private var var_2416:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2416 = param1;
         this.var_1083 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2416;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_1083;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_1083 != null)
            {
               if(!this.var_1083.disposed)
               {
                  this.var_1083.dispose();
                  this.var_1083 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
