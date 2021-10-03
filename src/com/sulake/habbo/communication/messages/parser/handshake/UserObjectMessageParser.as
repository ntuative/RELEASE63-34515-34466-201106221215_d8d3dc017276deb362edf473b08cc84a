package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_999:String;
      
      private var var_2328:String;
      
      private var var_1741:String;
      
      private var var_2330:int;
      
      private var var_2326:String;
      
      private var var_2327:int;
      
      private var var_2331:int;
      
      private var var_2329:int;
      
      private var var_1173:int;
      
      private var var_759:int;
      
      private var var_2332:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_999 = param1.readString();
         this.var_2328 = param1.readString();
         this.var_1741 = param1.readString();
         this.var_2330 = param1.readInteger();
         this.var_2326 = param1.readString();
         this.var_2327 = param1.readInteger();
         this.var_2331 = param1.readInteger();
         this.var_2329 = param1.readInteger();
         this.var_1173 = param1.readInteger();
         this.var_759 = param1.readInteger();
         this.var_2332 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_999;
      }
      
      public function get customData() : String
      {
         return this.var_2328;
      }
      
      public function get realName() : String
      {
         return this.var_1741;
      }
      
      public function get tickets() : int
      {
         return this.var_2330;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2326;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2327;
      }
      
      public function get directMail() : int
      {
         return this.var_2331;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2329;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1173;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_759;
      }
      
      public function get identityId() : int
      {
         return this.var_2332;
      }
   }
}
