package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1140:Boolean;
      
      private var var_1139:Boolean;
      
      private var var_1392:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1140;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1139;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1392;
      }
      
      public function flush() : Boolean
      {
         this.var_1140 = false;
         this.var_1139 = false;
         this.var_1392 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1140 = param1.readBoolean();
         this.var_1139 = param1.readBoolean();
         this.var_1392 = param1.readBoolean();
         return true;
      }
   }
}
