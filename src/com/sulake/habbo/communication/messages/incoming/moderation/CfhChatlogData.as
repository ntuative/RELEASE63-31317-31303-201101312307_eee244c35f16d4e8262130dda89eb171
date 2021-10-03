package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1612:int;
      
      private var var_2211:int;
      
      private var var_1419:int;
      
      private var var_2134:int;
      
      private var var_106:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1612 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this.var_1419 = param1.readInteger();
         this.var_2134 = param1.readInteger();
         this.var_106 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1612);
      }
      
      public function get callId() : int
      {
         return this.var_1612;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2211;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1419;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2134;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_106;
      }
   }
}
