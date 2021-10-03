package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_520:int = -1;
      
      public static const const_1242:int = -1;
      
      private static const const_1497:int = 3000;
      
      private static const POOL:Array = [];
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_177:int = 0;
      
      private var var_2433:int = 1;
      
      private var var_969:int = 1;
      
      private var var_1806:int = 1;
      
      private var var_2430:int = -1;
      
      private var var_2431:int = 0;
      
      private var var_2432:Boolean = false;
      
      private var _isRecycled:Boolean = false;
      
      public function AnimationFrame()
      {
         super();
      }
      
      public static function allocate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0) : AnimationFrame
      {
         var _loc9_:AnimationFrame = false ? POOL.pop() : new AnimationFrame();
         _loc9_._isRecycled = false;
         _loc9_._id = param1;
         _loc9_._x = param2;
         _loc9_.var_177 = param3;
         _loc9_.var_2432 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         _loc9_.var_2433 = param4;
         if(param5 < 0)
         {
            param5 = const_520;
         }
         _loc9_.var_969 = param5;
         _loc9_.var_1806 = param5;
         if(param7 >= 0)
         {
            _loc9_.var_2430 = param7;
            _loc9_.var_2431 = param8;
         }
         return _loc9_;
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_177;
      }
      
      public function get repeats() : int
      {
         return this.var_2433;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_969;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2432;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_969 < 0)
         {
            return const_520;
         }
         return this.var_1806;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_969 > 0 && param1 > this.var_969)
         {
            param1 = this.var_969;
         }
         this.var_1806 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2430;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2431;
      }
      
      public function recycle() : void
      {
         if(!this._isRecycled)
         {
            this._isRecycled = true;
            if(POOL.length < const_1497)
            {
               POOL.push(this);
            }
         }
      }
   }
}
