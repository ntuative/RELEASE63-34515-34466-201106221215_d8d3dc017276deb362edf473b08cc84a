package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_533:QuestsList;
      
      private var var_450:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_370:QuestTracker;
      
      private var var_622:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_370 = new QuestTracker(this._questEngine);
         this.var_533 = new QuestsList(this._questEngine);
         this.var_450 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_622 = new NextQuestTimer(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_533.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_533.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_370.onQuest(param1);
         this.var_450.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_622.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_370.onQuestCompleted(param1);
         this.var_450.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_370.onQuestCancelled();
         this.var_450.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_622.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_370.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_533.onRoomExit();
         this.var_370.onRoomExit();
         this.var_450.onRoomExit();
         this.var_622.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_370.update(param1);
         this.var_622.update(param1);
         this.var_533.update(param1);
         this.var_450.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_533)
         {
            this.var_533.dispose();
            this.var_533 = null;
         }
         if(this.var_370)
         {
            this.var_370.dispose();
            this.var_370 = null;
         }
         if(this.var_450)
         {
            this.var_450.dispose();
            this.var_450 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_622)
         {
            this.var_622.dispose();
            this.var_622 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_533;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_450;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_370;
      }
   }
}
