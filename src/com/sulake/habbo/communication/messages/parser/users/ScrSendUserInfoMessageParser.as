package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2128:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1315:int = 3;
       
      
      private var var_944:String;
      
      private var var_2996:int;
      
      private var var_2995:int;
      
      private var var_2998:int;
      
      private var var_2999:int;
      
      private var var_2997:Boolean;
      
      private var var_2422:Boolean;
      
      private var var_2423:int;
      
      private var var_2424:int;
      
      private var var_2994:Boolean;
      
      private var var_3001:int;
      
      private var var_3000:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_944 = param1.readString();
         this.var_2996 = param1.readInteger();
         this.var_2995 = param1.readInteger();
         this.var_2998 = param1.readInteger();
         this.var_2999 = param1.readInteger();
         this.var_2997 = param1.readBoolean();
         this.var_2422 = param1.readBoolean();
         this.var_2423 = param1.readInteger();
         this.var_2424 = param1.readInteger();
         this.var_2994 = param1.readBoolean();
         this.var_3001 = param1.readInteger();
         this.var_3000 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_944;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2996;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2995;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2998;
      }
      
      public function get responseType() : int
      {
         return this.var_2999;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2997;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2422;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2423;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2424;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2994;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_3001;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_3000;
      }
   }
}
