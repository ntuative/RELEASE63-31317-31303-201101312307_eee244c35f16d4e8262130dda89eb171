package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_962:int = 1;
      
      public static const const_617:int = 2;
      
      public static const const_748:int = 3;
      
      public static const const_1576:int = 4;
       
      
      private var _index:int;
      
      private var var_2644:String;
      
      private var var_2641:String;
      
      private var var_2643:Boolean;
      
      private var var_2642:String;
      
      private var var_885:String;
      
      private var var_2640:int;
      
      private var var_2379:int;
      
      private var _type:int;
      
      private var var_2007:String;
      
      private var var_952:GuestRoomData;
      
      private var var_951:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2644 = param1.readString();
         this.var_2641 = param1.readString();
         this.var_2643 = param1.readInteger() == 1;
         this.var_2642 = param1.readString();
         this.var_885 = param1.readString();
         this.var_2640 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_962)
         {
            this.var_2007 = param1.readString();
         }
         else if(this._type == const_748)
         {
            this.var_951 = new PublicRoomData(param1);
         }
         else if(this._type == const_617)
         {
            this.var_952 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_952 != null)
         {
            this.var_952.dispose();
            this.var_952 = null;
         }
         if(this.var_951 != null)
         {
            this.var_951.dispose();
            this.var_951 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2644;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2641;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2643;
      }
      
      public function get picText() : String
      {
         return this.var_2642;
      }
      
      public function get picRef() : String
      {
         return this.var_885;
      }
      
      public function get folderId() : int
      {
         return this.var_2640;
      }
      
      public function get tag() : String
      {
         return this.var_2007;
      }
      
      public function get userCount() : int
      {
         return this.var_2379;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_952;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_951;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_962)
         {
            return 0;
         }
         if(this.type == const_617)
         {
            return this.var_952.maxUserCount;
         }
         if(this.type == const_748)
         {
            return this.var_951.maxUsers;
         }
         return 0;
      }
   }
}
