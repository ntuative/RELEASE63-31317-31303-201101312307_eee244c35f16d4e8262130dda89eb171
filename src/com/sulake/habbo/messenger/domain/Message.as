package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_740:int = 1;
      
      public static const const_718:int = 2;
      
      public static const const_827:int = 3;
      
      public static const const_1099:int = 4;
      
      public static const const_866:int = 5;
      
      public static const const_1001:int = 6;
       
      
      private var _type:int;
      
      private var var_1097:int;
      
      private var var_2250:String;
      
      private var var_2251:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1097 = param2;
         this.var_2250 = param3;
         this.var_2251 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2250;
      }
      
      public function get time() : String
      {
         return this.var_2251;
      }
      
      public function get senderId() : int
      {
         return this.var_1097;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
