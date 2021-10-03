package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2462:int;
      
      private var var_1910:String;
      
      private var var_2523:String;
      
      private var var_2524:Boolean;
      
      private var var_2521:Boolean;
      
      private var var_2522:int;
      
      private var var_2526:String;
      
      private var var_2525:String;
      
      private var var_1651:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2462 = param1.readInteger();
         this.var_1910 = param1.readString();
         this.var_2523 = param1.readString();
         this.var_2524 = param1.readBoolean();
         this.var_2521 = param1.readBoolean();
         param1.readString();
         this.var_2522 = param1.readInteger();
         this.var_2526 = param1.readString();
         this.var_2525 = param1.readString();
         this.var_1651 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2462;
      }
      
      public function get avatarName() : String
      {
         return this.var_1910;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2523;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2524;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2521;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2522;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2526;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2525;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
   }
}
