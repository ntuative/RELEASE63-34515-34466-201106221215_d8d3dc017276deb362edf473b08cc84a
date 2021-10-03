package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_89:ITextFieldWindow;
      
      private var var_717:Boolean;
      
      private var var_1549:String = "";
      
      private var var_2128:int;
      
      private var var_2127:Function;
      
      private var var_2925:String = "";
      
      private var var_158:IWindowContainer;
      
      private var var_2924:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2926:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_89 = param2;
         this.var_2128 = param3;
         this.var_2127 = param4;
         if(param5 != null)
         {
            this.var_717 = true;
            this.var_1549 = param5;
            this.var_89.text = param5;
         }
         Util.setProcDirectly(this.var_89,this.onInputClick);
         this.var_89.addEventListener(WindowKeyboardEvent.const_184,this.checkEnterPress);
         this.var_89.addEventListener(WindowEvent.const_111,this.checkMaxLen);
         this.var_2924 = this.var_89.textBackground;
         this._orgTextBackgroundColor = this.var_89.textBackgroundColor;
         this.var_2926 = this.var_89.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_89.textBackground = this.var_2924;
         this.var_89.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_89.textColor = this.var_2926;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_89.textBackground = true;
         this.var_89.textBackgroundColor = 4294021019;
         this.var_89.textColor = 4278190080;
         if(this.var_158 == null)
         {
            this.var_158 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_158,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_89.parent).addChild(this.var_158);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_158.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_158.findChildByName("border").width = _loc2_.width + 15;
         this.var_158.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_89.getLocalPosition(_loc3_);
         this.var_158.x = _loc3_.x;
         this.var_158.y = _loc3_.y - this.var_158.height + 3;
         var _loc4_:IWindow = this.var_158.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_158.width / 2 - _loc4_.width / 2;
         this.var_158.x += (this.var_89.width - this.var_158.width) / 2;
         this.var_158.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1549 != null)
         {
            this.var_89.text = this.var_1549;
            this.var_717 = true;
         }
         else
         {
            this.var_89.text = "";
            this.var_717 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_717)
         {
            return this.var_2925;
         }
         return this.var_89.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_717 = false;
         this.var_89.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_158 != null)
         {
            this.var_158.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_89;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_717 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_342)
         {
            return;
         }
         if(!this.var_717)
         {
            return;
         }
         this.var_89.text = this.var_2925;
         this.var_717 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_2127 != null)
            {
               this.var_2127();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_89.text;
         if(_loc2_.length > this.var_2128)
         {
            this.var_89.text = _loc2_.substring(0,this.var_2128);
         }
      }
   }
}
