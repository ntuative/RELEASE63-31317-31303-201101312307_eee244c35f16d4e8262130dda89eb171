package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_653:TileHeightMap = null;
      
      private var var_994:LegacyWallGeometry = null;
      
      private var var_993:RoomCamera = null;
      
      private var var_654:SelectedRoomObjectData = null;
      
      private var var_655:SelectedRoomObjectData = null;
      
      private var var_2020:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_994 = new LegacyWallGeometry();
         this.var_993 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_653;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_653 != null)
         {
            this.var_653.dispose();
         }
         this.var_653 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_994;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_993;
      }
      
      public function get worldType() : String
      {
         return this.var_2020;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2020 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_654;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_654 != null)
         {
            this.var_654.dispose();
         }
         this.var_654 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_655;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_655 != null)
         {
            this.var_655.dispose();
         }
         this.var_655 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_653 != null)
         {
            this.var_653.dispose();
            this.var_653 = null;
         }
         if(this.var_994 != null)
         {
            this.var_994.dispose();
            this.var_994 = null;
         }
         if(this.var_993 != null)
         {
            this.var_993.dispose();
            this.var_993 = null;
         }
         if(this.var_654 != null)
         {
            this.var_654.dispose();
            this.var_654 = null;
         }
         if(this.var_655 != null)
         {
            this.var_655.dispose();
            this.var_655 = null;
         }
      }
   }
}
