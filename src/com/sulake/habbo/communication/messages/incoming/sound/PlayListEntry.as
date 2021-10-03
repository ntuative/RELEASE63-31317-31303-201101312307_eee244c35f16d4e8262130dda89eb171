package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2322:int;
      
      private var var_2321:int;
      
      private var var_2323:String;
      
      private var var_2324:String;
      
      private var var_2320:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2322 = param1;
         this.var_2321 = param2;
         this.var_2323 = param3;
         this.var_2324 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2322;
      }
      
      public function get length() : int
      {
         return this.var_2321;
      }
      
      public function get name() : String
      {
         return this.var_2323;
      }
      
      public function get creator() : String
      {
         return this.var_2324;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2320;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2320 = param1;
      }
   }
}
