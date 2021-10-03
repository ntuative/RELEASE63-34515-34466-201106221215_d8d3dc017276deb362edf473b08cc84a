package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2823:int;
      
      private var var_2824:int;
      
      private var var_2822:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2823 = param1;
         this.var_2824 = param2;
         this.var_2822 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2823,this.var_2824,this.var_2822];
      }
      
      public function dispose() : void
      {
      }
   }
}
