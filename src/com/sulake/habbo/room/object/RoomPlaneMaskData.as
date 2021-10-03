package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2386:Number = 0.0;
      
      private var var_2389:Number = 0.0;
      
      private var var_2387:Number = 0.0;
      
      private var var_2388:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2386 = param1;
         this.var_2389 = param2;
         this.var_2387 = param3;
         this.var_2388 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2386;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2389;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2387;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2388;
      }
   }
}
