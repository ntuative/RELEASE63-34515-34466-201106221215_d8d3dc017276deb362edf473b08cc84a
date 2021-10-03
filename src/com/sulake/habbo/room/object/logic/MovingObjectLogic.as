package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_990:int = 500;
      
      private static var var_611:Vector3d = new Vector3d();
       
      
      private var var_432:Vector3d;
      
      private var var_103:Vector3d;
      
      private var var_939:Number = 0.0;
      
      private var _lastUpdateTime:int = 0;
      
      private var var_2296:int;
      
      private var var_940:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_432 = new Vector3d();
         this.var_103 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this._lastUpdateTime;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_103 = null;
         this.var_432 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_103.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_940 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_103.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2296 = this._lastUpdateTime;
               this.var_432.assign(_loc3_);
               this.var_432.sub(this.var_103);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_939 != _loc2_.z)
               {
                  this.var_939 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_832,this.var_939);
               }
            }
            else if(this.var_939 != 0)
            {
               this.var_939 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_832,this.var_939);
            }
         }
         if(this.var_432.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2296;
            if(_loc4_ == this.var_940 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_940)
            {
               _loc4_ = this.var_940;
            }
            if(this.var_432.length > 0)
            {
               var_611.assign(this.var_432);
               var_611.mul(_loc4_ / Number(this.var_940));
               var_611.add(this.var_103);
            }
            else
            {
               var_611.assign(this.var_103);
            }
            if(_loc2_ != null)
            {
               var_611.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_611);
            }
            if(_loc4_ == this.var_940)
            {
               this.var_432.x = 0;
               this.var_432.y = 0;
               this.var_432.z = 0;
            }
         }
         this._lastUpdateTime = param1;
      }
   }
}
