package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_181:int = 0;
       
      
      private var var_2398:int = 0;
      
      private var var_1418:Dictionary;
      
      private var var_1850:int = 0;
      
      private var var_1851:int = 0;
      
      private var var_2076:Boolean = false;
      
      private var var_2080:int = 0;
      
      private var var_2079:int = 0;
      
      public function Purse()
      {
         this.var_1418 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2398;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2398 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1850;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1850 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1851;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1851 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1850 > 0 || this.var_1851 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2076;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2076 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2080;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2080 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2079;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2079 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1418;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1418 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1418[param1];
      }
   }
}
