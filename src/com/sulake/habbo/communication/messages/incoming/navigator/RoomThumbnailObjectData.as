package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1602:int;
      
      private var var_1603:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1602 = this.var_1602;
         _loc1_.var_1603 = this.var_1603;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1602 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1603 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1602;
      }
      
      public function get imgId() : int
      {
         return this.var_1603;
      }
   }
}
