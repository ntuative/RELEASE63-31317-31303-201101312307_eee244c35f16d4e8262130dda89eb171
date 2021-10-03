package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1173:Boolean;
      
      private var var_2177:int;
      
      private var var_2176:String;
      
      private var var_362:int;
      
      private var var_2173:int;
      
      private var var_2174:String;
      
      private var var_2175:String;
      
      private var var_2172:String;
      
      private var var_792:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_792 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1173 = false;
            return;
         }
         this.var_1173 = true;
         this.var_2177 = int(_loc2_);
         this.var_2176 = param1.readString();
         this.var_362 = int(param1.readString());
         this.var_2173 = param1.readInteger();
         this.var_2174 = param1.readString();
         this.var_2175 = param1.readString();
         this.var_2172 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_792.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2177;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2176;
      }
      
      public function get flatId() : int
      {
         return this.var_362;
      }
      
      public function get eventType() : int
      {
         return this.var_2173;
      }
      
      public function get eventName() : String
      {
         return this.var_2174;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2175;
      }
      
      public function get creationTime() : String
      {
         return this.var_2172;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1173;
      }
   }
}
