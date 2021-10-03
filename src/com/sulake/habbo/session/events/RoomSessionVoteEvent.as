package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_158:String = "RSPE_VOTE_QUESTION";
      
      public static const const_164:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1188:String = "";
      
      private var var_1505:Array;
      
      private var var_1201:Array;
      
      private var var_2181:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1505 = [];
         this.var_1201 = [];
         super(param1,param2,param7,param8);
         this.var_1188 = param3;
         this.var_1505 = param4;
         this.var_1201 = param5;
         if(this.var_1201 == null)
         {
            this.var_1201 = [];
         }
         this.var_2181 = param6;
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
   }
}
