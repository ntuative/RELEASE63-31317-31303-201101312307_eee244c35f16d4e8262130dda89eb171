package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2273:int;
      
      private var var_2275:int;
      
      private var var_1048:int;
      
      private var var_1050:int;
      
      private var var_1606:int;
      
      private var var_2274:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2273 = param1.readInteger();
         this.var_2275 = param1.readInteger();
         this.var_1048 = param1.readInteger();
         this.var_1050 = param1.readInteger();
         this.var_1606 = param1.readInteger();
         this.var_2274 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2273;
      }
      
      public function get charges() : int
      {
         return this.var_2275;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1048;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1050;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2274;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1606;
      }
   }
}
