package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1746:int;
      
      private var var_2638:String;
      
      private var var_1326:int;
      
      private var var_627:String;
      
      private var var_1252:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1746 = param1.readInteger();
         this.var_2638 = param1.readString();
         this.var_1326 = param1.readInteger();
         this.var_627 = param1.readString();
         this.var_1252 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1746;
      }
      
      public function get petName() : String
      {
         return this.var_2638;
      }
      
      public function get level() : int
      {
         return this.var_1326;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get petType() : int
      {
         return this.var_1252;
      }
   }
}
