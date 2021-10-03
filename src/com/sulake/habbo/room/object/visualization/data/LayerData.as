package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_994:String = "";
      
      public static const const_420:int = 0;
      
      public static const const_531:int = 255;
      
      public static const const_828:Boolean = false;
      
      public static const const_492:int = 0;
      
      public static const const_589:int = 0;
      
      public static const const_416:int = 0;
      
      public static const const_1403:int = 1;
      
      public static const const_1196:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2401:String = "";
      
      private var var_1820:int = 0;
      
      private var var_2510:int = 255;
      
      private var var_2560:Boolean = false;
      
      private var var_2561:int = 0;
      
      private var var_2563:int = 0;
      
      private var var_2562:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2401 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2401;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1820 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1820;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2510 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2510;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2560 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2560;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2561 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2561;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2563 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2563;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2562 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2562;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
