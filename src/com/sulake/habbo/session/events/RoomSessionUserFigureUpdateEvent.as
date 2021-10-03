package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_158:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_627:String = "";
      
      private var var_958:String = "";
      
      private var var_1627:String = "";
      
      private var var_2087:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_158,param1,param7,param8);
         this._userId = param2;
         this.var_627 = param3;
         this.var_958 = param4;
         this.var_1627 = param5;
         this.var_2087 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_627;
      }
      
      public function get gender() : String
      {
         return this.var_958;
      }
      
      public function get customInfo() : String
      {
         return this.var_1627;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2087;
      }
   }
}
