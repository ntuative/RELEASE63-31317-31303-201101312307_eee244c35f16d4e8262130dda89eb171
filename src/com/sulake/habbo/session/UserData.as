package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_858:String = "";
      
      private var var_627:String = "";
      
      private var var_2154:String = "";
      
      private var var_2087:int;
      
      private var var_2092:int = 0;
      
      private var var_2155:String = "";
      
      private var var_2156:int = 0;
      
      private var var_2093:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2087;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2087 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_858;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_858 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_627 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2154;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2154 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2092;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2092 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2155;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2155 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2156;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2156 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2093;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2093 = param1;
      }
   }
}
