package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_786:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2412:int;
      
      private var var_2409:int;
      
      private var _color:uint;
      
      private var var_1228:int;
      
      private var var_2920:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_786);
         this.var_2412 = param1;
         this.var_2409 = param2;
         this._color = param3;
         this.var_1228 = param4;
         this.var_2920 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2412;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2409;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1228;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2920;
      }
   }
}
