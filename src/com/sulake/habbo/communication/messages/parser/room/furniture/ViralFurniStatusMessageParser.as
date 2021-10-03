package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_141:String;
      
      private var var_329:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_370:int;
      
      private var var_1259:String;
      
      private var var_2071:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_141;
      }
      
      public function get objectId() : int
      {
         return this.var_329;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1259;
      }
      
      public function get status() : int
      {
         return this.var_370;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2071;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_141 = param1.readString();
         this.var_329 = param1.readInteger();
         this.var_370 = param1.readInteger();
         this.var_1259 = param1.readString();
         this.var_2071 = param1.readString();
         return true;
      }
   }
}
