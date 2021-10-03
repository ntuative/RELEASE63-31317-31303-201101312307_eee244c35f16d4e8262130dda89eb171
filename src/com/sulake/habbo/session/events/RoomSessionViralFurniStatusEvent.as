package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_439:String = "RSVFS_STATUS";
      
      public static const const_510:String = "RSVFS_RECEIVED";
       
      
      private var var_141:String;
      
      private var var_329:int;
      
      private var var_370:int = -1;
      
      private var var_1259:String;
      
      private var var_2071:String;
      
      private var var_2184:Boolean;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_370 = this.status;
         this.var_1259 = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_329;
      }
      
      public function get status() : int
      {
         return this.var_370;
      }
      
      public function get shareId() : String
      {
         return this.var_1259;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2071;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2184;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_329 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_370 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this.var_1259 = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2071 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2184 = param1;
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
