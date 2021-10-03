package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1746:int;
      
      private var _name:String;
      
      private var var_1326:int;
      
      private var var_2438:int;
      
      private var var_2137:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_627:String;
      
      private var var_2437:int;
      
      private var var_2439:int;
      
      private var var_2436:int;
      
      private var var_2140:int;
      
      private var var_2142:int;
      
      private var _ownerName:String;
      
      private var var_518:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1746;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1326;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2438;
      }
      
      public function get experience() : int
      {
         return this.var_2137;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2437;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2439;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2436;
      }
      
      public function get respect() : int
      {
         return this.var_2140;
      }
      
      public function get ownerId() : int
      {
         return this.var_2142;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_518;
      }
      
      public function flush() : Boolean
      {
         this.var_1746 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1746 = param1.readInteger();
         this._name = param1.readString();
         this.var_1326 = param1.readInteger();
         this.var_2438 = param1.readInteger();
         this.var_2137 = param1.readInteger();
         this.var_2437 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2439 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2436 = param1.readInteger();
         this.var_627 = param1.readString();
         this.var_2140 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this.var_518 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
