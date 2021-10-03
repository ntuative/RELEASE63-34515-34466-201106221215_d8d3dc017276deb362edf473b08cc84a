package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_502:String = "ROFCAE_DICE_OFF";
      
      public static const const_519:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_584:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_543:String = "ROFCAE_STICKIE";
      
      public static const const_490:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_670:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_632:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_542:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_612:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_636:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_501:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_640:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_596:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_582:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_526:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_304:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_330:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
