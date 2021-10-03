package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2627:String;
      
      private var var_1859:String;
      
      private var var_2626:String;
      
      private var var_1858:Boolean;
      
      private var var_1857:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2627 = String(param1["set-type"]);
         this.var_1859 = String(param1["flipped-set-type"]);
         this.var_2626 = String(param1["remove-set-type"]);
         this.var_1858 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1857 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1857;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1857 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2627;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1859;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2626;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1858;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1858 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1859 = param1;
      }
   }
}
