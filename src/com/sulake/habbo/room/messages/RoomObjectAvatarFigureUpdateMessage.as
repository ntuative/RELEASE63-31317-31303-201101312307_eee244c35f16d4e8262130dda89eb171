package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_627:String;
      
      private var var_2210:String;
      
      private var var_958:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_627 = param1;
         this.var_958 = param2;
         this.var_2210 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get race() : String
      {
         return this.var_2210;
      }
      
      public function get gender() : String
      {
         return this.var_958;
      }
   }
}
