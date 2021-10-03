package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2317:int;
      
      private var var_2101:String;
      
      private var var_2791:String;
      
      private var var_2787:Boolean;
      
      private var var_2788:Boolean;
      
      private var var_2790:int;
      
      private var var_2789:String;
      
      private var var_2786:String;
      
      private var var_1741:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2317 = param1.readInteger();
         this.var_2101 = param1.readString();
         this.var_2791 = param1.readString();
         this.var_2787 = param1.readBoolean();
         this.var_2788 = param1.readBoolean();
         param1.readString();
         this.var_2790 = param1.readInteger();
         this.var_2789 = param1.readString();
         this.var_2786 = param1.readString();
         this.var_1741 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2317;
      }
      
      public function get avatarName() : String
      {
         return this.var_2101;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2791;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2787;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2788;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2790;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2789;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2786;
      }
      
      public function get realName() : String
      {
         return this.var_1741;
      }
   }
}
