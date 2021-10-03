package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2403:String;
      
      private var var_1978:int;
      
      private var var_2130:int;
      
      private var var_1979:String;
      
      private var var_2402:int;
      
      private var var_1704:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2403 = param1.readString();
         this.var_1978 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         this.var_1979 = param1.readString();
         this.var_2402 = param1.readInteger();
         this.var_1704 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2403;
      }
      
      public function get unitPort() : int
      {
         return this.var_1978;
      }
      
      public function get worldId() : int
      {
         return this.var_2130;
      }
      
      public function get castLibs() : String
      {
         return this.var_1979;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2402;
      }
      
      public function get nodeId() : int
      {
         return this.var_1704;
      }
   }
}
