package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1443:Boolean;
      
      private var var_2025:int;
      
      private var var_1740:int;
      
      private var var_1739:int;
      
      private var var_2026:int;
      
      private var var_2028:int;
      
      private var var_2029:int;
      
      private var var_2027:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1443;
      }
      
      public function get commission() : int
      {
         return this.var_2025;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1740;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1739;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2028;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2026;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2029;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2027;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1443 = param1.readBoolean();
         this.var_2025 = param1.readInteger();
         this.var_1740 = param1.readInteger();
         this.var_1739 = param1.readInteger();
         this.var_2028 = param1.readInteger();
         this.var_2026 = param1.readInteger();
         this.var_2029 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         return true;
      }
   }
}
