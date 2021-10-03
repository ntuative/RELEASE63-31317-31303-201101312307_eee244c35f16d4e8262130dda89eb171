package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2256:int;
      
      private var var_2253:int;
      
      private var var_2254:int;
      
      private var _dayOffsets:Array;
      
      private var var_1817:Array;
      
      private var var_1818:Array;
      
      private var var_2252:int;
      
      private var var_2255:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2256 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2253 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2254 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1817 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1818 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2252 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2255 = param1;
      }
   }
}
