package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1980:int;
      
      private var _name:String;
      
      private var var_1367:int;
      
      private var var_2690:int;
      
      private var var_2476:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2694:int;
      
      private var var_2692:int;
      
      private var var_2691:int;
      
      private var var_2693:int;
      
      private var var_2477:int;
      
      private var _ownerName:String;
      
      private var var_571:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1980;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1367;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2690;
      }
      
      public function get experience() : int
      {
         return this.var_2476;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2694;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2692;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2691;
      }
      
      public function get respect() : int
      {
         return this.var_2693;
      }
      
      public function get ownerId() : int
      {
         return this.var_2477;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_571;
      }
      
      public function flush() : Boolean
      {
         this.var_1980 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1980 = param1.readInteger();
         this._name = param1.readString();
         this.var_1367 = param1.readInteger();
         this.var_2690 = param1.readInteger();
         this.var_2476 = param1.readInteger();
         this.var_2694 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2692 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2691 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2693 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_571 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
