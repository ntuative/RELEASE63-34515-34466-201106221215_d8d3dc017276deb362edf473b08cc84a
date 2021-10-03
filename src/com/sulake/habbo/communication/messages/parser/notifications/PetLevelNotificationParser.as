package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1980:int;
      
      private var var_2869:String;
      
      private var var_1367:int;
      
      private var var_1345:int;
      
      private var var_1797:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1980 = param1.readInteger();
         this.var_2869 = param1.readString();
         this.var_1367 = param1.readInteger();
         this.var_1345 = param1.readInteger();
         this.var_1797 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1980;
      }
      
      public function get petName() : String
      {
         return this.var_2869;
      }
      
      public function get level() : int
      {
         return this.var_1367;
      }
      
      public function get petType() : int
      {
         return this.var_1345;
      }
      
      public function get breed() : int
      {
         return this.var_1797;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
