package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var _state:Boolean = false;
      
      private var var_176:IHabboConfigurationManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _connection:IConnection;
      
      private var var_1436:int = 0;
      
      private var var_1877:int = 0;
      
      private var var_1874:int = 0;
      
      private var var_2660:int = 0;
      
      private var var_1875:int = 0;
      
      private var var_1876:int = 0;
      
      private var var_218:Array;
      
      private var var_625:Map;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_176 = param1;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         this._communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function dispose() : void
      {
         this._state = false;
         this.var_176 = null;
         this._communication = null;
         this._connection = null;
         if(this.var_625 != null)
         {
            this.var_625.dispose();
            this.var_625 = null;
         }
         this.var_218 = null;
      }
      
      public function init() : void
      {
         if(this.var_176 == null || this._communication == null || this._connection == null)
         {
            return;
         }
         this.var_1877 = int(this.var_176.getKey("latencytest.interval"));
         this.var_1874 = int(this.var_176.getKey("latencytest.report.index"));
         this.var_2660 = int(this.var_176.getKey("latencytest.report.delta"));
         this._communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(this.onPingResponse));
         if(this.var_1877 < 1)
         {
            return;
         }
         this.var_625 = new Map();
         this.var_218 = new Array();
         this._state = true;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         if(!this._state)
         {
            return;
         }
         if(param2 - this.var_1875 > this.var_1877)
         {
            this.testLatency();
         }
      }
      
      private function testLatency() : void
      {
         this.var_1875 = getTimer();
         this.var_625.add(this.var_1436,this.var_1875);
         this._connection.send(new LatencyPingRequestMessageComposer(this.var_1436));
         ++this.var_1436;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(this.var_625 == null || this.var_218 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = this.var_625.getValue(_loc2_.requestId);
         this.var_625.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         this.var_218.push(_loc4_);
         if(this.var_218.length == this.var_1874 && this.var_1874 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < this.var_218.length)
            {
               _loc5_ += this.var_218[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / this.var_218.length;
            _loc8_ = 0;
            while(_loc8_ < this.var_218.length)
            {
               if(this.var_218[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += this.var_218[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               this.var_218 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - this.var_1876) > this.var_2660 || this.var_1876 == 0)
            {
               this.var_1876 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,this.var_218.length);
               this._connection.send(_loc11_);
            }
            this.var_218 = [];
         }
      }
   }
}
