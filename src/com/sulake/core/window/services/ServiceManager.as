package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2725:uint;
      
      private var var_133:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_985:IMouseDraggingService;
      
      private var var_984:IMouseScalingService;
      
      private var var_986:IMouseListenerService;
      
      private var var_988:IFocusManagerService;
      
      private var var_987:IToolTipAgentService;
      
      private var var_983:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2725 = 0;
         this.var_133 = param2;
         this._windowContext = param1;
         this.var_985 = new WindowMouseDragger(param2);
         this.var_984 = new WindowMouseScaler(param2);
         this.var_986 = new WindowMouseListener(param2);
         this.var_988 = new FocusManager(param2);
         this.var_987 = new WindowToolTipAgent(param2);
         this.var_983 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_985 != null)
         {
            this.var_985.dispose();
            this.var_985 = null;
         }
         if(this.var_984 != null)
         {
            this.var_984.dispose();
            this.var_984 = null;
         }
         if(this.var_986 != null)
         {
            this.var_986.dispose();
            this.var_986 = null;
         }
         if(this.var_988 != null)
         {
            this.var_988.dispose();
            this.var_988 = null;
         }
         if(this.var_987 != null)
         {
            this.var_987.dispose();
            this.var_987 = null;
         }
         if(this.var_983 != null)
         {
            this.var_983.dispose();
            this.var_983 = null;
         }
         this.var_133 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_985;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_984;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_986;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_988;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_987;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_983;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
