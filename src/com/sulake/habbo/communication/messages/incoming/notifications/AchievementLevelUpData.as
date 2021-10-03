package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1367:int;
      
      private var var_1891:int;
      
      private var var_2526:int;
      
      private var var_2525:int;
      
      private var var_2712:int;
      
      private var var_1838:int;
      
      private var var_2710:String = "";
      
      private var var_2711:String = "";
      
      private var var_2709:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1367 = param1.readInteger();
         this.var_1838 = param1.readInteger();
         this.var_2710 = param1.readString();
         this.var_1891 = param1.readInteger();
         this.var_2526 = param1.readInteger();
         this.var_2525 = param1.readInteger();
         this.var_2712 = param1.readInteger();
         this.var_2709 = param1.readInteger();
         this.var_2711 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1367;
      }
      
      public function get points() : int
      {
         return this.var_1891;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2526;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2525;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2712;
      }
      
      public function get badgeId() : int
      {
         return this.var_1838;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2710;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2711;
      }
      
      public function get achievementID() : int
      {
         return this.var_2709;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
