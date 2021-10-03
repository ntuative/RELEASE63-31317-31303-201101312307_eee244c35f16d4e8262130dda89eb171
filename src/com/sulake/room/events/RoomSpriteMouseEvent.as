package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1629:String = "";
      
      private var var_1599:String = "";
      
      private var var_2489:String = "";
      
      private var var_2486:Number = 0;
      
      private var var_2485:Number = 0;
      
      private var var_2488:Number = 0;
      
      private var var_2487:Number = 0;
      
      private var var_2426:Boolean = false;
      
      private var var_2427:Boolean = false;
      
      private var var_2425:Boolean = false;
      
      private var var_2428:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1629 = param2;
         this.var_1599 = param3;
         this.var_2489 = param4;
         this.var_2486 = param5;
         this.var_2485 = param6;
         this.var_2488 = param7;
         this.var_2487 = param8;
         this.var_2426 = param9;
         this.var_2427 = param10;
         this.var_2425 = param11;
         this.var_2428 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1629;
      }
      
      public function get canvasId() : String
      {
         return this.var_1599;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2489;
      }
      
      public function get screenX() : Number
      {
         return this.var_2486;
      }
      
      public function get screenY() : Number
      {
         return this.var_2485;
      }
      
      public function get localX() : Number
      {
         return this.var_2488;
      }
      
      public function get localY() : Number
      {
         return this.var_2487;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2426;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2427;
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
