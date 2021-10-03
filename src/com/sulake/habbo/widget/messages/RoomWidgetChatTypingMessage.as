package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_683:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_550:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_683);
         this.var_550 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_550;
      }
   }
}
