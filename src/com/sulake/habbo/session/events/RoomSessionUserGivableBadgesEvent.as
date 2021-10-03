package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserGivableBadgesEvent extends RoomSessionEvent
   {
      
      public static const const_63:String = "RSUBE_GIVABLE_BADGES";
       
      
      private var var_245:Array;
      
      public function RoomSessionUserGivableBadgesEvent(param1:IRoomSession, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         this.var_245 = [];
         super(const_63,param1,param3,param4);
         this.var_245 = param2;
      }
      
      public function get badges() : Array
      {
         return this.var_245;
      }
   }
}
