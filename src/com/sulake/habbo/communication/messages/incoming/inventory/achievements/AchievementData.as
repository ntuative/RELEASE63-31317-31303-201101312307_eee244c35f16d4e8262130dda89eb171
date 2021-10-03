package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1326:int;
      
      private var var_282:String;
      
      private var var_2420:int;
      
      private var var_2061:int;
      
      private var var_1660:int;
      
      private var var_2421:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1326 = param1.readInteger();
         this.var_282 = param1.readString();
         this.var_2420 = param1.readInteger();
         this.var_2061 = param1.readInteger();
         this.var_1660 = param1.readInteger();
         this.var_2421 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_282;
      }
      
      public function get level() : int
      {
         return this.var_1326;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2420;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2061;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1660;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2421;
      }
   }
}
