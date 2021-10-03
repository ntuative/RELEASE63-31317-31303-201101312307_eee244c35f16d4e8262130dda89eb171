package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_627:String;
      
      private var var_858:String;
      
      private var var_2542:String;
      
      private var var_1651:String;
      
      private var var_2538:int;
      
      private var var_2540:String;
      
      private var var_2539:int;
      
      private var var_2541:int;
      
      private var _respectTotal:int;
      
      private var var_1031:int;
      
      private var var_669:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_627 = param1.readString();
         this.var_858 = param1.readString();
         this.var_2542 = param1.readString();
         this.var_1651 = param1.readString();
         this.var_2538 = param1.readInteger();
         this.var_2540 = param1.readString();
         this.var_2539 = param1.readInteger();
         this.var_2541 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1031 = param1.readInteger();
         this.var_669 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get sex() : String
      {
         return this.var_858;
      }
      
      public function get customData() : String
      {
         return this.var_2542;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
      
      public function get tickets() : int
      {
         return this.var_2538;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2540;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2539;
      }
      
      public function get directMail() : int
      {
         return this.var_2541;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1031;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_669;
      }
   }
}
