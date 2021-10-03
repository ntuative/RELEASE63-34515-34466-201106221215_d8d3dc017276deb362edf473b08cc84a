package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_173:String = "ROE_MOUSE_CLICK";
      
      public static const const_188:String = "ROE_MOUSE_ENTER";
      
      public static const const_605:String = "ROE_MOUSE_MOVE";
      
      public static const const_182:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2283:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_493:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2074:String = "";
      
      private var var_2300:Boolean;
      
      private var var_2297:Boolean;
      
      private var var_2299:Boolean;
      
      private var var_2298:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2074 = param2;
         this.var_2300 = param5;
         this.var_2297 = param6;
         this.var_2299 = param7;
         this.var_2298 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2074;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2300;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2297;
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
