package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1046:String;
      
      private var var_1288:Array;
      
      private var var_1015:Array;
      
      private var var_1695:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1046;
      }
      
      public function get choices() : Array
      {
         return this.var_1288.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1015.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1695;
      }
      
      public function flush() : Boolean
      {
         this.var_1046 = "";
         this.var_1288 = [];
         this.var_1015 = [];
         this.var_1695 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1046 = param1.readString();
         this.var_1288 = [];
         this.var_1015 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1288.push(param1.readString());
            this.var_1015.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1695 = param1.readInteger();
         return true;
      }
   }
}
