package com.sulake.habbo.quest
{
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   
   public class FriendlyTime
   {
      
      private static const const_1114:int = 60;
      
      private static const const_1113:int = 3600;
      
      private static const const_1626:int = 3 * const_1114;
      
      private static const const_1625:int = 3 * const_1113;
       
      
      public function FriendlyTime()
      {
         super();
      }
      
      public static function getFriendlyTime(param1:IHabboLocalizationManager, param2:int) : String
      {
         if(param2 > const_1625)
         {
            return getLocalization(param1,"friendlytime.hours",Math.round(param2 / const_1113));
         }
         if(param2 > const_1626)
         {
            return getLocalization(param1,"friendlytime.minutes",Math.round(param2 / const_1114));
         }
         return getLocalization(param1,"friendlytime.seconds",Math.round(param2));
      }
      
      public static function getLocalization(param1:IHabboLocalizationManager, param2:String, param3:int) : String
      {
         param1.registerParameter(param2,"amount","" + param3);
         return param1.getKey(param2,param2);
      }
   }
}
