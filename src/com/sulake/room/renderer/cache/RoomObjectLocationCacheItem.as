package com.sulake.room.renderer.cache
{
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var _roomObjectVariableAccurateZ:String = "";
      
      private var var_1873:int = -1;
      
      private var var_2630:int = -1;
      
      private var var_1293:Vector3d;
      
      private var var_398:Vector3d = null;
      
      private var var_2629:Boolean = false;
      
      public function RoomObjectLocationCacheItem(param1:String)
      {
         this.var_1293 = new Vector3d();
         super();
         this._roomObjectVariableAccurateZ = param1;
         this.var_398 = new Vector3d();
      }
      
      public function get locationChanged() : Boolean
      {
         return this.var_2629;
      }
      
      public function dispose() : void
      {
         this.var_398 = null;
      }
      
      public function getScreenLocation(param1:IRoomObject, param2:IRoomGeometry) : IVector3d
      {
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1 == null || param2 == null)
         {
            return null;
         }
         var _loc3_:Boolean = false;
         var _loc4_:IVector3d = param1.getLocation();
         if(param2.updateId != this.var_1873 || param1.getUpdateID() != this.var_2630)
         {
            this.var_2630 = param1.getUpdateID();
            if(param2.updateId != this.var_1873 || _loc4_.x != this.var_1293.x || _loc4_.y != this.var_1293.y || _loc4_.z != this.var_1293.z)
            {
               this.var_1873 = param2.updateId;
               this.var_1293.assign(_loc4_);
               _loc3_ = true;
            }
         }
         this.var_2629 = _loc3_;
         if(_loc3_)
         {
            _loc5_ = param2.getScreenPosition(_loc4_);
            if(_loc5_ == null)
            {
               return null;
            }
            _loc6_ = param1.getModel().getNumber(this._roomObjectVariableAccurateZ);
            if(isNaN(_loc6_) || _loc6_ == 0)
            {
               _loc7_ = new Vector3d(Math.round(_loc4_.x),Math.round(_loc4_.y),_loc4_.z);
               if(_loc7_.x != _loc4_.x || _loc7_.y != _loc4_.y)
               {
                  _loc8_ = param2.getScreenPosition(_loc7_);
                  this.var_398.assign(_loc5_);
                  if(_loc8_ != null)
                  {
                     this.var_398.z = _loc8_.z;
                  }
               }
               else
               {
                  this.var_398.assign(_loc5_);
               }
            }
            else
            {
               this.var_398.assign(_loc5_);
            }
            this.var_398.x = Math.round(this.var_398.x);
            this.var_398.y = Math.round(this.var_398.y);
         }
         return this.var_398;
      }
   }
}
