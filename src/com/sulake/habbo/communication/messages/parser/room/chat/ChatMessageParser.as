package com.sulake.habbo.communication.messages.parser.room.chat
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ChatMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _userId:int = 0;
      
      private var _text:String = "";
      
      private var var_1560:Array;
      
      private var var_1629:int = 0;
      
      private var var_2684:int = -1;
      
      public function ChatMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get links() : Array
      {
         return this.var_1560;
      }
      
      public function get gesture() : int
      {
         return this.var_1629;
      }
      
      public function get trackingId() : int
      {
         return this.var_2684;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         this._userId = 0;
         this._text = "";
         this.var_1629 = 0;
         this.var_1560 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         if(param1 == null)
         {
            return false;
         }
         this._userId = param1.readInteger();
         this._text = param1.readString();
         this.var_1629 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         if(_loc2_ > 0)
         {
            this.var_1560 = new Array();
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               this.var_1560.push([param1.readString(),param1.readString(),param1.readInteger()]);
               _loc3_++;
            }
         }
         this.var_2684 = param1.readInteger();
         return true;
      }
   }
}
