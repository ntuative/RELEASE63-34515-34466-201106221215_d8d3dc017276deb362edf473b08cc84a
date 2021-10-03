package com.sulake.habbo.toolbar.extensions.purse.indicators
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.catalog.purse.PurseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class PixelsIndicator extends IndicatorBase
   {
      
      private static const const_1495:uint = 4285767869;
      
      private static const const_1496:uint = 4283664040;
      
      private static const const_475:Array = ["icon_pixel_0_png","icon_pixel_1_png","icon_pixel_2_png","icon_pixel_3_png"];
       
      
      private var var_1837:int = -1;
      
      private var _catalog:IHabboCatalog;
      
      public function PixelsIndicator(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboCatalog)
      {
         super(param1,param2);
         this._catalog = param3;
         this.bgColorLight = const_1495;
         this.bgColorDark = const_1496;
         this.textElementName = "pixels";
         this.textElementShadowName = "pixels_shadow";
         this.iconAnimationSequence = const_475.concat(const_475);
         this.iconAnimationDelay = 50;
         createWindow("purse_indicator_pixels_xml",const_475[0]);
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(PurseEvent.const_249,this.onPixelBalance);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(PurseEvent.const_249,this.onPixelBalance);
      }
      
      override protected function onContainerClick(param1:WindowMouseEvent) : void
      {
         this._catalog.openCatalogPage(CatalogPageName.const_1887);
      }
      
      private function onPixelBalance(param1:PurseEvent) : void
      {
         var _loc2_:String = param1.balance.toString();
         switch(_loc2_.length)
         {
            case 1:
               _loc2_ = "      " + _loc2_;
               break;
            case 2:
               _loc2_ = "    " + _loc2_;
               break;
            case 3:
               _loc2_ = "  " + _loc2_;
         }
         this.setText(_loc2_);
         if(this.var_1837 != -1)
         {
            if(this.var_1837 > param1.balance)
            {
               animateIcon(IndicatorBase.ANIM_DIRECTION_FORWARD);
            }
            else
            {
               animateIcon(IndicatorBase.ANIM_DIRECTION_BACKWARD);
            }
         }
         this.var_1837 = param1.balance;
      }
   }
}
