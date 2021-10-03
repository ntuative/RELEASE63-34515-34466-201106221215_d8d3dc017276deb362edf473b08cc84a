package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_177:Number;
      
      private var var_176:Number;
      
      private var var_2012:Number;
      
      private var var_2011:Number;
      
      private var var_2010:Number;
      
      private var var_1311:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_571:int = 0;
      
      private var var_1064:int;
      
      private var var_2746:Boolean = false;
      
      private var var_2009:Boolean = false;
      
      private var var_1706:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_2009;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_571;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_177 = param2;
         this.var_176 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_2012 = this._x - this._direction.x * param6;
         this.var_2011 = this.var_177 - this._direction.y * param6;
         this.var_2010 = this.var_176 - this._direction.z * param6;
         this.var_571 = 0;
         this.var_1311 = false;
         this.var_1064 = param7;
         this.var_2746 = param8;
         this._frames = param9;
         this.var_2009 = param10;
         this._alphaMultiplier = 1;
         this.var_1706 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_571;
         if(this.var_571 == this.var_1064)
         {
            this.ignite();
         }
         if(this.var_2009)
         {
            if(this.var_571 / this.var_1064 > this.var_1706)
            {
               this._alphaMultiplier = (this.var_1064 - this.var_571) / (this.var_1064 * (1 - this.var_1706));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_571 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2746;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_571 <= this.var_1064;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_177;
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_177 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_176 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_2012;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1311 = true;
         this.var_2012 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_2011;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1311 = true;
         this.var_2011 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_2010;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1311 = true;
         this.var_2010 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1311;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_177,this.var_176].toString();
      }
   }
}
