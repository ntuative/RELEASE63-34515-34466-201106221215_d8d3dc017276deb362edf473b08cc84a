package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_375:int;
      
      private var var_812:Boolean;
      
      private var var_945:String;
      
      private var _ownerName:String;
      
      private var var_2357:int;
      
      private var var_2345:int;
      
      private var var_2734:int;
      
      private var var_1730:String;
      
      private var var_2731:int;
      
      private var var_2355:Boolean;
      
      private var var_909:int;
      
      private var var_1524:int;
      
      private var var_2730:String;
      
      private var var_932:Array;
      
      private var var_2733:RoomThumbnailData;
      
      private var var_2660:Boolean;
      
      private var var_2732:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_932 = new Array();
         super();
         this.var_375 = param1.readInteger();
         this.var_812 = param1.readBoolean();
         this.var_945 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2357 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         this.var_2734 = param1.readInteger();
         this.var_1730 = param1.readString();
         this.var_2731 = param1.readInteger();
         this.var_2355 = param1.readBoolean();
         this.var_909 = param1.readInteger();
         this.var_1524 = param1.readInteger();
         this.var_2730 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_932.push(_loc4_);
            _loc3_++;
         }
         this.var_2733 = new RoomThumbnailData(param1);
         this.var_2660 = param1.readBoolean();
         this.var_2732 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_375;
      }
      
      public function get event() : Boolean
      {
         return this.var_812;
      }
      
      public function get roomName() : String
      {
         return this.var_945;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2357;
      }
      
      public function get userCount() : int
      {
         return this.var_2345;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2734;
      }
      
      public function get description() : String
      {
         return this.var_1730;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2731;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2355;
      }
      
      public function get score() : int
      {
         return this.var_909;
      }
      
      public function get categoryId() : int
      {
         return this.var_1524;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2730;
      }
      
      public function get tags() : Array
      {
         return this.var_932;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2733;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2660;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2732;
      }
   }
}
