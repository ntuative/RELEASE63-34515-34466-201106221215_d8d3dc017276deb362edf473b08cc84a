package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_337:int = 1;
      
      public static const const_231:int = 2;
      
      public static const const_244:int = 3;
      
      public static const const_376:int = 4;
      
      public static const const_217:int = 5;
      
      public static const const_410:int = 1;
      
      public static const const_853:int = 2;
      
      public static const const_887:int = 3;
      
      public static const const_844:int = 4;
      
      public static const const_254:int = 5;
      
      public static const const_821:int = 6;
      
      public static const const_948:int = 7;
      
      public static const const_300:int = 8;
      
      public static const const_451:int = 9;
      
      public static const const_2221:int = 10;
      
      public static const const_869:int = 11;
      
      public static const const_631:int = 12;
       
      
      private var var_453:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_453 = new Array();
         this.var_453.push(new Tab(this._navigator,const_337,const_631,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_453.push(new Tab(this._navigator,const_231,const_410,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_453.push(new Tab(this._navigator,const_376,const_869,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1281));
         this.var_453.push(new Tab(this._navigator,const_244,const_254,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_453.push(new Tab(this._navigator,const_217,const_300,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1013));
         this.setSelectedTab(const_337);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_376;
      }
      
      public function get tabs() : Array
      {
         return this.var_453;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_453)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_453)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_453)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
