package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1790:String;
      
      private var var_1706:int;
      
      private var var_2442:Boolean;
      
      private var var_2441:Boolean;
      
      private var var_2440:int;
      
      private var var_2444:int;
      
      private var var_396:ICatalogPage;
      
      private var var_2443:int;
      
      private var var_2445:int;
      
      private var var_2446:int;
      
      private var var_2620:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1790 = param2;
         this.var_1706 = param3;
         this.var_2442 = param4;
         this.var_2441 = param5;
         this.var_2440 = param6;
         this.var_2444 = param7;
         this.var_2443 = param8;
         this.var_2445 = param9;
         this.var_2446 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1790;
      }
      
      public function get price() : int
      {
         return this.var_1706;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2442;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2441;
      }
      
      public function get periods() : int
      {
         return this.var_2440;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2444;
      }
      
      public function get year() : int
      {
         return this.var_2443;
      }
      
      public function get month() : int
      {
         return this.var_2445;
      }
      
      public function get day() : int
      {
         return this.var_2446;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_181;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1706;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_396;
      }
      
      public function get priceType() : String
      {
         return Offer.const_719;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1790;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_396 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2620;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2620 = param1;
      }
   }
}
