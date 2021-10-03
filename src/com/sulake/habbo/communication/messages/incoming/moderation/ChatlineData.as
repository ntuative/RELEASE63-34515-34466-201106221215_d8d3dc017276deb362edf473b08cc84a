package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2886:int;
      
      private var var_2883:int;
      
      private var var_2884:int;
      
      private var var_2885:String;
      
      private var var_1900:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2886 = param1.readInteger();
         this.var_2883 = param1.readInteger();
         this.var_2884 = param1.readInteger();
         this.var_2885 = param1.readString();
         this.var_1900 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2886;
      }
      
      public function get minute() : int
      {
         return this.var_2883;
      }
      
      public function get chatterId() : int
      {
         return this.var_2884;
      }
      
      public function get chatterName() : String
      {
         return this.var_2885;
      }
      
      public function get msg() : String
      {
         return this.var_1900;
      }
   }
}
