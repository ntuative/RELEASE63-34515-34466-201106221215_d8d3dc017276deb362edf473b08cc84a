package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1188:String;
      
      private var var_1505:Array;
      
      private var var_1201:Array;
      
      private var var_2181:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1188;
      }
      
      public function get choices() : Array
      {
         return this.var_1505.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1201.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2181;
      }
      
      public function flush() : Boolean
      {
         this.var_1188 = "";
         this.var_1505 = [];
         this.var_1201 = [];
         this.var_2181 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1188 = param1.readString();
         this.var_1505 = [];
         this.var_1201 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1505.push(param1.readString());
            this.var_1201.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2181 = param1.readInteger();
         return true;
      }
   }
}
