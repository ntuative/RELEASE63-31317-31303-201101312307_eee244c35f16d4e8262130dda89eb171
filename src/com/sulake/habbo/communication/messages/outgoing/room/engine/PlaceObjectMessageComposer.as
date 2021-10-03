package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_329:int;
      
      private var var_2207:int;
      
      private var var_2639:String;
      
      private var _x:int = 0;
      
      private var var_161:int = 0;
      
      private var var_244:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_329 = param1;
         this.var_2207 = param2;
         this.var_2639 = param3;
         this._x = param4;
         this.var_161 = param5;
         this.var_244 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2207)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this.var_329 + " " + this._x + " " + this.var_161 + " " + this.var_244];
            case RoomObjectCategoryEnum.const_27:
               return [this.var_329 + " " + this.var_2639];
            default:
               return [];
         }
      }
   }
}
