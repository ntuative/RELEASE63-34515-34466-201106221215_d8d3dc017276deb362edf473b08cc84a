package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2078:int;
      
      private var var_2530:String;
      
      private var var_1093:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2078 = param1.readInteger();
         this.var_2530 = param1.readString();
         this.var_1093 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2078;
      }
      
      public function get figureString() : String
      {
         return this.var_2530;
      }
      
      public function get gender() : String
      {
         return this.var_1093;
      }
   }
}
