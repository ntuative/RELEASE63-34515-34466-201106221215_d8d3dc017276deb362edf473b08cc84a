package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2283:int = 0;
      
      private var var_1521:String = "";
      
      private var var_1921:String = "";
      
      private var var_2565:String = "";
      
      private var var_2966:String = "";
      
      private var var_2155:int = 0;
      
      private var var_2968:int = 0;
      
      private var var_2967:int = 0;
      
      private var var_1522:int = 0;
      
      private var var_2969:int = 0;
      
      private var var_1519:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2283 = param1;
         this.var_1521 = param2;
         this.var_1921 = param3;
         this.var_2565 = param4;
         this.var_2966 = param5;
         if(param6)
         {
            this.var_2155 = 1;
         }
         else
         {
            this.var_2155 = 0;
         }
         this.var_2968 = param7;
         this.var_2967 = param8;
         this.var_1522 = param9;
         this.var_2969 = param10;
         this.var_1519 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2283,this.var_1521,this.var_1921,this.var_2565,this.var_2966,this.var_2155,this.var_2968,this.var_2967,this.var_1522,this.var_2969,this.var_1519];
      }
   }
}
