package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_431:String = "RWTDUE_TEASER_DATA";
      
      public static const const_875:String = "RWTDUE_GIFT_DATA";
      
      public static const const_611:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_329:int;
      
      private var _data:String;
      
      private var var_370:int;
      
      private var var_141:String;
      
      private var var_2071:String;
      
      private var var_2184:Boolean;
      
      private var var_2185:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_329;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_370;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2071;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2184;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2185;
      }
      
      public function set status(param1:int) : void
      {
         this.var_370 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2071 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2184 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2185 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_329 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_141;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_141 = param1;
      }
   }
}
