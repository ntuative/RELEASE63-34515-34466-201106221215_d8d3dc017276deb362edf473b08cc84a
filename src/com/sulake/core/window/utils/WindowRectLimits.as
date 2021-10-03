package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_341:int = -2.147483648E9;
      
      private var var_342:int = 2.147483647E9;
      
      private var var_340:int = -2.147483648E9;
      
      private var var_343:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_341;
      }
      
      public function get maxWidth() : int
      {
         return this.var_342;
      }
      
      public function get minHeight() : int
      {
         return this.var_340;
      }
      
      public function get maxHeight() : int
      {
         return this.var_343;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_341 = param1;
         if(this.var_341 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_341)
         {
            this._target.width = this.var_341;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_342 = param1;
         if(this.var_342 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_342)
         {
            this._target.width = this.var_342;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_340 = param1;
         if(this.var_340 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_340)
         {
            this._target.height = this.var_340;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_343 = param1;
         if(this.var_343 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_343)
         {
            this._target.height = this.var_343;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_341 == int.MIN_VALUE && this.var_342 == int.MAX_VALUE && this.var_340 == int.MIN_VALUE && this.var_343 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_341 = int.MIN_VALUE;
         this.var_342 = int.MAX_VALUE;
         this.var_340 = int.MIN_VALUE;
         this.var_343 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_341)
            {
               this._target.width = this.var_341;
            }
            else if(this._target.width > this.var_342)
            {
               this._target.width = this.var_342;
            }
            if(this._target.height < this.var_340)
            {
               this._target.height = this.var_340;
            }
            else if(this._target.height > this.var_343)
            {
               this._target.height = this.var_343;
            }
         }
      }
      
      public function assign(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.var_341 = param1;
         this.var_342 = param2;
         this.var_340 = param3;
         this.var_343 = param4;
         this.limit();
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_341 = this.var_341;
         _loc2_.var_342 = this.var_342;
         _loc2_.var_340 = this.var_340;
         _loc2_.var_343 = this.var_343;
         return _loc2_;
      }
   }
}
