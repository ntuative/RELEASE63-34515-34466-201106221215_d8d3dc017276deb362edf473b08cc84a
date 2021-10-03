package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_160:IHabboConfigurationManager = null;
      
      private var var_608:int = 0;
      
      private var var_548:Number = 0;
      
      private var var_3061:Array;
      
      private var var_1521:String = "";
      
      private var var_1921:String = "";
      
      private var var_2565:String = "";
      
      private var var_2966:String = "";
      
      private var var_2155:Boolean = false;
      
      private var var_1917:GarbageMonitor = null;
      
      private var var_1522:int = 0;
      
      private var var_2564:Boolean;
      
      private var var_1919:int = 1000;
      
      private var var_1519:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1920:int = 0;
      
      private var var_1918:int = 10;
      
      private var var_1520:int = 0;
      
      private var var_2567:Number = 0.15;
      
      private var var_2568:Boolean = true;
      
      private var var_2566:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3061 = [];
         super();
         this.var_1921 = Capabilities.version;
         this.var_2565 = Capabilities.os;
         this.var_2155 = Capabilities.isDebugger;
         this.var_1521 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1521 == null)
         {
            this.var_1521 = "unknown";
         }
         this.var_1917 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1920 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1921;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_548;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1919 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1918 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_160 = param1;
         this._reportInterval = int(this.var_160.getKey("performancetest.interval","60"));
         this.var_1919 = int(this.var_160.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1918 = int(this.var_160.getKey("performancetest.reportlimit","10"));
         this.var_2567 = Number(this.var_160.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2568 = Boolean(int(this.var_160.getKey("performancetest.distribution.enabled","1")));
         this.var_2564 = Boolean(this.var_160.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1917.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1917.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2564)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1522;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1919)
         {
            ++this.var_1519;
            _loc3_ = true;
         }
         else
         {
            ++this.var_608;
            if(this.var_608 <= 1)
            {
               this.var_548 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_608);
               this.var_548 = this.var_548 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1920 > this._reportInterval * 1000 && this.var_1520 < this.var_1918)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_548 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2568 && this.var_1520 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2566,this.var_548);
               if(_loc8_ < this.var_2567)
               {
                  _loc7_ = false;
               }
            }
            this.var_1920 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2566 = this.var_548;
               if(this.sendReport(param2))
               {
                  ++this.var_1520;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1521,this.var_1921,this.var_2565,this.var_2966,this.var_2155,_loc5_,_loc4_,this.var_1522,this.var_548,this.var_1519);
            this._connection.send(_loc2_);
            this.var_1522 = 0;
            this.var_548 = 0;
            this.var_608 = 0;
            this.var_1519 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
