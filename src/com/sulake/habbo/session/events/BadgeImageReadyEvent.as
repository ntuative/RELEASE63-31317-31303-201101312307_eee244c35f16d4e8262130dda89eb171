package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_128:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_282:String;
      
      private var var_43:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_128,param3,param4);
         this.var_282 = param1;
         this.var_43 = param2;
      }
      
      public function get badgeId() : String
      {
         return this.var_282;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_43;
      }
   }
}
