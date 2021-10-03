package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1065:int = 20;
      
      private static const const_690:int = 10;
      
      private static const const_1520:int = 31;
      
      private static const const_1516:int = 32;
      
      private static const const_691:int = 30;
       
      
      private var var_321:Array;
      
      private var var_776:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_321 = new Array();
         super();
         super.setAnimation(const_691);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_690)
         {
            if(this.var_776)
            {
               this.var_776 = false;
               this.var_321 = new Array();
               if(direction == 2)
               {
                  this.var_321.push(const_1065 + 5 - param1);
                  this.var_321.push(const_690 + 5 - param1);
               }
               else
               {
                  this.var_321.push(const_1065 + param1);
                  this.var_321.push(const_690 + param1);
               }
               this.var_321.push(const_691);
               return;
            }
            super.setAnimation(const_691);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
