package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureCounterClockVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1573:String = "seconds_sprite";
      
      private static const const_1572:String = "ten_seconds_sprite";
      
      private static const const_1571:String = "minutes_sprite";
      
      private static const const_1570:String = "ten_minutes_sprite";
       
      
      public function FurnitureCounterClockVisualization()
      {
         super();
      }
      
      override public function get animationId() : int
      {
         return 0;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc3_:String = getSpriteTag(param1,direction,param2);
         var _loc4_:int = super.animationId;
         switch(_loc3_)
         {
            case const_1573:
               return _loc4_ % 60 % 10;
            case const_1572:
               return _loc4_ % 60 / 10;
            case const_1571:
               return _loc4_ / 60 % 10;
            case const_1570:
               return _loc4_ / 60 / 10 % 10;
            default:
               return super.getFrameNumber(param1,param2);
         }
      }
   }
}
