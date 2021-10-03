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
         param1["WindowStyle"] = const_181;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1175;
         param1["embedded_controller"] = const_1343;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_801;
         param1["mouse_dragging_target"] = const_246;
         param1["mouse_dragging_trigger"] = const_458;
         param1["mouse_scaling_target"] = const_358;
         param1["mouse_scaling_trigger"] = const_514;
         param1["horizontal_mouse_scaling_trigger"] = const_280;
         param1["vertical_mouse_scaling_trigger"] = const_297;
         param1["observe_parent_input_events"] = const_1351;
         param1["optimize_region_to_layout_size"] = const_651;
         param1["parent_window"] = const_1166;
         param1["relative_horizontal_scale_center"] = const_220;
         param1["relative_horizontal_scale_fixed"] = const_156;
         param1["relative_horizontal_scale_move"] = const_441;
         param1["relative_horizontal_scale_strech"] = const_408;
         param1["relative_scale_center"] = const_1177;
         param1["relative_scale_fixed"] = const_949;
         param1["relative_scale_move"] = const_1277;
         param1["relative_scale_strech"] = const_1294;
         param1["relative_vertical_scale_center"] = const_228;
         param1["relative_vertical_scale_fixed"] = const_172;
         param1["relative_vertical_scale_move"] = const_263;
         param1["relative_vertical_scale_strech"] = const_325;
         param1["on_resize_align_left"] = const_817;
         param1["on_resize_align_right"] = const_639;
         param1["on_resize_align_center"] = const_590;
         param1["on_resize_align_top"] = const_761;
         param1["on_resize_align_bottom"] = const_659;
         param1["on_resize_align_middle"] = const_518;
         param1["on_accommodate_align_left"] = const_1180;
         param1["on_accommodate_align_right"] = const_546;
         param1["on_accommodate_align_center"] = const_928;
         param1["on_accommodate_align_top"] = const_1211;
         param1["on_accommodate_align_bottom"] = const_623;
         param1["on_accommodate_align_middle"] = const_909;
         param1["route_input_events_to_parent"] = const_536;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1353;
         param1["scalable_with_mouse"] = const_1344;
         param1["reflect_horizontal_resize_to_parent"] = const_489;
         param1["reflect_vertical_resize_to_parent"] = const_541;
         param1["reflect_resize_to_parent"] = const_357;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1356;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
