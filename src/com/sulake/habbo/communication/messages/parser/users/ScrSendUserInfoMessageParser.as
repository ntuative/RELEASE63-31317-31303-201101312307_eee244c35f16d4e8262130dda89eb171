package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1880:int = 1;
      
      public static const const_1413:int = 2;
       
      
      private var var_857:String;
      
      private var var_2074:int;
      
      private var var_2083:int;
      
      private var var_2078:int;
      
      private var var_2073:int;
      
      private var var_2082:Boolean;
      
      private var var_2076:Boolean;
      
      private var var_2080:int;
      
      private var var_2079:int;
      
      private var var_2075:Boolean;
      
      private var var_2081:int;
      
      private var var_2077:int;
      
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
         this.var_857 = param1.readString();
         this.var_2074 = param1.readInteger();
         this.var_2083 = param1.readInteger();
         this.var_2078 = param1.readInteger();
         this.var_2073 = param1.readInteger();
         this.var_2082 = param1.readBoolean();
         this.var_2076 = param1.readBoolean();
         this.var_2080 = param1.readInteger();
         this.var_2079 = param1.readInteger();
         this.var_2075 = param1.readBoolean();
         this.var_2081 = param1.readInteger();
         this.var_2077 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_857;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2074;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2083;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2078;
      }
      
      public function get responseType() : int
      {
         return this.var_2073;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2082;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2076;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2080;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2079;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2075;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2081;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2077;
      }
   }
}
