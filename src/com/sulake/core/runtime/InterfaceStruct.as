package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1426:IID;
      
      private var var_1860:String;
      
      private var var_114:IUnknown;
      
      private var var_760:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1426 = param1;
         this.var_1860 = getQualifiedClassName(this.var_1426);
         this.var_114 = param2;
         this.var_760 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1426;
      }
      
      public function get iis() : String
      {
         return this.var_1860;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_114;
      }
      
      public function get references() : uint
      {
         return this.var_760;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_114 == null;
      }
      
      public function dispose() : void
      {
         this.var_1426 = null;
         this.var_1860 = null;
         this.var_114 = null;
         this.var_760 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_760;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_760) : uint(0);
      }
   }
}
