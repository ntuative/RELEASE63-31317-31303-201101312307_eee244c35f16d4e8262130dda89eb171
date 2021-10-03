package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_362:int;
      
      private var var_2379:int;
      
      private var var_2378:Boolean;
      
      private var var_2142:int;
      
      private var _ownerName:String;
      
      private var var_106:RoomData;
      
      private var var_699:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_362 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         this.var_2378 = param1.readBoolean();
         this.var_2142 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_106 = new RoomData(param1);
         this.var_699 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_106 != null)
         {
            this.var_106.dispose();
            this.var_106 = null;
         }
         if(this.var_699 != null)
         {
            this.var_699.dispose();
            this.var_699 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_362;
      }
      
      public function get userCount() : int
      {
         return this.var_2379;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2378;
      }
      
      public function get ownerId() : int
      {
         return this.var_2142;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_106;
      }
      
      public function get event() : RoomData
      {
         return this.var_699;
      }
   }
}
