package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2015:int = 0;
      
      private var var_1338:String = "";
      
      private var var_1677:String = "";
      
      private var var_2010:String = "";
      
      private var var_2013:String = "";
      
      private var var_1500:int = 0;
      
      private var var_2012:int = 0;
      
      private var var_2011:int = 0;
      
      private var var_1335:int = 0;
      
      private var var_2014:int = 0;
      
      private var var_1336:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2015 = param1;
         this.var_1338 = param2;
         this.var_1677 = param3;
         this.var_2010 = param4;
         this.var_2013 = param5;
         if(param6)
         {
            this.var_1500 = 1;
         }
         else
         {
            this.var_1500 = 0;
         }
         this.var_2012 = param7;
         this.var_2011 = param8;
         this.var_1335 = param9;
         this.var_2014 = param10;
         this.var_1336 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2015,this.var_1338,this.var_1677,this.var_2010,this.var_2013,this.var_1500,this.var_2012,this.var_2011,this.var_1335,this.var_2014,this.var_1336];
      }
   }
}
