package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1178:String = "M";
      
      public static const const_1729:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_434:int = 0;
      
      private var _name:String = "";
      
      private var var_1705:int = 0;
      
      private var var_999:String = "";
      
      private var _figure:String = "";
      
      private var var_2269:String = "";
      
      private var var_2267:int;
      
      private var var_2270:int = 0;
      
      private var var_2271:String = "";
      
      private var var_2273:int = 0;
      
      private var var_2272:int = 0;
      
      private var var_2268:String = "";
      
      private var var_190:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_190 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_190)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_434;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_434 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_190)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1705;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_1705 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_999;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_999 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_190)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2269;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2269 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2267;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2267 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2270;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2270 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2271;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2271 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2273;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2273 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2272;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2272 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2268;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2268 = param1;
         }
      }
   }
}
