package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_522:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_678:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_329:int;
      
      private var _text:String;
      
      private var var_942:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this.var_329 = param2;
         this._text = param3;
         this.var_942 = param4;
      }
      
      public function get objectId() : int
      {
         return this.var_329;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_942;
      }
   }
}
