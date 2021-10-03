package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_158:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_164:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1188:String;
      
      private var var_1505:Array;
      
      private var var_1201:Array;
      
      private var var_2181:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1188 = param2;
         this.var_1505 = param3;
         this.var_1201 = param4;
         if(this.var_1201 == null)
         {
            this.var_1201 = [];
         }
         this.var_2181 = param5;
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
