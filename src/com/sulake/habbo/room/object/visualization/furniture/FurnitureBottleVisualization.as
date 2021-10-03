package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_886:int = 20;
      
      private static const const_572:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_274:Array;
      
      private var var_681:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_274 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_681)
            {
               this.var_681 = true;
               this.var_274 = new Array();
               this.var_274.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_681)
            {
               this.var_681 = false;
               this.var_274 = new Array();
               this.var_274.push(const_886);
               this.var_274.push(const_572 + param1);
               this.var_274.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
