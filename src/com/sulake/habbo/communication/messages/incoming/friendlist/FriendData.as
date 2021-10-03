package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_958:int;
      
      private var var_777:Boolean;
      
      private var var_1495:Boolean;
      
      private var var_627:String;
      
      private var var_1398:int;
      
      private var var_1652:String;
      
      private var var_1653:String;
      
      private var var_1651:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_958 = param1.readInteger();
         this.var_777 = param1.readBoolean();
         this.var_1495 = param1.readBoolean();
         this.var_627 = param1.readString();
         this.var_1398 = param1.readInteger();
         this.var_1652 = param1.readString();
         this.var_1653 = param1.readString();
         this.var_1651 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_958;
      }
      
      public function get online() : Boolean
      {
         return this.var_777;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1495;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get categoryId() : int
      {
         return this.var_1398;
      }
      
      public function get motto() : String
      {
         return this.var_1652;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1653;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
   }
}
