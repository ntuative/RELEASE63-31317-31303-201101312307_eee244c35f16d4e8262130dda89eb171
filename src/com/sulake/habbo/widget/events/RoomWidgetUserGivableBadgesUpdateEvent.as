package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserGivableBadgesUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_737:String = "RWUGBUE_USER_GIVABLE_BADGES";
       
      
      private var var_245:Array;
      
      public function RoomWidgetUserGivableBadgesUpdateEvent(param1:Array, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_245 = [];
         super(const_737,param2,param3);
         this.var_245 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_245;
      }
   }
}
