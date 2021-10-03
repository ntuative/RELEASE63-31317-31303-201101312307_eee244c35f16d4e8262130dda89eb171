package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1320:int = 2;
      
      private static const const_1321:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_274:Array;
      
      private var var_1166:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_274 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1320)
         {
            this.var_274 = new Array();
            this.var_274.push(const_1321);
            this.var_1166 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1166 > 0)
         {
            --this.var_1166;
         }
         if(this.var_1166 == 0)
         {
            if(this.var_274.length > 0)
            {
               super.setAnimation(this.var_274.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
