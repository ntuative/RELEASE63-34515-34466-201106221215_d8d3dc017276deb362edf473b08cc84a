package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1166:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1093:int;
      
      private var var_887:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var _figure:String;
      
      private var var_1524:int;
      
      private var var_1742:String;
      
      private var var_1740:String;
      
      private var var_1741:String;
      
      private var var_1050:Vector.<FriendNotification>;
      
      private var var_2309:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1741 = param3;
         this.var_1742 = param4;
         this.var_1093 = param5;
         this.var_887 = param6;
         this._allowFollow = param7;
         this._figure = param8;
         this.var_1524 = param9;
         this.var_1740 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
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
      
      public function get logEventId() : int
      {
         return this.var_2309;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1050)
         {
            this.var_1050 = new Vector.<FriendNotification>();
         }
         return this.var_1050;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1093 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_887 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1524 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1742 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1740 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1741 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1166;
      }
   }
}
