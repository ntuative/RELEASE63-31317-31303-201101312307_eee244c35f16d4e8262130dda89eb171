package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_83:String = "i";
      
      public static const const_90:String = "s";
      
      public static const const_218:String = "e";
       
      
      private var var_1546:String;
      
      private var var_2570:int;
      
      private var var_1261:String;
      
      private var var_1260:int;
      
      private var var_1545:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1546 = param1.readString();
         this.var_2570 = param1.readInteger();
         this.var_1261 = param1.readString();
         this.var_1260 = param1.readInteger();
         this.var_1545 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1546;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2570;
      }
      
      public function get extraParam() : String
      {
         return this.var_1261;
      }
      
      public function get productCount() : int
      {
         return this.var_1260;
      }
      
      public function get expiration() : int
      {
         return this.var_1545;
      }
   }
}
