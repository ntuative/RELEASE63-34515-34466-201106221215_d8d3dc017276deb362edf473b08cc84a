package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1793:int = 0;
      
      private var var_1474:Dictionary;
      
      private var var_1803:int = 0;
      
      private var var_1804:int = 0;
      
      private var var_2422:Boolean = false;
      
      private var var_2423:int = 0;
      
      private var var_2424:int = 0;
      
      private var var_2421:Boolean = false;
      
      public function Purse()
      {
         this.var_1474 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1793;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1793 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1803;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1803 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1804;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1804 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1803 > 0 || this.var_1804 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2422;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2421;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2421 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2422 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2423;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2423 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2424;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2424 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1474;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1474 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1474[param1];
      }
   }
}
