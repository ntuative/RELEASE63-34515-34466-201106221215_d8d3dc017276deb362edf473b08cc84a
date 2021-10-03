package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2302:int = 0;
      
      public static const const_1881:int = 1;
      
      public static const const_1973:int = 2;
      
      public static const const_2304:int = 3;
      
      public static const const_2252:int = 4;
      
      public static const const_2276:int = 5;
      
      public static const const_1862:int = 10;
      
      public static const const_2127:int = 11;
      
      public static const const_2161:int = 12;
      
      public static const const_2314:int = 13;
      
      public static const const_2251:int = 16;
      
      public static const const_2262:int = 17;
      
      public static const const_2153:int = 18;
      
      public static const const_2105:int = 19;
      
      public static const const_2194:int = 20;
      
      public static const const_2224:int = 22;
      
      public static const const_2093:int = 23;
      
      public static const const_2226:int = 24;
      
      public static const const_2240:int = 25;
      
      public static const const_2097:int = 26;
      
      public static const const_2150:int = 27;
      
      public static const const_2290:int = 28;
      
      public static const const_2199:int = 29;
      
      public static const const_2261:int = 100;
      
      public static const const_2306:int = 101;
      
      public static const const_2245:int = 102;
      
      public static const const_2289:int = 103;
      
      public static const const_2131:int = 104;
      
      public static const const_2255:int = 105;
      
      public static const const_2155:int = 106;
      
      public static const const_2111:int = 107;
      
      public static const const_2282:int = 108;
      
      public static const const_2198:int = 109;
      
      public static const const_2249:int = 110;
      
      public static const const_2190:int = 111;
      
      public static const const_2219:int = 112;
      
      public static const const_2135:int = 113;
      
      public static const const_2237:int = 114;
      
      public static const const_2151:int = 115;
      
      public static const const_2102:int = 116;
      
      public static const const_2140:int = 117;
      
      public static const const_2236:int = 118;
      
      public static const const_2268:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1881:
            case const_1862:
               return "banned";
            case const_1973:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
