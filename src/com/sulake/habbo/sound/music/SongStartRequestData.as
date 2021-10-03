package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2025:int;
      
      private var var_2180:Number;
      
      private var var_2990:Number;
      
      private var var_2993:int;
      
      private var var_2992:Number;
      
      private var var_2991:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_2025 = param1;
         this.var_2180 = param2;
         this.var_2990 = param3;
         this.var_2992 = param4;
         this.var_2991 = param5;
         this.var_2993 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2025;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2180 < 0)
         {
            return 0;
         }
         return this.var_2180 + (getTimer() - this.var_2993) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2990;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2992;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2991;
      }
   }
}
