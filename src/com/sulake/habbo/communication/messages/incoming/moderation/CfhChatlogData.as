package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2182:int;
      
      private var var_3007:int;
      
      private var var_1590:int;
      
      private var var_2520:int;
      
      private var var_136:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2182 = param1.readInteger();
         this.var_3007 = param1.readInteger();
         this.var_1590 = param1.readInteger();
         this.var_2520 = param1.readInteger();
         this.var_136 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2182);
      }
      
      public function get callId() : int
      {
         return this.var_2182;
      }
      
      public function get callerUserId() : int
      {
         return this.var_3007;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1590;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2520;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_136;
      }
   }
}
