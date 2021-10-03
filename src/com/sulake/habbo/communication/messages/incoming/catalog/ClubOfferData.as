package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1203:int;
      
      private var var_1944:String;
      
      private var var_2162:int;
      
      private var _upgrade:Boolean;
      
      private var var_2854:Boolean;
      
      private var var_2851:int;
      
      private var var_2850:int;
      
      private var var_2852:int;
      
      private var var_2853:int;
      
      private var var_2849:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1203 = param1.readInteger();
         this.var_1944 = param1.readString();
         this.var_2162 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2854 = param1.readBoolean();
         this.var_2851 = param1.readInteger();
         this.var_2850 = param1.readInteger();
         this.var_2852 = param1.readInteger();
         this.var_2853 = param1.readInteger();
         this.var_2849 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1203;
      }
      
      public function get productCode() : String
      {
         return this.var_1944;
      }
      
      public function get price() : int
      {
         return this.var_2162;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2854;
      }
      
      public function get periods() : int
      {
         return this.var_2851;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2850;
      }
      
      public function get year() : int
      {
         return this.var_2852;
      }
      
      public function get month() : int
      {
         return this.var_2853;
      }
      
      public function get day() : int
      {
         return this.var_2849;
      }
   }
}
