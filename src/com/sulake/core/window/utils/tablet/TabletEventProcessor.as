package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2781:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_132 = param1.desktop;
         var_79 = param1.var_1201 as WindowController;
         _lastClickTarget = param1.var_1199 as WindowController;
         var_144 = param1.renderer;
         var_784 = param1.var_1200;
         param2.begin();
         param2.end();
         param1.desktop = var_132;
         param1.var_1201 = var_79;
         param1.var_1199 = _lastClickTarget;
         param1.renderer = var_144;
         param1.var_1200 = var_784;
      }
   }
}
