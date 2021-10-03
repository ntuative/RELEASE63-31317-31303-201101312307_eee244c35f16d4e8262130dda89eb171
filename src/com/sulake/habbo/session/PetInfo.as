package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1746:int;
      
      private var var_1326:int;
      
      private var var_2139:int;
      
      private var var_2137:int;
      
      private var var_2138:int;
      
      private var _energy:int;
      
      private var var_2136:int;
      
      private var _nutrition:int;
      
      private var var_2141:int;
      
      private var var_2142:int;
      
      private var _ownerName:String;
      
      private var var_2140:int;
      
      private var var_518:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1746;
      }
      
      public function get level() : int
      {
         return this.var_1326;
      }
      
      public function get levelMax() : int
      {
         return this.var_2139;
      }
      
      public function get experience() : int
      {
         return this.var_2137;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2138;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2136;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2141;
      }
      
      public function get ownerId() : int
      {
         return this.var_2142;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2140;
      }
      
      public function get age() : int
      {
         return this.var_518;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1746 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1326 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2139 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2137 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2138 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2136 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2141 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2142 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2140 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_518 = param1;
      }
   }
}
