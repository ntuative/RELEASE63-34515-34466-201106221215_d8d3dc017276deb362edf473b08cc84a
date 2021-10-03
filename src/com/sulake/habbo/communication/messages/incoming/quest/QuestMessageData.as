package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2133:String;
      
      private var var_2131:int;
      
      private var var_2130:int;
      
      private var var_1893:int;
      
      private var _id:int;
      
      private var var_2132:Boolean;
      
      private var _type:String;
      
      private var var_2933:String;
      
      private var var_2931:int;
      
      private var var_2129:String;
      
      private var var_2934:int;
      
      private var var_2932:int;
      
      private var var_1665:int;
      
      private var var_2134:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2134 = new Date();
         super();
         this.var_2133 = param1.readString();
         this.var_2131 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2132 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2933 = param1.readString();
         this.var_2931 = param1.readInteger();
         this.var_2129 = param1.readString();
         this.var_2934 = param1.readInteger();
         this.var_2932 = param1.readInteger();
         this.var_1665 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2133;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2129;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2131;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2130;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1893;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2132;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2933;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2931;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2934;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2932;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1665 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2134.getTime();
         return int(Math.max(0,this.var_1665 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2133;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2129;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2132 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2131 >= this.var_2130;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2134;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1665 = param1;
      }
   }
}
