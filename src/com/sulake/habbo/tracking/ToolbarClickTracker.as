package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1223:IHabboTracking;
      
      private var var_1579:Boolean = false;
      
      private var var_2587:int = 0;
      
      private var var_1835:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1223 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1223 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1579 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2587 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1579)
         {
            return;
         }
         ++this.var_1835;
         if(this.var_1835 <= this.var_2587)
         {
            this.var_1223.track("toolbar",param1);
         }
      }
   }
}
