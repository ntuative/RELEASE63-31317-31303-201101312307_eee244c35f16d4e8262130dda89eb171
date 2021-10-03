package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_173;
         param1["bound_to_parent_rect"] = const_96;
         param1["child_window"] = const_966;
         param1["embedded_controller"] = const_1114;
         param1["resize_to_accommodate_children"] = const_71;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_690;
         param1["mouse_dragging_target"] = const_247;
         param1["mouse_dragging_trigger"] = const_345;
         param1["mouse_scaling_target"] = const_290;
         param1["mouse_scaling_trigger"] = const_563;
         param1["horizontal_mouse_scaling_trigger"] = const_256;
         param1["vertical_mouse_scaling_trigger"] = const_213;
         param1["observe_parent_input_events"] = const_1029;
         param1["optimize_region_to_layout_size"] = const_551;
         param1["parent_window"] = const_1042;
         param1["relative_horizontal_scale_center"] = const_184;
         param1["relative_horizontal_scale_fixed"] = const_123;
         param1["relative_horizontal_scale_move"] = const_349;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1057;
         param1["relative_scale_fixed"] = const_778;
         param1["relative_scale_move"] = const_983;
         param1["relative_scale_strech"] = const_1061;
         param1["relative_vertical_scale_center"] = const_174;
         param1["relative_vertical_scale_fixed"] = const_147;
         param1["relative_vertical_scale_move"] = const_376;
         param1["relative_vertical_scale_strech"] = const_383;
         param1["on_resize_align_left"] = const_648;
         param1["on_resize_align_right"] = const_416;
         param1["on_resize_align_center"] = const_422;
         param1["on_resize_align_top"] = const_633;
         param1["on_resize_align_bottom"] = const_479;
         param1["on_resize_align_middle"] = const_472;
         param1["on_accommodate_align_left"] = const_1093;
         param1["on_accommodate_align_right"] = const_491;
         param1["on_accommodate_align_center"] = const_722;
         param1["on_accommodate_align_top"] = const_1120;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_797;
         param1["route_input_events_to_parent"] = const_547;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1013;
         param1["scalable_with_mouse"] = const_1000;
         param1["reflect_horizontal_resize_to_parent"] = const_466;
         param1["reflect_vertical_resize_to_parent"] = const_560;
         param1["reflect_resize_to_parent"] = const_314;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
