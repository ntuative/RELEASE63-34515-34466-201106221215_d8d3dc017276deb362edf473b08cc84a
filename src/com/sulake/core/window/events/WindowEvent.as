package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1732:String = "WE_DESTROY";
      
      public static const const_370:String = "WE_DESTROYED";
      
      public static const const_1928:String = "WE_OPEN";
      
      public static const const_1816:String = "WE_OPENED";
      
      public static const const_1980:String = "WE_CLOSE";
      
      public static const const_1839:String = "WE_CLOSED";
      
      public static const const_1942:String = "WE_FOCUS";
      
      public static const const_342:String = "WE_FOCUSED";
      
      public static const const_1925:String = "WE_UNFOCUS";
      
      public static const const_1904:String = "WE_UNFOCUSED";
      
      public static const const_1358:String = "WE_ACTIVATE";
      
      public static const const_673:String = "WE_ACTIVATED";
      
      public static const const_1953:String = "WE_DEACTIVATE";
      
      public static const const_569:String = "WE_DEACTIVATED";
      
      public static const const_355:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_667:String = "WE_UNSELECT";
      
      public static const const_530:String = "WE_UNSELECTED";
      
      public static const const_1727:String = "WE_LOCK";
      
      public static const const_1891:String = "WE_LOCKED";
      
      public static const const_1927:String = "WE_UNLOCK";
      
      public static const const_1728:String = "WE_UNLOCKED";
      
      public static const const_808:String = "WE_ENABLE";
      
      public static const const_272:String = "WE_ENABLED";
      
      public static const const_892:String = "WE_DISABLE";
      
      public static const const_307:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_438:String = "WE_RELOCATED";
      
      public static const const_1215:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1874:String = "WE_MINIMIZE";
      
      public static const const_1954:String = "WE_MINIMIZED";
      
      public static const const_1860:String = "WE_MAXIMIZE";
      
      public static const const_1823:String = "WE_MAXIMIZED";
      
      public static const const_1913:String = "WE_RESTORE";
      
      public static const const_1754:String = "WE_RESTORED";
      
      public static const const_595:String = "WE_CHILD_ADDED";
      
      public static const const_432:String = "WE_CHILD_REMOVED";
      
      public static const const_230:String = "WE_CHILD_RELOCATED";
      
      public static const const_148:String = "WE_CHILD_RESIZED";
      
      public static const const_359:String = "WE_CHILD_ACTIVATED";
      
      public static const const_652:String = "WE_PARENT_ADDED";
      
      public static const const_1864:String = "WE_PARENT_REMOVED";
      
      public static const const_1833:String = "WE_PARENT_RELOCATED";
      
      public static const const_564:String = "WE_PARENT_RESIZED";
      
      public static const const_1273:String = "WE_PARENT_ACTIVATED";
      
      public static const const_198:String = "WE_OK";
      
      public static const const_661:String = "WE_CANCEL";
      
      public static const const_111:String = "WE_CHANGE";
      
      public static const const_611:String = "WE_SCROLL";
      
      public static const const_114:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_740:IWindow;
      
      protected var var_1137:Boolean;
      
      protected var var_503:Boolean;
      
      protected var var_163:Boolean;
      
      protected var var_739:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_740 = param3;
         _loc5_.var_503 = param4;
         _loc5_.var_163 = false;
         _loc5_.var_739 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_740;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_503;
      }
      
      public function recycle() : void
      {
         if(this.var_163)
         {
            throw new Error("Event already recycled!");
         }
         this.var_740 = null;
         this._window = null;
         this.var_163 = true;
         this.var_1137 = false;
         this.var_739.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1137;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1137 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1137;
      }
      
      public function stopPropagation() : void
      {
         this.var_1137 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1137 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_503 + " window: " + this._window + " }";
      }
   }
}
