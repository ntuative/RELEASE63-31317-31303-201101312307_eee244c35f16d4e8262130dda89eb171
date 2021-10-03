package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1790:String;
      
      private var var_1706:int;
      
      private var var_2442:Boolean;
      
      private var var_2441:Boolean;
      
      private var var_2440:int;
      
      private var var_2444:int;
      
      private var var_2443:int;
      
      private var var_2445:int;
      
      private var var_2446:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1790 = param1.readString();
         this.var_1706 = param1.readInteger();
         this.var_2442 = param1.readBoolean();
         this.var_2441 = param1.readBoolean();
         this.var_2440 = param1.readInteger();
         this.var_2444 = param1.readInteger();
         this.var_2443 = param1.readInteger();
         this.var_2445 = param1.readInteger();
         this.var_2446 = param1.readInteger();
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
   }
}
