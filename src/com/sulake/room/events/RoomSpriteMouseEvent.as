package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2074:String = "";
      
      private var var_2023:String = "";
      
      private var var_2497:String = "";
      
      private var var_2699:Number = 0;
      
      private var var_2700:Number = 0;
      
      private var var_2577:Number = 0;
      
      private var var_2578:Number = 0;
      
      private var var_2297:Boolean = false;
      
      private var var_2300:Boolean = false;
      
      private var var_2299:Boolean = false;
      
      private var var_2298:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2074 = param2;
         this.var_2023 = param3;
         this.var_2497 = param4;
         this.var_2699 = param5;
         this.var_2700 = param6;
         this.var_2577 = param7;
         this.var_2578 = param8;
         this.var_2297 = param9;
         this.var_2300 = param10;
         this.var_2299 = param11;
         this.var_2298 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2074;
      }
      
      public function get canvasId() : String
      {
         return this.var_2023;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2497;
      }
      
      public function get screenX() : Number
      {
         return this.var_2699;
      }
      
      public function get screenY() : Number
      {
         return this.var_2700;
      }
      
      public function get localX() : Number
      {
         return this.var_2577;
      }
      
      public function get localY() : Number
      {
         return this.var_2578;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2297;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2300;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2299;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2298;
      }
   }
}
