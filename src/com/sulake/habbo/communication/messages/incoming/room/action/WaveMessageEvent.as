package com.sulake.habbo.communication.messages.incoming.room.action
{
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.room.action.WaveMessageParser;
   
   public class WaveMessageEvent extends MessageEvent
   {
       
      
      public function WaveMessageEvent(param1:Function)
      {
         super(param1,WaveMessageParser);
      }
      
      public function getParser() : WaveMessageParser
      {
         return var_10 as WaveMessageParser;
      }
      
      public function get method_3() : Boolean
      {
         return this.getParser().method_3;
      }
   }
}
