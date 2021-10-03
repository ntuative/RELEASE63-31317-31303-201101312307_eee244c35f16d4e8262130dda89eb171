package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1850:int = 0;
      
      private var var_1851:int = 0;
      
      private var var_2697:int = 0;
      
      private var var_2698:Boolean = false;
      
      private var var_2076:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1850 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1851 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2697 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2698 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2076 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1850;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1851;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2697;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2698;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2076;
      }
   }
}
