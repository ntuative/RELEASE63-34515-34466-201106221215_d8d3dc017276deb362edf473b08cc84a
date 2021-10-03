package com.sulake.habbo.ui.widget.avatarinfo
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.utils.FixedSizeStack;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class AvatarInfoView implements IDisposable
   {
      
      protected static const const_1410:uint = 4281149991;
      
      protected static const const_1411:uint = 4282950861;
      
      protected static const const_2047:uint = 4288230144;
      
      protected static const const_1413:uint = 16777215;
      
      protected static const const_1412:uint = 9552639;
      
      protected static const const_2044:uint = 16777215;
      
      protected static const const_2043:uint = 5789011;
      
      protected static const const_2045:uint = 13947341;
      
      protected static const const_2046:uint = 5789011;
      
      private static const const_1621:int = 25;
      
      private static const const_1109:int = 3;
       
      
      protected var _window:IWindowContainer;
      
      protected var _widget:AvatarInfoWidget;
      
      protected var _userId:int;
      
      protected var _userName:String;
      
      protected var var_1705:int;
      
      protected var var_2255:Boolean;
      
      protected var var_2466:int;
      
      protected var var_1421:Boolean;
      
      protected var var_2254:FixedSizeStack;
      
      protected var var_2253:int = -1000000;
      
      protected var _disposed:Boolean;
      
      protected var var_508:Timer;
      
      protected var var_3042:int = 3000;
      
      protected var var_1704:Boolean;
      
      protected var var_1703:Boolean;
      
      protected var _blend:Number;
      
      protected var var_1706:int;
      
      protected var var_3041:int = 500;
      
      protected var var_1144:Boolean;
      
      public function AvatarInfoView(param1:AvatarInfoWidget)
      {
         this.var_2254 = new FixedSizeStack(const_1621);
         super();
         this._widget = param1;
         this.var_1144 = true;
         this.var_1704 = false;
         this.var_1703 = false;
      }
      
      public static function setup(param1:AvatarInfoView, param2:int, param3:String, param4:int, param5:int, param6:Boolean = false) : void
      {
         param1._userId = param2;
         param1._userName = param3;
         param1.var_1705 = param5;
         param1.var_2466 = param4;
         param1.var_2255 = param6;
         param1.var_1704 = false;
         param1.var_3041 = 500;
         param1.var_1703 = false;
         param1._blend = 1;
         if(param1.var_1144)
         {
            if(!param1.var_508)
            {
               param1.var_508 = new Timer(param1.var_3042,1);
               param1.var_508.addEventListener(TimerEvent.TIMER_COMPLETE,param1.onTimerComplete);
            }
            param1.var_508.reset();
            param1.var_508.start();
         }
         param1.updateWindow();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userType() : int
      {
         return this.var_1705;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2466;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2255;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         this._widget = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_508)
         {
            this.var_508.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
            this.var_508.reset();
            this.var_508 = null;
         }
         this._disposed = true;
      }
      
      private function onTimerComplete(param1:TimerEvent) : void
      {
         this.var_1703 = true;
         this.var_1706 = 0;
         this.hide(true);
      }
      
      protected function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      protected function updateWindow() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!this._widget || !this._widget.assets || !this._widget.windowManager)
         {
            return;
         }
         if(!this._window)
         {
            _loc2_ = this._widget.assets.getAssetByName("avatar_info_widget").content as XML;
            this._window = this._widget.windowManager.buildFromXML(_loc2_,0) as IWindowContainer;
            if(!this._window)
            {
               return;
            }
         }
         var _loc1_:IWindow = this._window.findChildByName("name");
         _loc1_.caption = this._userName;
         if(!this.var_2255)
         {
            this._window.findChildByName("change_name_container").visible = false;
            this._window.height = 39;
            this._window.width = 32 + _loc1_.width;
         }
         else
         {
            _loc3_ = this._window.findChildByName("change_name_container");
            _loc3_.visible = true;
            this._window.height = 39 + _loc3_.height;
            this.addMouseClickListener(this._window.findChildByName("change_name_container"),this.clickHandler);
         }
      }
      
      protected function clickHandler(param1:WindowMouseEvent) : void
      {
         this._widget.messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_559));
         this._widget.removeView(this,false);
      }
      
      public function setImageAsset(param1:IBitmapWrapperWindow, param2:String) : void
      {
         if(!param1 || !this._widget || !this._widget.assets)
         {
            return;
         }
         var _loc3_:BitmapDataAsset = this._widget.assets.getAssetByName(param2) as BitmapDataAsset;
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         if(!_loc4_)
         {
            return;
         }
         if(param1.bitmap)
         {
            param1.bitmap.fillRect(param1.bitmap.rect,0);
         }
         else
         {
            param1.bitmap = new BitmapData(param1.width,param1.height,true,0);
         }
         param1.bitmap.draw(_loc4_);
      }
      
      public function show() : void
      {
         if(this._window != null)
         {
            this._widget.windowManager.getDesktop(0).addChild(this._window);
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function hide(param1:Boolean) : void
      {
         if(this._window != null)
         {
            if(!this.var_1704 && param1)
            {
               this.var_1704 = true;
               this.var_508.start();
            }
            else
            {
               this._window.visible = false;
               this._window.parent = null;
            }
         }
      }
      
      public function update(param1:Rectangle, param2:Point, param3:uint) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!param1)
         {
            return;
         }
         if(!this._window)
         {
            this.updateWindow();
         }
         if(this.var_1703)
         {
            this.var_1706 += param3;
            this._blend = 1 - this.var_1706 / Number(this.var_3041);
         }
         else
         {
            this._blend = 1;
         }
         if(this._blend <= 0)
         {
            this._widget.removeView(this,false);
            return;
         }
         if(!this.var_1421)
         {
            _loc4_ = -this._window.height;
            if(this.var_1705 == RoomObjectTypeEnum.const_131 || this.var_1705 == RoomObjectTypeEnum.const_537)
            {
               _loc4_ += param1.height > 50 ? 25 : 0;
            }
            else
            {
               _loc4_ -= 4;
            }
            _loc5_ = param2.y - param1.top;
            this.var_2254.addValue(_loc5_);
            _loc6_ = this.var_2254.getMax();
            if(_loc6_ < this.var_2253 - const_1109)
            {
               _loc6_ = this.var_2253 - const_1109;
            }
            _loc7_ = param2.y - _loc6_;
            this.var_2253 = _loc6_;
            this._window.x = param2.x - this._window.width / 2;
            this._window.y = _loc7_ + _loc4_;
         }
         this._window.blend = this._blend;
         this.show();
      }
   }
}
