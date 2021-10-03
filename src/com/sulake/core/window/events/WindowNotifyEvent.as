package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1559:String = "WN_CRETAE";
      
      public static const const_1415:String = "WN_CREATED";
      
      public static const const_1153:String = "WN_DESTROY";
      
      public static const const_1041:String = "WN_DESTROYED";
      
      public static const const_984:String = "WN_OPEN";
      
      public static const const_1055:String = "WN_OPENED";
      
      public static const const_1098:String = "WN_CLOSE";
      
      public static const const_1135:String = "WN_CLOSED";
      
      public static const const_1176:String = "WN_FOCUS";
      
      public static const const_1054:String = "WN_FOCUSED";
      
      public static const const_1067:String = "WN_UNFOCUS";
      
      public static const const_1056:String = "WN_UNFOCUSED";
      
      public static const const_990:String = "WN_ACTIVATE";
      
      public static const const_377:String = "WN_ACTVATED";
      
      public static const const_1022:String = "WN_DEACTIVATE";
      
      public static const const_1075:String = "WN_DEACTIVATED";
      
      public static const const_476:String = "WN_SELECT";
      
      public static const const_352:String = "WN_SELECTED";
      
      public static const const_783:String = "WN_UNSELECT";
      
      public static const const_629:String = "WN_UNSELECTED";
      
      public static const const_1194:String = "WN_LOCK";
      
      public static const const_1026:String = "WN_LOCKED";
      
      public static const const_1106:String = "WN_UNLOCK";
      
      public static const const_1040:String = "WN_UNLOCKED";
      
      public static const const_1107:String = "WN_ENABLE";
      
      public static const const_832:String = "WN_ENABLED";
      
      public static const const_975:String = "WN_DISABLE";
      
      public static const const_837:String = "WN_DISABLED";
      
      public static const const_821:String = "WN_RESIZE";
      
      public static const const_192:String = "WN_RESIZED";
      
      public static const const_957:String = "WN_RELOCATE";
      
      public static const const_450:String = "WN_RELOCATED";
      
      public static const const_1117:String = "WN_MINIMIZE";
      
      public static const const_1051:String = "WN_MINIMIZED";
      
      public static const const_968:String = "WN_MAXIMIZE";
      
      public static const const_1132:String = "WN_MAXIMIZED";
      
      public static const const_1192:String = "WN_RESTORE";
      
      public static const const_1085:String = "WN_RESTORED";
      
      public static const const_1750:String = "WN_ARRANGE";
      
      public static const const_1904:String = "WN_ARRANGED";
      
      public static const const_1870:String = "WN_UPDATE";
      
      public static const const_1821:String = "WN_UPDATED";
      
      public static const const_398:String = "WN_CHILD_ADDED";
      
      public static const const_665:String = "WN_CHILD_REMOVED";
      
      public static const const_289:String = "WN_CHILD_RESIZED";
      
      public static const const_304:String = "WN_CHILD_RELOCATED";
      
      public static const const_228:String = "WN_CHILD_ACTIVATED";
      
      public static const const_452:String = "WN_PARENT_ADDED";
      
      public static const const_1071:String = "WN_PARENT_REMOVED";
      
      public static const const_569:String = "WN_PARENT_RESIZED";
      
      public static const const_1139:String = "WN_PARENT_RELOCATED";
      
      public static const const_602:String = "WN_PARENT_ACTIVATED";
      
      public static const const_539:String = "WN_STATE_UPDATED";
      
      public static const const_421:String = "WN_STYLE_UPDATED";
      
      public static const const_490:String = "WN_PARAM_UPDATED";
      
      public static const const_1926:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1970,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
