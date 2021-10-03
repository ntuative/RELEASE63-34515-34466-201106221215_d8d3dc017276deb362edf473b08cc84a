package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.sound.PlayListEntry;
   
   public class PlayListSongAddedMessageParser implements IMessageParser
   {
       
      
      private var var_1960:PlayListEntry;
      
      public function PlayListSongAddedMessageParser()
      {
         super();
      }
      
      public function get entry() : PlayListEntry
      {
         return this.var_1960;
      }
      
      public function flush() : Boolean
      {
         this.var_1960 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         var _loc4_:String = param1.readString();
         var _loc5_:String = param1.readString();
         this.var_1960 = new PlayListEntry(_loc2_,_loc3_,_loc4_,_loc5_);
         return true;
      }
   }
}
