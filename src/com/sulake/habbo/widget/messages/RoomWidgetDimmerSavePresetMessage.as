package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_739:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2382:int;
      
      private var var_2383:int;
      
      private var _color:uint;
      
      private var var_1040:int;
      
      private var var_2509:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_739);
         this.var_2382 = param1;
         this.var_2383 = param2;
         this._color = param3;
         this.var_1040 = param4;
         this.var_2509 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2382;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2383;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1040;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2509;
      }
   }
}
