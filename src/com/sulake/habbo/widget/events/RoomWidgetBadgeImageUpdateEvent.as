package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_699:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2062:String;
      
      private var var_2214:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_699,param3,param4);
         this.var_2062 = param1;
         this.var_2214 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2062;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2214;
      }
   }
}
