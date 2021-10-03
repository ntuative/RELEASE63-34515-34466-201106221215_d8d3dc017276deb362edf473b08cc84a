package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1516:int = 3;
      
      private static const const_1634:int = 2;
      
      private static const const_1635:int = 1;
      
      private static const const_1633:int = 15;
       
      
      private var var_321:Array;
      
      private var var_1331:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_321 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1634)
         {
            this.var_321 = new Array();
            this.var_321.push(const_1635);
            this.var_1331 = const_1633;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1331 > 0)
         {
            --this.var_1331;
         }
         if(this.var_1331 == 0)
         {
            if(this.var_321.length > 0)
            {
               super.setAnimation(this.var_321.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
