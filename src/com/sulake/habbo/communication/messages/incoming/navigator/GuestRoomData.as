package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_362:int;
      
      private var var_699:Boolean;
      
      private var var_928:String;
      
      private var _ownerName:String;
      
      private var var_2100:int;
      
      private var var_2379:int;
      
      private var var_2633:int;
      
      private var var_1549:String;
      
      private var var_2631:int;
      
      private var var_2466:Boolean;
      
      private var var_656:int;
      
      private var var_1398:int;
      
      private var var_2634:String;
      
      private var var_792:Array;
      
      private var var_2632:RoomThumbnailData;
      
      private var var_2097:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_792 = new Array();
         super();
         this.var_362 = param1.readInteger();
         this.var_699 = param1.readBoolean();
         this.var_928 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2100 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         this.var_2633 = param1.readInteger();
         this.var_1549 = param1.readString();
         this.var_2631 = param1.readInteger();
         this.var_2466 = param1.readBoolean();
         this.var_656 = param1.readInteger();
         this.var_1398 = param1.readInteger();
         this.var_2634 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_792.push(_loc4_);
            _loc3_++;
         }
         this.var_2632 = new RoomThumbnailData(param1);
         this.var_2097 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_792 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_362;
      }
      
      public function get event() : Boolean
      {
         return this.var_699;
      }
      
      public function get roomName() : String
      {
         return this.var_928;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2100;
      }
      
      public function get userCount() : int
      {
         return this.var_2379;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2633;
      }
      
      public function get description() : String
      {
         return this.var_1549;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2631;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2466;
      }
      
      public function get score() : int
      {
         return this.var_656;
      }
      
      public function get categoryId() : int
      {
         return this.var_1398;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2634;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2632;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2097;
      }
   }
}
