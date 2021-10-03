package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1361:String = "pricing_model_unknown";
      
      public static const const_458:String = "pricing_model_single";
      
      public static const const_461:String = "pricing_model_multi";
      
      public static const const_541:String = "pricing_model_bundle";
      
      public static const const_1383:String = "price_type_none";
      
      public static const const_719:String = "price_type_credits";
      
      public static const const_1195:String = "price_type_activitypoints";
      
      public static const const_1119:String = "price_type_credits_and_activitypoints";
       
      
      private var var_680:String;
      
      private var var_1049:String;
      
      private var _offerId:int;
      
      private var var_1605:String;
      
      private var var_1048:int;
      
      private var var_1050:int;
      
      private var var_1606:int;
      
      private var var_396:ICatalogPage;
      
      private var var_679:IProductContainer;
      
      private var var_2196:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1605 = param1.localizationId;
         this.var_1048 = param1.priceInCredits;
         this.var_1050 = param1.priceInActivityPoints;
         this.var_1606 = param1.activityPointType;
         this.var_396 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_396;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1605;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1048;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1050;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1606;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_679;
      }
      
      public function get pricingModel() : String
      {
         return this.var_680;
      }
      
      public function get priceType() : String
      {
         return this.var_1049;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2196;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1605 = "";
         this.var_1048 = 0;
         this.var_1050 = 0;
         this.var_1606 = 0;
         this.var_396 = null;
         if(this.var_679 != null)
         {
            this.var_679.dispose();
            this.var_679 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_680)
         {
            case const_458:
               this.var_679 = new SingleProductContainer(this,param1);
               break;
            case const_461:
               this.var_679 = new MultiProductContainer(this,param1);
               break;
            case const_541:
               this.var_679 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_680);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_680 = const_458;
            }
            else
            {
               this.var_680 = const_461;
            }
         }
         else if(param1.length > 1)
         {
            this.var_680 = const_541;
         }
         else
         {
            this.var_680 = const_1361;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1048 > 0 && this.var_1050 > 0)
         {
            this.var_1049 = const_1119;
         }
         else if(this.var_1048 > 0)
         {
            this.var_1049 = const_719;
         }
         else if(this.var_1050 > 0)
         {
            this.var_1049 = const_1195;
         }
         else
         {
            this.var_1049 = const_1383;
         }
      }
   }
}
