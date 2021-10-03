package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ModeratorActionMessageComposer implements IMessageComposer, IDisposable
   {
      
      public static const const_2160:int = 0;
      
      public static const const_1967:int = 1;
      
      public static const const_1998:int = 0;
      
      public static const const_1786:int = 1;
      
      public static const const_2225:int = 2;
      
      public static const const_1824:int = 3;
      
      public static const const_1815:int = 4;
       
      
      private var var_35:Array;
      
      public function ModeratorActionMessageComposer(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int = 0)
      {
         this.var_35 = new Array();
         super();
         this.var_35.push(param1);
         this.var_35.push(param2);
         this.var_35.push(param3);
         this.var_35.push(param4);
         this.var_35.push(param5);
         this.var_35.push(param6);
         this.var_35.push(false);
         this.var_35.push(false);
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
