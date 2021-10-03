package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.Util;
   
   public class FriendRequests
   {
       
      
      private var var_487:IFriendRequestsDeps;
      
      private var _requests:Array;
      
      private var var_2063:int;
      
      private var var_2844:int;
      
      private var var_2843:int;
      
      public function FriendRequests(param1:IFriendRequestsDeps, param2:int, param3:int, param4:int)
      {
         this._requests = new Array();
         super();
         this.var_487 = param1;
         this.var_2063 = param2;
         this.var_2844 = param3;
         this.var_2843 = param4;
      }
      
      public function clearAndUpdateView(param1:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this._requests)
         {
            if(!param1 || _loc3_.state != FriendRequest.const_193)
            {
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc2_)
         {
            Util.remove(this._requests,_loc4_);
            if(this.var_487.view != null)
            {
               this.var_487.view.removeRequest(_loc4_);
            }
            _loc4_.dispose();
         }
         this.refreshShading();
      }
      
      public function acceptFailed(param1:String) : void
      {
         var _loc2_:FriendRequest = this.getRequestByRequesterName(param1);
         if(_loc2_ == null)
         {
            Logger.log("No friedrequest found " + param1 + " when error received");
            return;
         }
         _loc2_.state = FriendRequest.const_1347;
         this.var_487.view.refreshRequestEntry(_loc2_);
      }
      
      public function addRequest(param1:FriendRequest) : void
      {
         this._requests.push(param1);
      }
      
      public function addRequestAndUpdateView(param1:FriendRequest) : void
      {
         this._requests.push(param1);
         this.var_487.view.addRequest(param1);
      }
      
      public function getRequest(param1:int) : FriendRequest
      {
         var _loc2_:* = null;
         for each(_loc2_ in this._requests)
         {
            if(_loc2_.requestId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getRequestByRequesterName(param1:String) : FriendRequest
      {
         var _loc2_:* = null;
         for each(_loc2_ in this._requests)
         {
            if(_loc2_.requesterName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function refreshShading() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = true;
         for each(_loc2_ in this._requests)
         {
            _loc1_ = !_loc1_;
            this.var_487.view.refreshShading(_loc2_,_loc1_);
         }
      }
      
      public function getCountOfOpenRequests() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.requests)
         {
            if(_loc2_.state == FriendRequest.const_193)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function get requests() : Array
      {
         return this._requests;
      }
      
      public function get limit() : int
      {
         return this.var_2063;
      }
      
      public function get clubLimit() : int
      {
         return this.var_2844;
      }
      
      public function get vipLimit() : int
      {
         return this.var_2843;
      }
      
      public function set limit(param1:int) : void
      {
         this.var_2063 = param1;
      }
   }
}
