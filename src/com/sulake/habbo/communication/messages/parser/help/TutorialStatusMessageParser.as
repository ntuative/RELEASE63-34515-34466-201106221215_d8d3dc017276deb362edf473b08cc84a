package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1322:Boolean;
      
      private var var_1321:Boolean;
      
      private var var_1592:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1322;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1321;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1592;
      }
      
      public function flush() : Boolean
      {
         this.var_1322 = false;
         this.var_1321 = false;
         this.var_1592 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1322 = param1.readBoolean();
         this.var_1321 = param1.readBoolean();
         this.var_1592 = param1.readBoolean();
         return true;
      }
   }
}
