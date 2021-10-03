package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2306:int;
      
      private var var_2305:int;
      
      private var var_2307:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2306 = param1;
         this.var_2305 = param2;
         this.var_2307 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2306,this.var_2305,this.var_2307];
      }
      
      public function dispose() : void
      {
      }
   }
}
