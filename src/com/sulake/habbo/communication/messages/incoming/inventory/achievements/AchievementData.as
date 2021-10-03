package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1367:int;
      
      private var var_1838:String;
      
      private var var_1885:int;
      
      private var var_2526:int;
      
      private var var_2525:int;
      
      private var var_1884:int;
      
      private var var_1886:Boolean;
      
      private var _category:String;
      
      private var var_2527:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1367 = param1.readInteger();
         this.var_1838 = param1.readString();
         this.var_1885 = Math.max(1,param1.readInteger());
         this.var_2526 = param1.readInteger();
         this.var_2525 = param1.readInteger();
         this.var_1884 = param1.readInteger();
         this.var_1886 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2527 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1838;
      }
      
      public function get level() : int
      {
         return this.var_1367;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1885;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2526;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2525;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1884;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1886;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2527;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1367 > 1 || this.var_1886;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1884 = this.var_1885;
      }
   }
}
