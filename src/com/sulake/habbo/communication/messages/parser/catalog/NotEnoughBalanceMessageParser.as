package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1542:int = 0;
      
      private var var_1543:int = 0;
      
      private var var_1606:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1542;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1543;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1606;
      }
      
      public function flush() : Boolean
      {
         this.var_1542 = 0;
         this.var_1543 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1542 = param1.readInteger();
         this.var_1543 = param1.readInteger();
         this.var_1606 = param1.readInteger();
         return true;
      }
   }
}
