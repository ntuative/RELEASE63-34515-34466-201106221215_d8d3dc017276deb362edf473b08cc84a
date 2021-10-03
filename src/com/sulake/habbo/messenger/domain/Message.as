package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_787:int = 1;
      
      public static const const_906:int = 2;
      
      public static const const_1002:int = 3;
      
      public static const const_1228:int = 4;
      
      public static const const_836:int = 5;
      
      public static const const_1254:int = 6;
       
      
      private var _type:int;
      
      private var var_1156:int;
      
      private var var_2413:String;
      
      private var var_2463:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1156 = param2;
         this.var_2413 = param3;
         this.var_2463 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2413;
      }
      
      public function get time() : String
      {
         return this.var_2463;
      }
      
      public function get senderId() : int
      {
         return this.var_1156;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
