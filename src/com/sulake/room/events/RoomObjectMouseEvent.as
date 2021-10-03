package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_215:String = "ROE_MOUSE_CLICK";
      
      public static const const_1893:String = "ROE_MOUSE_ENTER";
      
      public static const const_417:String = "ROE_MOUSE_MOVE";
      
      public static const const_1756:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1900:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_548:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1629:String = "";
      
      private var var_2427:Boolean;
      
      private var var_2426:Boolean;
      
      private var var_2425:Boolean;
      
      private var var_2428:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1629 = param2;
         this.var_2427 = param5;
         this.var_2426 = param6;
         this.var_2425 = param7;
         this.var_2428 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1629;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2427;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2426;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2425;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2428;
      }
   }
}
