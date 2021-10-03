package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2416:String;
      
      private var var_2415:String;
      
      private var var_500:BitmapDataAsset;
      
      private var var_1487:Boolean;
      
      private var var_1486:Boolean;
      
      private var var_2417:Boolean;
      
      private var _offsetX:int;
      
      private var var_1198:int;
      
      private var var_210:int;
      
      private var _height:int;
      
      private var var_842:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2416 = param1;
         this.var_2415 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_500 = _loc9_;
            this.var_842 = false;
         }
         else
         {
            this.var_500 = null;
            this.var_842 = true;
         }
         this.var_1487 = param4;
         this.var_1486 = param5;
         this._offsetX = param6;
         this.var_1198 = param7;
         this.var_2417 = param8;
      }
      
      public function dispose() : void
      {
         this.var_500 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_842 && this.var_500 != null)
         {
            _loc1_ = this.var_500.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_210 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_842 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1486;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1487;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_210;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2416;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2415;
      }
      
      public function get asset() : IAsset
      {
         return this.var_500;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2417;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1487)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1486)
         {
            return this.var_1198;
         }
         return -(this.height + this.var_1198);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1198;
      }
   }
}
