package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_231:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2301:int = 0;
      
      private var var_2300:int = 0;
      
      private var var_2299:int = 0;
      
      private var var_2302:Boolean = false;
      
      private var var_2018:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_231,param6,param7);
         this.var_2301 = param1;
         this.var_2300 = param2;
         this.var_2299 = param3;
         this.var_2302 = param4;
         this.var_2018 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2301;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2300;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2299;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2302;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2018;
      }
   }
}
