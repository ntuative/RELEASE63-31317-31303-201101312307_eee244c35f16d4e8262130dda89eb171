package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1506:String = "WE_CREATE";
      
      public static const const_1373:String = "WE_CREATED";
      
      public static const const_1557:String = "WE_DESTROY";
      
      public static const const_278:String = "WE_DESTROYED";
      
      public static const const_1455:String = "WE_OPEN";
      
      public static const const_1624:String = "WE_OPENED";
      
      public static const const_1530:String = "WE_CLOSE";
      
      public static const const_1562:String = "WE_CLOSED";
      
      public static const const_1630:String = "WE_FOCUS";
      
      public static const const_172:String = "WE_FOCUSED";
      
      public static const const_1489:String = "WE_UNFOCUS";
      
      public static const const_1457:String = "WE_UNFOCUSED";
      
      public static const const_1381:String = "WE_ACTIVATE";
      
      public static const const_1358:String = "WE_ACTIVATED";
      
      public static const const_1581:String = "WE_DEACTIVATE";
      
      public static const const_687:String = "WE_DEACTIVATED";
      
      public static const const_512:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_730:String = "WE_UNSELECT";
      
      public static const const_703:String = "WE_UNSELECTED";
      
      public static const const_1734:String = "WE_ATTACH";
      
      public static const const_1775:String = "WE_ATTACHED";
      
      public static const const_1697:String = "WE_DETACH";
      
      public static const const_1886:String = "WE_DETACHED";
      
      public static const const_1395:String = "WE_LOCK";
      
      public static const const_1410:String = "WE_LOCKED";
      
      public static const const_1615:String = "WE_UNLOCK";
      
      public static const const_1448:String = "WE_UNLOCKED";
      
      public static const const_654:String = "WE_ENABLE";
      
      public static const const_273:String = "WE_ENABLED";
      
      public static const const_655:String = "WE_DISABLE";
      
      public static const const_269:String = "WE_DISABLED";
      
      public static const const_1422:String = "WE_RELOCATE";
      
      public static const const_348:String = "WE_RELOCATED";
      
      public static const const_1537:String = "WE_RESIZE";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1590:String = "WE_MINIMIZE";
      
      public static const const_1456:String = "WE_MINIMIZED";
      
      public static const const_1379:String = "WE_MAXIMIZE";
      
      public static const const_1342:String = "WE_MAXIMIZED";
      
      public static const const_1466:String = "WE_RESTORE";
      
      public static const const_1350:String = "WE_RESTORED";
      
      public static const const_1820:String = "WE_ARRANGE";
      
      public static const const_1759:String = "WE_ARRANGED";
      
      public static const const_101:String = "WE_UPDATE";
      
      public static const const_1810:String = "WE_UPDATED";
      
      public static const const_1771:String = "WE_CHILD_RELOCATE";
      
      public static const const_436:String = "WE_CHILD_RELOCATED";
      
      public static const const_1834:String = "WE_CHILD_RESIZE";
      
      public static const const_311:String = "WE_CHILD_RESIZED";
      
      public static const const_1722:String = "WE_CHILD_REMOVE";
      
      public static const const_504:String = "WE_CHILD_REMOVED";
      
      public static const const_1849:String = "WE_PARENT_RELOCATE";
      
      public static const const_1875:String = "WE_PARENT_RELOCATED";
      
      public static const const_1914:String = "WE_PARENT_RESIZE";
      
      public static const const_1385:String = "WE_PARENT_RESIZED";
      
      public static const const_187:String = "WE_OK";
      
      public static const const_845:String = "WE_CANCEL";
      
      public static const const_121:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_523:String = "WE_SCROLL";
      
      public static const const_160:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1970:IWindow;
      
      protected var var_1971:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1970 = param3;
         this.var_1971 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1970;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1971 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1971;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
