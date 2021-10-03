package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_627:String;
      
      private var var_858:String;
      
      private var var_1627:String;
      
      private var var_2087:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get sex() : String
      {
         return this.var_858;
      }
      
      public function get customInfo() : String
      {
         return this.var_1627;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2087;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_627 = "";
         this.var_858 = "";
         this.var_1627 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_627 = param1.readString();
         this.var_858 = param1.readString();
         this.var_1627 = param1.readString();
         this.var_2087 = param1.readInteger();
         if(this.var_858)
         {
            this.var_858 = this.var_858.toUpperCase();
         }
         return true;
      }
   }
}
