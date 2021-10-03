package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_691:String = "RWUAM_WHISPER_USER";
      
      public static const const_715:String = "RWUAM_IGNORE_USER";
      
      public static const const_621:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_546:String = "RWUAM_KICK_USER";
      
      public static const const_815:String = "RWUAM_BAN_USER";
      
      public static const const_625:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_874:String = "RWUAM_RESPECT_USER";
      
      public static const const_843:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_600:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_701:String = "RWUAM_START_TRADING";
      
      public static const const_848:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_517:String = "RWUAM_KICK_BOT";
      
      public static const const_755:String = "RWUAM_REPORT";
      
      public static const const_468:String = "RWUAM_PICKUP_PET";
      
      public static const const_1599:String = "RWUAM_TRAIN_PET";
      
      public static const const_544:String = " RWUAM_RESPECT_PET";
      
      public static const const_386:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
