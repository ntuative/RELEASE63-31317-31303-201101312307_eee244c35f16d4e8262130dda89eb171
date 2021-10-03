package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2256:int;
      
      private var var_2253:int;
      
      private var var_2254:int;
      
      private var _dayOffsets:Array;
      
      private var var_1817:Array;
      
      private var var_1818:Array;
      
      private var var_2252:int;
      
      private var var_2255:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2256;
      }
      
      public function get offerCount() : int
      {
         return this.var_2253;
      }
      
      public function get historyLength() : int
      {
         return this.var_2254;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1817;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1818;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2252;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2255;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2256 = param1.readInteger();
         this.var_2253 = param1.readInteger();
         this.var_2254 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1817 = [];
         this.var_1818 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1817.push(param1.readInteger());
            this.var_1818.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2255 = param1.readInteger();
         this.var_2252 = param1.readInteger();
         return true;
      }
   }
}
