package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1094:String = "M";
      
      public static const const_1454:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_161:Number = 0;
      
      private var var_162:Number = 0;
      
      private var var_244:int = 0;
      
      private var _name:String = "";
      
      private var var_2387:int = 0;
      
      private var var_858:String = "";
      
      private var var_627:String = "";
      
      private var var_2154:String = "";
      
      private var var_2087:int;
      
      private var var_2092:int = 0;
      
      private var var_2155:String = "";
      
      private var var_2156:int = 0;
      
      private var var_2093:int = 0;
      
      private var var_2388:String = "";
      
      private var var_171:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_171 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_171)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_161;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_161 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_162;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_162 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_244;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_244 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_171)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2387;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2387 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_858;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_858 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_627 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2154;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2154 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2087;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2087 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2092;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2092 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2155;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2155 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2156;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2156 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2093;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2093 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2388;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2388 = param1;
         }
      }
   }
}
