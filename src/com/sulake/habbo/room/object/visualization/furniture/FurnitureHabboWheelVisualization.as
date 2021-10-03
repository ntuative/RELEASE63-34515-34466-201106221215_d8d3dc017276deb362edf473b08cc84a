package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1065:int = 10;
      
      private static const const_690:int = 20;
      
      private static const const_1520:int = 31;
      
      private static const const_1516:int = 32;
       
      
      private var var_321:Array;
      
      private var var_776:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_321 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_776)
            {
               this.var_776 = true;
               this.var_321 = new Array();
               this.var_321.push(const_1520);
               this.var_321.push(const_1516);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1065)
         {
            if(this.var_776)
            {
               this.var_776 = false;
               this.var_321 = new Array();
               this.var_321.push(const_1065 + param1);
               this.var_321.push(const_690 + param1);
               this.var_321.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_321.length > 0)
            {
               super.setAnimation(this.var_321.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
