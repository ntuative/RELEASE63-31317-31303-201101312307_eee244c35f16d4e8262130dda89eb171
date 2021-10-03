package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2208:Number;
      
      private var var_1562:Number;
      
      private var var_849:Number;
      
      private var var_848:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2208 = param1;
         this.var_1562 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_849 = param1;
         this.var_848 = 0;
      }
      
      public function update() : void
      {
         this.var_849 += this.var_1562;
         this.var_848 += this.var_849;
         if(this.var_848 > 0)
         {
            this.var_848 = 0;
            this.var_849 = this.var_2208 * -1 * this.var_849;
         }
      }
      
      public function get location() : Number
      {
         return this.var_848;
      }
   }
}
