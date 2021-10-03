package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2200:String;
      
      private var var_2201:Array;
      
      private var var_2198:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2200 = param1;
         this.var_2201 = param2;
         this.var_2198 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2200;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2201;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2198;
      }
   }
}
