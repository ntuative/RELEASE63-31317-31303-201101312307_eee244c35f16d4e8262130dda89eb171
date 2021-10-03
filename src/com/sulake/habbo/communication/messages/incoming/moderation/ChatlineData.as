package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2218:int;
      
      private var var_2221:int;
      
      private var var_2220:int;
      
      private var var_2219:String;
      
      private var var_1672:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2218 = param1.readInteger();
         this.var_2221 = param1.readInteger();
         this.var_2220 = param1.readInteger();
         this.var_2219 = param1.readString();
         this.var_1672 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2218;
      }
      
      public function get minute() : int
      {
         return this.var_2221;
      }
      
      public function get chatterId() : int
      {
         return this.var_2220;
      }
      
      public function get chatterName() : String
      {
         return this.var_2219;
      }
      
      public function get msg() : String
      {
         return this.var_1672;
      }
   }
}
