package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _type:int;
      
      private var var_1837:String;
      
      private var var_1839:BitmapData;
      
      private var var_182:Boolean;
      
      private var var_1836:BitmapData;
      
      private var var_615:IBitmapWrapperWindow;
      
      private var var_1838:Rectangle;
      
      private var var_1411:int = 1;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_1837 = param4;
         this.var_1836 = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get picName() : String
      {
         return this.var_1837;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_1839 == null)
         {
            this.var_1839 = this._navigator.getButtonImage(this.var_1837);
         }
         return this.var_1839;
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_615 = param1;
         this.refreshListImg();
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this.var_182 == param1)
         {
            return;
         }
         this.var_182 = param1;
         this.refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_1838 == null)
         {
            _loc1_ = this.var_615.bitmap.rect;
            this.var_1838 = new Rectangle(this.var_1411,this.var_1411,_loc1_.width - 2 * this.var_1411,_loc1_.height - 2 * this.var_1411);
         }
         this.var_615.bitmap.fillRect(this.var_615.bitmap.rect,4281545523);
         this.var_615.bitmap.fillRect(this.var_1838,4284900966);
         this.copyTo(this.var_615.bitmap);
         if(this.var_182)
         {
            this.var_615.bitmap.copyPixels(this.var_1836,this.var_1836.rect,new Point(0,0),null,null,true);
         }
         this.var_615.invalidate();
      }
   }
}
