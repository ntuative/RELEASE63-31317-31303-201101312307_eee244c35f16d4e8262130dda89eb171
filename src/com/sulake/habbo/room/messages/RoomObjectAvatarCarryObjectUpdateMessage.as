package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1401:int;
      
      private var var_1799:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1401 = param1;
         this.var_1799 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1401;
      }
      
      public function get itemName() : String
      {
         return this.var_1799;
      }
   }
}
