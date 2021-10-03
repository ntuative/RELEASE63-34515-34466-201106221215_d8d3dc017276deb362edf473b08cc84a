package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3059:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_737:IWindowContext;
      
      private var var_1251:IMouseDraggingService;
      
      private var var_1254:IMouseScalingService;
      
      private var var_1249:IMouseListenerService;
      
      private var var_1252:IFocusManagerService;
      
      private var var_1250:IToolTipAgentService;
      
      private var var_1253:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3059 = 0;
         this._root = param2;
         this.var_737 = param1;
         this.var_1251 = new WindowMouseDragger(param2);
         this.var_1254 = new WindowMouseScaler(param2);
         this.var_1249 = new WindowMouseListener(param2);
         this.var_1252 = new FocusManager(param2);
         this.var_1250 = new WindowToolTipAgent(param2);
         this.var_1253 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1251 != null)
         {
            this.var_1251.dispose();
            this.var_1251 = null;
         }
         if(this.var_1254 != null)
         {
            this.var_1254.dispose();
            this.var_1254 = null;
         }
         if(this.var_1249 != null)
         {
            this.var_1249.dispose();
            this.var_1249 = null;
         }
         if(this.var_1252 != null)
         {
            this.var_1252.dispose();
            this.var_1252 = null;
         }
         if(this.var_1250 != null)
         {
            this.var_1250.dispose();
            this.var_1250 = null;
         }
         if(this.var_1253 != null)
         {
            this.var_1253.dispose();
            this.var_1253 = null;
         }
         this._root = null;
         this.var_737 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1251;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1254;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1249;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1252;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1250;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1253;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
