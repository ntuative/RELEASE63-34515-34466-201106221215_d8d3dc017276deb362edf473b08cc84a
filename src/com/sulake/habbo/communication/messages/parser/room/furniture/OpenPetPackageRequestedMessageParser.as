package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageRequestedMessageParser implements IMessageParser
   {
       
      
      private var var_235:int = -1;
      
      private var var_1345:int = -1;
      
      private var var_1797:int = -1;
      
      private var _color:String = "";
      
      public function OpenPetPackageRequestedMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_235;
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
      
      public function flush() : Boolean
      {
         this.var_235 = -1;
         this.var_1345 = -1;
         this.var_1797 = -1;
         this._color = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_235 = param1.readInteger();
         this.var_1345 = param1.readInteger();
         this.var_1797 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
   }
}
