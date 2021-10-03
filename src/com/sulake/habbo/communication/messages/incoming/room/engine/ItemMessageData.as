package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2499:Boolean = false;
      
      private var var_2498:int = 0;
      
      private var var_2500:int = 0;
      
      private var var_2488:int = 0;
      
      private var var_2487:int = 0;
      
      private var var_161:Number = 0;
      
      private var var_162:Number = 0;
      
      private var var_244:String = "";
      
      private var _type:int = 0;
      
      private var var_2780:String = "";
      
      private var var_1428:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_171:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2499 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_171 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2499;
      }
      
      public function get wallX() : Number
      {
         return this.var_2498;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_2498 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2500;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_2500 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2488;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_2488 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2487;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_2487 = param1;
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
      
      public function get dir() : String
      {
         return this.var_244;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_244 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_171)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_171)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_171)
         {
            this._data = param1;
         }
      }
   }
}
