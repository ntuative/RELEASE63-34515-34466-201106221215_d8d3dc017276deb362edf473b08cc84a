package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1981:Boolean;
      
      private var var_2674:int;
      
      private var var_2672:String;
      
      private var var_375:int;
      
      private var var_2673:int;
      
      private var var_1936:String;
      
      private var var_2675:String;
      
      private var var_2671:String;
      
      private var var_932:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_932 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1981 = false;
            return;
         }
         this.var_1981 = true;
         this.var_2674 = int(_loc2_);
         this.var_2672 = param1.readString();
         this.var_375 = int(param1.readString());
         this.var_2673 = param1.readInteger();
         this.var_1936 = param1.readString();
         this.var_2675 = param1.readString();
         this.var_2671 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_932.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_932 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2674;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2672;
      }
      
      public function get flatId() : int
      {
         return this.var_375;
      }
      
      public function get eventType() : int
      {
         return this.var_2673;
      }
      
      public function get eventName() : String
      {
         return this.var_1936;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2675;
      }
      
      public function get creationTime() : String
      {
         return this.var_2671;
      }
      
      public function get tags() : Array
      {
         return this.var_932;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1981;
      }
   }
}
