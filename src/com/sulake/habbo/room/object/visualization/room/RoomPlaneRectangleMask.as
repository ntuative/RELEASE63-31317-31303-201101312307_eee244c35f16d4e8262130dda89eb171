package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2047:Number = 0.0;
      
      private var var_2045:Number = 0.0;
      
      private var var_2046:Number = 0.0;
      
      private var var_2044:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2047 = param1;
         this.var_2045 = param2;
         this.var_2046 = param3;
         this.var_2044 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2047;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2045;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2046;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2044;
      }
   }
}
