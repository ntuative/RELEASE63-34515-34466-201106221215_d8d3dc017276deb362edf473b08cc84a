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
         param1["background"] = const_790;
         param1["badge"] = const_757;
         param1["bitmap"] = const_396;
         param1["border"] = const_758;
         param1["border_notify"] = const_2021;
         param1["bubble"] = const_807;
         param1["bubble_pointer_up"] = const_1362;
         param1["bubble_pointer_right"] = const_1326;
         param1["bubble_pointer_down"] = const_1280;
         param1["bubble_pointer_left"] = const_1360;
         param1["button"] = const_592;
         param1["button_thick"] = const_890;
         param1["button_icon"] = const_1812;
         param1["button_group_left"] = const_750;
         param1["button_group_center"] = const_895;
         param1["button_group_right"] = const_929;
         param1["canvas"] = const_986;
         param1["checkbox"] = const_860;
         param1["closebutton"] = const_1390;
         param1["container"] = const_434;
         param1["container_button"] = const_788;
         param1["display_object_wrapper"] = const_955;
         param1["dropmenu"] = const_572;
         param1["dropmenu_item"] = const_642;
         param1["frame"] = const_442;
         param1["frame_notify"] = const_2006;
         param1["header"] = const_937;
         param1["html"] = const_1312;
         param1["icon"] = const_1174;
         param1["itemgrid"] = const_1218;
         param1["itemgrid_horizontal"] = const_607;
         param1["itemgrid_vertical"] = const_966;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_426;
         param1["itemlist_vertical"] = const_425;
         param1["label"] = const_875;
         param1["maximizebox"] = const_1901;
         param1["menu"] = const_1739;
         param1["menu_item"] = const_1918;
         param1["submenu"] = const_1372;
         param1["minimizebox"] = const_1807;
         param1["notify"] = const_1778;
         param1["WindowStyle"] = const_1025;
         param1["password"] = const_953;
         param1["radiobutton"] = const_744;
         param1["region"] = const_371;
         param1["restorebox"] = const_1792;
         param1["scaler"] = const_625;
         param1["scaler_horizontal"] = const_1979;
         param1["scaler_vertical"] = const_1770;
         param1["scrollbar_horizontal"] = const_616;
         param1["scrollbar_vertical"] = const_1026;
         param1["scrollbar_slider_button_up"] = const_1283;
         param1["scrollbar_slider_button_down"] = const_1231;
         param1["scrollbar_slider_button_left"] = const_1227;
         param1["scrollbar_slider_button_right"] = const_1386;
         param1["scrollbar_slider_bar_horizontal"] = const_1288;
         param1["scrollbar_slider_bar_vertical"] = const_1192;
         param1["scrollbar_slider_track_horizontal"] = const_1311;
         param1["scrollbar_slider_track_vertical"] = const_1210;
         param1["scrollable_itemlist"] = const_1894;
         param1["scrollable_itemlist_vertical"] = const_586;
         param1["scrollable_itemlist_horizontal"] = const_1235;
         param1["selector"] = const_759;
         param1["selector_list"] = const_946;
         param1["submenu"] = const_1372;
         param1["tab_button"] = const_982;
         param1["tab_container_button"] = const_1233;
         param1["tab_context"] = const_427;
         param1["tab_content"] = const_1401;
         param1["tab_selector"] = const_957;
         param1["text"] = const_1003;
         param1["input"] = const_936;
         param1["toolbar"] = const_2001;
         param1["tooltip"] = const_447;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
