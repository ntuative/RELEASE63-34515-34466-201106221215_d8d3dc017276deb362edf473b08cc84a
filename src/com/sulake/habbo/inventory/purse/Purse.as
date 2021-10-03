package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1803:int = 0;
      
      private var var_1804:int = 0;
      
      private var var_2625:int = 0;
      
      private var var_2626:Boolean = false;
      
      private var var_2422:Boolean = false;
      
      private var var_2421:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1803 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1804 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2625 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2626 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2422 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2421 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1803;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1804;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2625;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2626;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2422;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2421;
      }
   }
}
