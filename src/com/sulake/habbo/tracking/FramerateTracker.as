package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1680:int;
      
      private var var_2572:int;
      
      private var var_1162:int;
      
      private var var_483:Number;
      
      private var var_2573:Boolean;
      
      private var var_2574:int;
      
      private var var_1828:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2572 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2574 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2573 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1162;
         if(this.var_1162 == 1)
         {
            this.var_483 = param1;
            this.var_1680 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1162);
            this.var_483 = this.var_483 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2573 && param3 - this.var_1680 >= this.var_2572 && this.var_1828 < this.var_2574)
         {
            _loc5_ = 1000 / this.var_483;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1828;
            this.var_1680 = param3;
            this.var_1162 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
