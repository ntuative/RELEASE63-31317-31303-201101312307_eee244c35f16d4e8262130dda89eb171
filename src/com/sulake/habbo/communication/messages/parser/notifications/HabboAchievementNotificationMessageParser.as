package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1326:int;
      
      private var var_1764:int;
      
      private var var_2061:int;
      
      private var var_1660:int;
      
      private var var_1327:int;
      
      private var var_2062:String = "";
      
      private var var_2060:String = "";
      
      private var var_2059:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1326 = param1.readInteger();
         this.var_2062 = param1.readString();
         this.var_1764 = param1.readInteger();
         this.var_2061 = param1.readInteger();
         this.var_1660 = param1.readInteger();
         this.var_1327 = param1.readInteger();
         this.var_2059 = param1.readInteger();
         this.var_2060 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1326;
      }
      
      public function get points() : int
      {
         return this.var_1764;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2061;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1660;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1327;
      }
      
      public function get badgeID() : String
      {
         return this.var_2062;
      }
      
      public function get achievementID() : int
      {
         return this.var_2059;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2060;
      }
   }
}
