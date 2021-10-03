package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_235:int;
      
      private var var_2869:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_235 = param1;
         this.var_2869 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_235,this.var_2869];
      }
      
      public function dispose() : void
      {
      }
   }
}
