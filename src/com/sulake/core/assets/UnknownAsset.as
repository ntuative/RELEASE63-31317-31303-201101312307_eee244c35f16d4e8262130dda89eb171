package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_168:Object = null;
      
      private var var_1544:AssetTypeDeclaration;
      
      private var var_967:String;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1544 = param1;
         this.var_967 = param2;
      }
      
      public function get url() : String
      {
         return this.var_967;
      }
      
      public function get content() : Object
      {
         return this.var_168;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1544;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_168 = null;
            this.var_1544 = null;
            this.var_967 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_168 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         this.var_168 = param1.content as Object;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + this.var_168;
      }
   }
}
