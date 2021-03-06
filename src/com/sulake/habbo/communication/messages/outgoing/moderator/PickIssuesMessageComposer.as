package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class PickIssuesMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_35:Array;
      
      public function PickIssuesMessageComposer(param1:Array, param2:Boolean = false, param3:int = 0)
      {
         this.var_35 = new Array();
         super();
         this.var_35.push(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            this.var_35.push(param1[_loc4_]);
            _loc4_++;
         }
         this.var_35.push(param2);
         this.var_35.push(param3);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_35;
      }
      
      public function dispose() : void
      {
         this.var_35 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
