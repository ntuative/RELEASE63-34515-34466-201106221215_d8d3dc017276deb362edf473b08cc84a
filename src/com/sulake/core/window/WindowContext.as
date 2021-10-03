package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_634:uint = 0;
      
      public static const const_1872:uint = 1;
      
      public static const const_2303:int = 0;
      
      public static const const_2181:int = 1;
      
      public static const const_2310:int = 2;
      
      public static const const_2158:int = 3;
      
      public static const const_1984:int = 4;
      
      public static const const_409:int = 5;
      
      public static var var_425:IEventQueue;
      
      private static var var_636:IEventProcessor;
      
      private static var var_1879:uint = const_634;
      
      private static var stage:Stage;
      
      private static var var_178:IWindowRenderer;
       
      
      private var var_2511:EventProcessorState;
      
      private var var_2512:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_141:DisplayObjectContainer;
      
      protected var var_3081:Boolean = true;
      
      protected var var_1410:Error;
      
      protected var var_2239:int = -1;
      
      protected var var_1409:IInternalWindowServices;
      
      protected var var_1698:IWindowParser;
      
      protected var var_3032:IWindowFactory;
      
      protected var var_95:IDesktopWindow;
      
      protected var var_1697:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_600:Boolean = false;
      
      private var var_2513:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_178 = param2;
         this._localization = param4;
         this.var_141 = param5;
         this.var_1409 = new ServiceManager(this,param5);
         this.var_3032 = param3;
         this.var_1698 = new WindowParser(this);
         this.var_2512 = param7;
         if(!stage)
         {
            if(this.var_141 is Stage)
            {
               stage = this.var_141 as Stage;
            }
            else if(this.var_141.stage)
            {
               stage = this.var_141.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_95 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_95.limits.maxWidth = param6.width;
         this.var_95.limits.maxHeight = param6.height;
         this.var_141.addChild(this.var_95.getDisplayObject());
         this.var_141.doubleClickEnabled = true;
         this.var_141.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2511 = new EventProcessorState(var_178,this.var_95,this.var_95,null,this.var_2512);
         inputMode = const_634;
         this.var_1697 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1879;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_425)
         {
            if(var_425 is IDisposable)
            {
               IDisposable(var_425).dispose();
            }
         }
         if(var_636)
         {
            if(var_636 is IDisposable)
            {
               IDisposable(var_636).dispose();
            }
         }
         switch(value)
         {
            case const_634:
               var_425 = new MouseEventQueue(stage);
               var_636 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1872:
               var_425 = new TabletEventQueue(stage);
               var_636 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_634;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_141.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_141.removeChild(IGraphicContextHost(this.var_95).getGraphicContext(true) as DisplayObject);
            this.var_95.destroy();
            this.var_95 = null;
            this.var_1697.destroy();
            this.var_1697 = null;
            if(this.var_1409 is IDisposable)
            {
               IDisposable(this.var_1409).dispose();
            }
            this.var_1409 = null;
            this.var_1698.dispose();
            this.var_1698 = null;
            var_178 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1410;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2239;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1410 = param2;
         this.var_2239 = param1;
         if(this.var_3081)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1410 = null;
         this.var_2239 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1409;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1698;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_3032;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_95;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_95.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1984,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1697;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_95,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_95)
         {
            this.var_95 = null;
         }
         if(param1.state != WindowState.const_517)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_178.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_600 = true;
         if(this.var_1410)
         {
            throw this.var_1410;
         }
         var_636.process(this.var_2511,var_425);
         this.var_600 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2513 = true;
         var_178.update(param1);
         this.var_2513 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_95 != null && !this.var_95.disposed)
         {
            if(this.var_141 is Stage)
            {
               this.var_95.limits.maxWidth = Stage(this.var_141).stageWidth;
               this.var_95.limits.maxHeight = Stage(this.var_141).stageHeight;
               this.var_95.width = Stage(this.var_141).stageWidth;
               this.var_95.height = Stage(this.var_141).stageHeight;
            }
            else
            {
               this.var_95.limits.maxWidth = this.var_141.width;
               this.var_95.limits.maxHeight = this.var_141.height;
               this.var_95.width = this.var_141.width;
               this.var_95.height = this.var_141.height;
            }
         }
      }
   }
}
