package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1505:IID;
      
      private var var_695:Boolean;
      
      private var var_992:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1505 = param1;
         this.var_992 = new Array();
         this.var_695 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1505;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_695;
      }
      
      public function get receivers() : Array
      {
         return this.var_992;
      }
      
      public function dispose() : void
      {
         if(!this.var_695)
         {
            this.var_695 = true;
            this.var_1505 = null;
            while(this.var_992.length > 0)
            {
               this.var_992.pop();
            }
            this.var_992 = null;
         }
      }
   }
}
