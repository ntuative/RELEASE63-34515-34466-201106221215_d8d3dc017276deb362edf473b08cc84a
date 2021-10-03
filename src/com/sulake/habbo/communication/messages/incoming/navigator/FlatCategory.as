package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1906:int;
      
      private var var_2263:String;
      
      private var var_324:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1906 = param1.readInteger();
         this.var_2263 = param1.readString();
         this.var_324 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1906;
      }
      
      public function get nodeName() : String
      {
         return this.var_2263;
      }
      
      public function get visible() : Boolean
      {
         return this.var_324;
      }
   }
}
