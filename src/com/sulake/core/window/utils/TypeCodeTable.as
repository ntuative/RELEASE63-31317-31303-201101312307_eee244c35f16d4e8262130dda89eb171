package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_717;
         param1["bitmap"] = const_599;
         param1["border"] = const_856;
         param1["border_notify"] = const_1588;
         param1["button"] = const_464;
         param1["button_thick"] = const_762;
         param1["button_icon"] = const_1534;
         param1["button_group_left"] = const_779;
         param1["button_group_center"] = const_700;
         param1["button_group_right"] = const_776;
         param1["canvas"] = const_733;
         param1["checkbox"] = const_814;
         param1["closebutton"] = const_1012;
         param1["container"] = const_388;
         param1["container_button"] = const_627;
         param1["display_object_wrapper"] = const_795;
         param1["dropmenu"] = const_521;
         param1["dropmenu_item"] = const_520;
         param1["frame"] = const_355;
         param1["frame_notify"] = const_1447;
         param1["header"] = const_784;
         param1["html"] = const_972;
         param1["icon"] = const_1004;
         param1["itemgrid"] = const_1130;
         param1["itemgrid_horizontal"] = const_565;
         param1["itemgrid_vertical"] = const_661;
         param1["itemlist"] = const_979;
         param1["itemlist_horizontal"] = const_354;
         param1["itemlist_vertical"] = const_340;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1549;
         param1["menu"] = const_1502;
         param1["menu_item"] = const_1464;
         param1["submenu"] = const_1175;
         param1["minimizebox"] = const_1339;
         param1["notify"] = const_1356;
         param1["null"] = const_781;
         param1["password"] = const_615;
         param1["radiobutton"] = const_674;
         param1["region"] = const_861;
         param1["restorebox"] = const_1418;
         param1["scaler"] = const_682;
         param1["scaler_horizontal"] = const_1628;
         param1["scaler_vertical"] = const_1560;
         param1["scrollbar_horizontal"] = const_498;
         param1["scrollbar_vertical"] = const_771;
         param1["scrollbar_slider_button_up"] = const_956;
         param1["scrollbar_slider_button_down"] = const_1083;
         param1["scrollbar_slider_button_left"] = const_954;
         param1["scrollbar_slider_button_right"] = const_1148;
         param1["scrollbar_slider_bar_horizontal"] = const_1016;
         param1["scrollbar_slider_bar_vertical"] = const_1193;
         param1["scrollbar_slider_track_horizontal"] = const_1124;
         param1["scrollbar_slider_track_vertical"] = const_1109;
         param1["scrollable_itemlist"] = const_1366;
         param1["scrollable_itemlist_vertical"] = const_561;
         param1["scrollable_itemlist_horizontal"] = const_1048;
         param1["selector"] = const_712;
         param1["selector_list"] = const_604;
         param1["submenu"] = const_1175;
         param1["tab_button"] = const_503;
         param1["tab_container_button"] = const_1030;
         param1["tab_context"] = const_363;
         param1["tab_content"] = const_1191;
         param1["tab_selector"] = const_864;
         param1["text"] = const_426;
         param1["input"] = const_724;
         param1["toolbar"] = const_1338;
         param1["tooltip"] = const_344;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
