package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_933:IAssetLoader;
      
      private var var_1861:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1861 = param1;
         this.var_933 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1861;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_933;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_933 != null)
            {
               if(!this.var_933.disposed)
               {
                  this.var_933.dispose();
                  this.var_933 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
