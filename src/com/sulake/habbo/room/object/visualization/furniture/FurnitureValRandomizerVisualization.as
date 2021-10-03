package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_886:int = 20;
      
      private static const const_572:int = 10;
      
      private static const const_1206:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_274:Array;
      
      private var var_681:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_274 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_681)
            {
               this.var_681 = true;
               this.var_274 = new Array();
               this.var_274.push(const_1206);
               this.var_274.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_572)
         {
            if(this.var_681)
            {
               this.var_681 = false;
               this.var_274 = new Array();
               if(_direction == 2)
               {
                  this.var_274.push(const_886 + 5 - param1);
                  this.var_274.push(const_572 + 5 - param1);
               }
               else
               {
                  this.var_274.push(const_886 + param1);
                  this.var_274.push(const_572 + param1);
               }
               this.var_274.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
