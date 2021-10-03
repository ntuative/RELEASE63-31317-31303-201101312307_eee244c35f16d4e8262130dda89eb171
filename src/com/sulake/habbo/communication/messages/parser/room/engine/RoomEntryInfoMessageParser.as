package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1766:Boolean;
      
      private var var_2490:int;
      
      private var var_422:Boolean;
      
      private var var_1135:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1766;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2490;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1135;
      }
      
      public function get owner() : Boolean
      {
         return this.var_422;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1135 != null)
         {
            this.var_1135.dispose();
            this.var_1135 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1766 = param1.readBoolean();
         if(this.var_1766)
         {
            this.var_2490 = param1.readInteger();
            this.var_422 = param1.readBoolean();
         }
         else
         {
            this.var_1135 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
