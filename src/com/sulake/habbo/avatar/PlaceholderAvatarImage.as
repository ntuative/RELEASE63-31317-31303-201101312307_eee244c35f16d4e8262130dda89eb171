package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_736:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_695)
         {
            _structure = null;
            _assets = null;
            var_250 = null;
            var_266 = null;
            var_627 = null;
            var_524 = null;
            var_303 = null;
            if(!var_1215 && var_43)
            {
               var_43.dispose();
            }
            var_43 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_765 = null;
            var_695 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_736[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_736[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_370:
               switch(_loc3_)
               {
                  case AvatarAction.const_756:
                  case AvatarAction.const_482:
                  case AvatarAction.const_365:
                  case AvatarAction.const_711:
                  case AvatarAction.const_382:
                  case AvatarAction.const_759:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_310:
            case AvatarAction.const_780:
            case AvatarAction.const_209:
            case AvatarAction.const_773:
            case AvatarAction.const_612:
            case AvatarAction.const_870:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
