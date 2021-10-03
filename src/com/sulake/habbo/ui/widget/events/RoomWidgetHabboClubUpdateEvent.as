package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_252:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2892:int = 0;
      
      private var var_2890:int = 0;
      
      private var var_2889:int = 0;
      
      private var var_2891:Boolean = false;
      
      private var var_1748:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_252,param6,param7);
         this.var_2892 = param1;
         this.var_2890 = param2;
         this.var_2889 = param3;
         this.var_2891 = param4;
         this.var_1748 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2892;
      }
      
      public function get method_10() : int
      {
         return this.var_2890;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2889;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2891;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1748;
      }
   }
}
