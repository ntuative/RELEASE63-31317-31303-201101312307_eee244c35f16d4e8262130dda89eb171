package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2374:Boolean;
      
      private var var_2373:int;
      
      private var var_1707:Array;
      
      private var var_720:Array;
      
      private var var_721:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2374;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2373;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1707;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_720;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_721;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1707 = [];
         this.var_720 = [];
         this.var_721 = [];
         this.var_2374 = param1.readBoolean();
         this.var_2373 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1707.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_720.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_721.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
