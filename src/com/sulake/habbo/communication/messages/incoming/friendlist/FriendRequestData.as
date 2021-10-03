package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1284:int;
      
      private var var_2528:String;
      
      private var var_2529:int;
      
      private var var_2530:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1284 = param1.readInteger();
         this.var_2528 = param1.readString();
         this.var_2530 = param1.readString();
         this.var_2529 = this.var_1284;
      }
      
      public function get requestId() : int
      {
         return this.var_1284;
      }
      
      public function get requesterName() : String
      {
         return this.var_2528;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2529;
      }
      
      public function get figureString() : String
      {
         return this.var_2530;
      }
   }
}
