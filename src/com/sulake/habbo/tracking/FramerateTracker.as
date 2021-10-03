package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1920:int;
      
      private var var_2952:int;
      
      private var var_873:int;
      
      private var var_548:Number;
      
      private var var_2953:Boolean;
      
      private var var_2951:int;
      
      private var var_2144:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_548);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2952 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2951 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2953 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_873;
         if(this.var_873 == 1)
         {
            this.var_548 = param1;
            this.var_1920 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_873);
            this.var_548 = this.var_548 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2953 && param3 - this.var_1920 >= this.var_2952)
         {
            this.var_873 = 0;
            if(this.var_2144 < this.var_2951)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2144;
               this.var_1920 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
