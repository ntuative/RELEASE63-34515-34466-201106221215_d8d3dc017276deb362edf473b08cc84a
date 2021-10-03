package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2094:IID;
      
      private var var_1145:Boolean;
      
      private var var_1359:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2094 = param1;
         this.var_1359 = new Array();
         this.var_1145 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2094;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1145;
      }
      
      public function get receivers() : Array
      {
         return this.var_1359;
      }
      
      public function dispose() : void
      {
         if(!this.var_1145)
         {
            this.var_1145 = true;
            this.var_2094 = null;
            while(this.var_1359.length > 0)
            {
               this.var_1359.pop();
            }
            this.var_1359 = null;
         }
      }
   }
}
