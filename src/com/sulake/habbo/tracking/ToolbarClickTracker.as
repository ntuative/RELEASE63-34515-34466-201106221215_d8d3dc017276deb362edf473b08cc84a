package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1426:IHabboTracking;
      
      private var var_2080:Boolean = false;
      
      private var var_2868:int = 0;
      
      private var var_2079:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1426 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1426 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2080 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2868 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2080)
         {
            return;
         }
         ++this.var_2079;
         if(this.var_2079 <= this.var_2868)
         {
            this.var_1426.trackGoogle("toolbar",param1);
         }
      }
   }
}
