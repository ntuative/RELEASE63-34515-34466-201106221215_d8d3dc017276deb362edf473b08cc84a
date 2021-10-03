package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1685:IID;
      
      private var var_2171:String;
      
      private var var_119:IUnknown;
      
      private var var_912:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1685 = param1;
         this.var_2171 = getQualifiedClassName(this.var_1685);
         this.var_119 = param2;
         this.var_912 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1685;
      }
      
      public function get iis() : String
      {
         return this.var_2171;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_119;
      }
      
      public function get references() : uint
      {
         return this.var_912;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_119 == null;
      }
      
      public function dispose() : void
      {
         this.var_1685 = null;
         this.var_2171 = null;
         this.var_119 = null;
         this.var_912 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_912;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_912) : uint(0);
      }
   }
}
