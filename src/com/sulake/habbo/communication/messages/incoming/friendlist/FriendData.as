package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1093:int;
      
      private var var_887:Boolean;
      
      private var var_1795:Boolean;
      
      private var _figure:String;
      
      private var var_1524:int;
      
      private var var_1742:String;
      
      private var var_1740:String;
      
      private var var_1741:String;
      
      private var var_2612:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1093 = param1.readInteger();
         this.var_887 = param1.readBoolean();
         this.var_1795 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1524 = param1.readInteger();
         this.var_1742 = param1.readString();
         this.var_1740 = param1.readString();
         this.var_1741 = param1.readString();
         this.var_2612 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1093;
      }
      
      public function get online() : Boolean
      {
         return this.var_887;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1795;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1524;
      }
      
      public function get motto() : String
      {
         return this.var_1742;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1740;
      }
      
      public function get realName() : String
      {
         return this.var_1741;
      }
      
      public function get facebookId() : String
      {
         return this.var_2612;
      }
   }
}
