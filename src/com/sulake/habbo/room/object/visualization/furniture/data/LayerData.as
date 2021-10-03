package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_792:String = "";
      
      public static const const_449:int = 0;
      
      public static const const_432:int = 255;
      
      public static const const_659:Boolean = false;
      
      public static const const_487:int = 0;
      
      public static const const_471:int = 0;
      
      public static const const_445:int = 0;
      
      public static const const_1108:int = 1;
      
      public static const const_1178:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2007:String = "";
      
      private var var_1736:int = 0;
      
      private var var_2008:int = 255;
      
      private var var_2491:Boolean = false;
      
      private var var_2493:int = 0;
      
      private var var_2492:int = 0;
      
      private var var_2494:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2007 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2007;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1736 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1736;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2008 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2008;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2491 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2491;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2493 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2493;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2492 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2492;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2494 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2494;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
