package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_869:BigInteger;
      
      private var var_2397:BigInteger;
      
      private var var_1749:BigInteger;
      
      private var var_2450:BigInteger;
      
      private var var_1372:BigInteger;
      
      private var var_1750:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1372 = param1;
         this.var_1750 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1372.toString() + ",generator: " + this.var_1750.toString() + ",secret: " + param1);
         this.var_869 = new BigInteger();
         this.var_869.fromRadix(param1,param2);
         this.var_2397 = this.var_1750.modPow(this.var_869,this.var_1372);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1749 = new BigInteger();
         this.var_1749.fromRadix(param1,param2);
         this.var_2450 = this.var_1749.modPow(this.var_869,this.var_1372);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2397.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2450.toRadix(param1);
      }
   }
}
