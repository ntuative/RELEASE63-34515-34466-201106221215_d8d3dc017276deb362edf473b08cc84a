package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_149:Stage;
      
      private static var var_324:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_803:Boolean = true;
      
      private static var var_125:DisplayObject;
      
      private static var var_1506:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_149 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_125)
            {
               var_149.removeChild(var_125);
               var_149.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_149.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_149.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_149.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_803 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_324;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_324 = param1;
         if(var_324)
         {
            if(var_125)
            {
               var_125.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_125)
         {
            var_125.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_803)
         {
            _loc1_ = var_1506[_type];
            if(_loc1_)
            {
               if(var_125)
               {
                  var_149.removeChild(var_125);
               }
               else
               {
                  var_149.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_149.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_149.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_149.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_125 = _loc1_;
               var_149.addChild(var_125);
            }
            else
            {
               if(var_125)
               {
                  var_149.removeChild(var_125);
                  var_149.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_149.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_149.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_149.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_125 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_380:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_899:
                  case MouseCursorType.const_312:
                  case MouseCursorType.const_1989:
                  case MouseCursorType.const_1952:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_803 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1506[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_125)
         {
            var_125.x = param1.stageX - 2;
            var_125.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_324 = false;
               Mouse.show();
            }
            else
            {
               var_324 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_125 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_324 = false;
         }
      }
   }
}
