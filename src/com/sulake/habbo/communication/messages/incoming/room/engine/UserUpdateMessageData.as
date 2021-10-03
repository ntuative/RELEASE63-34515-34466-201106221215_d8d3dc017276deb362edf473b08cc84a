package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_2362:Number = 0;
      
      private var var_2360:Number = 0;
      
      private var var_2361:Number = 0;
      
      private var var_2364:Number = 0;
      
      private var var_434:int = 0;
      
      private var var_2363:int = 0;
      
      private var var_358:Array;
      
      private var var_2365:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_358 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_177 = param3;
         this.var_176 = param4;
         this.var_2362 = param5;
         this.var_434 = param6;
         this.var_2363 = param7;
         this.var_2360 = param8;
         this.var_2361 = param9;
         this.var_2364 = param10;
         this.var_2365 = param11;
         this.var_358 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get localZ() : Number
      {
         return this.var_2362;
      }
      
      public function get targetX() : Number
      {
         return this.var_2360;
      }
      
      public function get targetY() : Number
      {
         return this.var_2361;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2364;
      }
      
      public function get dir() : int
      {
         return this.var_434;
      }
      
      public function get dirHead() : int
      {
         return this.var_2363;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2365;
      }
      
      public function get actions() : Array
      {
         return this.var_358.slice();
      }
   }
}
