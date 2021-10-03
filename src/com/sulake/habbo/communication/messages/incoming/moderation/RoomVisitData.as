package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1507:Boolean;
      
      private var _roomId:int;
      
      private var var_928:String;
      
      private var var_1999:int;
      
      private var var_1998:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1507 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_928 = param1.readString();
         this.var_1999 = param1.readInteger();
         this.var_1998 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1507;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_928;
      }
      
      public function get enterHour() : int
      {
         return this.var_1999;
      }
      
      public function get enterMinute() : int
      {
         return this.var_1998;
      }
   }
}
