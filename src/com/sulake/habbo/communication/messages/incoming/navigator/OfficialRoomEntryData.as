package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1261:int = 1;
      
      public static const const_912:int = 2;
      
      public static const const_980:int = 3;
      
      public static const const_1963:int = 4;
       
      
      private var _index:int;
      
      private var var_2759:String;
      
      private var var_2761:String;
      
      private var var_2763:Boolean;
      
      private var var_2762:String;
      
      private var var_1044:String;
      
      private var var_2760:int;
      
      private var var_2345:int;
      
      private var _type:int;
      
      private var var_2401:String;
      
      private var var_1066:GuestRoomData;
      
      private var var_1065:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2759 = param1.readString();
         this.var_2761 = param1.readString();
         this.var_2763 = param1.readInteger() == 1;
         this.var_2762 = param1.readString();
         this.var_1044 = param1.readString();
         this.var_2760 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1261)
         {
            this.var_2401 = param1.readString();
         }
         else if(this._type == const_980)
         {
            this.var_1065 = new PublicRoomData(param1);
         }
         else if(this._type == const_912)
         {
            this.var_1066 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1066 != null)
         {
            this.var_1066.dispose();
            this.var_1066 = null;
         }
         if(this.var_1065 != null)
         {
            this.var_1065.dispose();
            this.var_1065 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2759;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2761;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2763;
      }
      
      public function get picText() : String
      {
         return this.var_2762;
      }
      
      public function get picRef() : String
      {
         return this.var_1044;
      }
      
      public function get folderId() : int
      {
         return this.var_2760;
      }
      
      public function get tag() : String
      {
         return this.var_2401;
      }
      
      public function get userCount() : int
      {
         return this.var_2345;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1066;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1065;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1261)
         {
            return 0;
         }
         if(this.type == const_912)
         {
            return this.var_1066.maxUserCount;
         }
         if(this.type == const_980)
         {
            return this.var_1065.maxUsers;
         }
         return 0;
      }
   }
}
