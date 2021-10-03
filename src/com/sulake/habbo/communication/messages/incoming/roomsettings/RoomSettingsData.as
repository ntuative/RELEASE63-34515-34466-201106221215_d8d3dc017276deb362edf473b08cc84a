package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_654:int = 0;
      
      public static const const_235:int = 1;
      
      public static const const_134:int = 2;
      
      public static const const_993:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1730:String;
      
      private var var_2357:int;
      
      private var var_1524:int;
      
      private var var_2665:int;
      
      private var var_2666:int;
      
      private var var_932:Array;
      
      private var var_2669:Array;
      
      private var var_2668:int;
      
      private var var_2660:Boolean;
      
      private var var_2662:Boolean;
      
      private var var_2661:Boolean;
      
      private var var_2667:Boolean;
      
      private var var_2663:int;
      
      private var var_2664:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2660;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2660 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2662;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2662 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2661;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2661 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2667;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2667 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2663;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2663 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2664;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2664 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1730;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1730 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2357;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2357 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1524;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1524 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2665;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2665 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2666;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2666 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_932;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_932 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2669;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2669 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2668;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2668 = param1;
      }
   }
}
