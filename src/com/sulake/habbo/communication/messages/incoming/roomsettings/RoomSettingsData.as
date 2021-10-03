package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_481:int = 0;
      
      public static const const_175:int = 1;
      
      public static const const_109:int = 2;
      
      public static const const_876:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1549:String;
      
      private var var_2100:int;
      
      private var var_1398:int;
      
      private var var_2101:int;
      
      private var var_2449:int;
      
      private var var_792:Array;
      
      private var var_2099:Array;
      
      private var var_2448:int;
      
      private var var_2097:Boolean;
      
      private var var_2102:Boolean;
      
      private var var_2098:Boolean;
      
      private var var_2096:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2097;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2097 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2102;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2102 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2098;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2098 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2096;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2096 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1549;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1549 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2100;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2100 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1398;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1398 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2101;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2101 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2449;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2449 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_792 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2099;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2099 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2448;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2448 = param1;
      }
   }
}
