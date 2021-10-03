package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2382:int;
      
      private var var_2383:int;
      
      private var var_2384:String;
      
      private var var_2385:int;
      
      private var var_2386:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2382 = param1;
         this.var_2383 = param2;
         this.var_2384 = param3;
         this.var_2385 = param4;
         this.var_2386 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2382,this.var_2383,this.var_2384,this.var_2385,int(this.var_2386)];
      }
      
      public function dispose() : void
      {
      }
   }
}
