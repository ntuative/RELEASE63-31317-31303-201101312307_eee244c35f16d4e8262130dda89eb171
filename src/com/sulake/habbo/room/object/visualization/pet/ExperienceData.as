package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class ExperienceData
   {
       
      
      private var var_412:BitmapDataAsset;
      
      private var var_43:BitmapData;
      
      private var var_2504:int;
      
      private var var_2008:int;
      
      public function ExperienceData(param1:PetVisualizationData)
      {
         super();
         this.var_412 = param1.getAvatarRendererAsset("pet_experience_bubble_png") as BitmapDataAsset;
      }
      
      public function dispose() : void
      {
         if(this.var_43)
         {
            this.var_43.dispose();
         }
         this.var_43 = null;
         this.var_412 = null;
      }
      
      public function get alpha() : int
      {
         return this.var_2008;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2008 = param1;
      }
      
      public function get image() : BitmapData
      {
         if(!this.var_43)
         {
            this.setExperience(0);
         }
         return this.var_43;
      }
      
      public function setExperience(param1:int) : void
      {
         var _loc3_:* = null;
         if(this.var_2504 == param1)
         {
            return;
         }
         if(this.var_43)
         {
            this.var_43.dispose();
         }
         this.var_43 = (this.var_412.content as BitmapData).clone();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = "Volter";
         _loc2_.color = 16777215;
         _loc2_.size = 9;
         _loc3_ = new TextField();
         _loc3_.embedFonts = true;
         _loc3_.width = 30;
         _loc3_.height = 12;
         _loc3_.background = true;
         _loc3_.backgroundColor = 3871388928;
         _loc3_.defaultTextFormat = _loc2_;
         _loc3_.text = "+" + param1;
         var _loc4_:Matrix = new Matrix();
         _loc4_.translate(15,19);
         this.var_43.draw(_loc3_,_loc4_);
      }
   }
}
