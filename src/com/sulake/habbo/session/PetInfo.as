package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1980:int;
      
      private var var_1367:int;
      
      private var var_2470:int;
      
      private var var_2476:int;
      
      private var var_2475:int;
      
      private var _energy:int;
      
      private var var_2471:int;
      
      private var _nutrition:int;
      
      private var var_2474:int;
      
      private var var_2477:int;
      
      private var _ownerName:String;
      
      private var var_2693:int;
      
      private var var_571:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1980;
      }
      
      public function get level() : int
      {
         return this.var_1367;
      }
      
      public function get levelMax() : int
      {
         return this.var_2470;
      }
      
      public function get experience() : int
      {
         return this.var_2476;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2475;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2471;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2474;
      }
      
      public function get ownerId() : int
      {
         return this.var_2477;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2693;
      }
      
      public function get age() : int
      {
         return this.var_571;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1980 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1367 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2470 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2476 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2475 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2471 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2474 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2477 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2693 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_571 = param1;
      }
   }
}
