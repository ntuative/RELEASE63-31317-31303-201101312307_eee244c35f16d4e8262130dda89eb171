package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_536:uint = 0;
      
      public static const const_1480:uint = 1;
      
      public static const const_1846:int = 0;
      
      public static const const_1837:int = 1;
      
      public static const const_1729:int = 2;
      
      public static const const_1797:int = 3;
      
      public static const const_1486:int = 4;
      
      public static const const_380:int = 5;
      
      public static var var_1462:IMouseCursor;
      
      public static var var_364:IEventQueue;
      
      private static var var_542:IEventProcessor;
      
      private static var var_1564:uint = const_536;
      
      private static var stage:Stage;
      
      private static var var_144:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2116:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_180:DisplayObjectContainer;
      
      protected var var_2763:Boolean = true;
      
      protected var var_1204:Error;
      
      protected var var_1951:int = -1;
      
      protected var var_1205:IInternalWindowServices;
      
      protected var var_1467:IWindowParser;
      
      protected var var_2707:IWindowFactory;
      
      protected var var_132:IDesktopWindow;
      
      protected var var_1466:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_520:Boolean = false;
      
      private var var_2115:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_144 = param2;
         this._localization = param4;
         this.var_180 = param5;
         this.var_1205 = new ServiceManager(this,param5);
         this.var_2707 = param3;
         this.var_1467 = new WindowParser(this);
         this.var_2116 = param7;
         if(!stage)
         {
            if(this.var_180 is Stage)
            {
               stage = this.var_180 as Stage;
            }
            else if(this.var_180.stage)
            {
               stage = this.var_180.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_132 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_180.addChild(this.var_132.getDisplayObject());
         this.var_180.doubleClickEnabled = true;
         this.var_180.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_144,this.var_132,this.var_132,null,this.var_2116);
         inputMode = const_536;
         this.var_1466 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1564;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_364)
         {
            if(var_364 is IDisposable)
            {
               IDisposable(var_364).dispose();
            }
         }
         if(var_542)
         {
            if(var_542 is IDisposable)
            {
               IDisposable(var_542).dispose();
            }
         }
         switch(value)
         {
            case const_536:
               var_364 = new MouseEventQueue(stage);
               var_542 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1480:
               var_364 = new TabletEventQueue(stage);
               var_542 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_536;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_180.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_180.removeChild(IGraphicContextHost(this.var_132).getGraphicContext(true) as DisplayObject);
            this.var_132.destroy();
            this.var_132 = null;
            this.var_1466.destroy();
            this.var_1466 = null;
            if(this.var_1205 is IDisposable)
            {
               IDisposable(this.var_1205).dispose();
            }
            this.var_1205 = null;
            this.var_1467.dispose();
            this.var_1467 = null;
            var_144 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1204;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1951;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1204 = param2;
         this.var_1951 = param1;
         if(this.var_2763)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1204 = null;
         this.var_1951 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1205;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1467;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2707;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_132;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1462 == null)
         {
            var_1462 = new MouseCursorControl(this.var_180);
         }
         return var_1462;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_132.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1486,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1466;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_132,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_132)
         {
            this.var_132 = null;
         }
         if(param1.state != WindowState.const_470)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_144.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_520 = true;
         if(this.var_1204)
         {
            throw this.var_1204;
         }
         var_542.process(this._eventProcessorState,var_364);
         this.var_520 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2115 = true;
         var_144.update(param1);
         this.var_2115 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_132 != null && !this.var_132.disposed)
         {
            if(this.var_180 is Stage)
            {
               this.var_132.width = Stage(this.var_180).stageWidth;
               this.var_132.height = Stage(this.var_180).stageHeight;
            }
            else
            {
               this.var_132.width = this.var_180.width;
               this.var_132.height = this.var_180.height;
            }
         }
      }
   }
}
