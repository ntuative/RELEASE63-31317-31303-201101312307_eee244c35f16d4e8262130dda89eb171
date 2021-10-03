package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_801:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1097:String = "inventory_effects";
      
      public static const const_1044:String = "inventory_badges";
      
      public static const const_1501:String = "inventory_clothes";
      
      public static const const_1438:String = "inventory_furniture";
       
      
      private var var_2679:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_801);
         this.var_2679 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2679;
      }
   }
}
