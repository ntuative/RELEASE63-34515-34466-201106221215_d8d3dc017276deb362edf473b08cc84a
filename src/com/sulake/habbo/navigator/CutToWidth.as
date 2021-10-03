package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_200:String;
      
      private var _text:ITextWindow;
      
      private var var_342:int;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function test(param1:int) : Boolean
      {
         this._text.text = this.var_200.substring(0,param1) + "...";
         return this._text.textWidth > this.var_342;
      }
      
      public function method_5(param1:String, param2:ITextWindow, param3:int) : void
      {
         this.var_200 = param1;
         this._text = param2;
         this.var_342 = param3;
      }
   }
}
