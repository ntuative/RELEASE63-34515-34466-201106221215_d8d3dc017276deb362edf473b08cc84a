package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2412:int;
      
      private var var_2409:int;
      
      private var var_2410:String;
      
      private var var_2408:int;
      
      private var var_2411:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2412 = param1;
         this.var_2409 = param2;
         this.var_2410 = param3;
         this.var_2408 = param4;
         this.var_2411 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2412,this.var_2409,this.var_2410,this.var_2408,int(this.var_2411)];
      }
      
      public function dispose() : void
      {
      }
   }
}
