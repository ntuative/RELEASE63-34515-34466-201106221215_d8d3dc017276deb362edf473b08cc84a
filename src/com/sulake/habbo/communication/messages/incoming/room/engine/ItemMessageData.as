package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2575:Boolean = false;
      
      private var var_2576:int = 0;
      
      private var var_2579:int = 0;
      
      private var var_2577:int = 0;
      
      private var var_2578:int = 0;
      
      private var var_177:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_434:String = "";
      
      private var _type:int = 0;
      
      private var var_3086:String = "";
      
      private var var_1552:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_190:Boolean = false;
      
      private var var_2418:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2575 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_190 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2575;
      }
      
      public function get wallX() : Number
      {
         return this.var_2576;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2576 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2579;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2579 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2577;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2577 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2578;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2578 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_177;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_177 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_176 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_434;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_434 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_190)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_190)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_190)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2418;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_190)
         {
            this.var_2418 = param1;
         }
      }
   }
}
