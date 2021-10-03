package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1825:int;
      
      private var _currentPosition:int;
      
      private var var_1828:int;
      
      private var var_1827:int;
      
      private var var_1826:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1825;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1828;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1827;
      }
      
      public function get syncCount() : int
      {
         return this.var_1826;
      }
      
      public function flush() : Boolean
      {
         this.var_1825 = -1;
         this._currentPosition = -1;
         this.var_1828 = -1;
         this.var_1827 = -1;
         this.var_1826 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1825 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1828 = param1.readInteger();
         this.var_1827 = param1.readInteger();
         this.var_1826 = param1.readInteger();
         return true;
      }
   }
}
