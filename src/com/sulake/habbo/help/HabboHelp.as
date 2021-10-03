package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_165:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_279:IHabboCommunicationManager;
      
      private var var_930:IHabboLocalizationManager;
      
      private var var_931:IHabboConfigurationManager;
      
      private var var_395:ISessionDataManager;
      
      private var var_1148:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_63:HelpUI;
      
      private var var_177:TutorialUI;
      
      private var var_737:HotelMergeUI;
      
      private var var_932:RegistrationUI;
      
      private var var_1404:CallForHelpData;
      
      private var var_2535:UserRegistry;
      
      private var var_2534:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1404 = new CallForHelpData();
         this.var_2535 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1148 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2534 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2534;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1404;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2535;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_930;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_165;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_395;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_177;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_737;
      }
      
      override public function dispose() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.dispose();
            this.var_63 = null;
         }
         if(this.var_177 != null)
         {
            this.var_177.dispose();
            this.var_177 = null;
         }
         if(this.var_737)
         {
            this.var_737.dispose();
            this.var_737 = null;
         }
         if(this.var_932 != null)
         {
            this.var_932.dispose();
            this.var_932 = null;
         }
         if(this.var_1148 != null)
         {
            this.var_1148.dispose();
            this.var_1148 = null;
         }
         this._incomingMessages = null;
         if(this.var_165)
         {
            this.var_165.release(new IIDHabboToolbar());
            this.var_165 = null;
         }
         if(this.var_930)
         {
            this.var_930.release(new IIDHabboLocalizationManager());
            this.var_930 = null;
         }
         if(this.var_279)
         {
            this.var_279.release(new IIDHabboCommunicationManager());
            this.var_279 = null;
         }
         if(this.var_931)
         {
            this.var_931.release(new IIDHabboConfigurationManager());
            this.var_931 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_395 != null)
         {
            this.var_395.release(new IIDSessionDataManager());
            this.var_395 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1148;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_279 != null && param1 != null)
         {
            this.var_279.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_931 == null)
         {
            return param1;
         }
         return this.var_931.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1404.reportedUserId = param1;
         this.var_1404.reportedUserName = param2;
         this.var_63.showUI(HabboHelpViewEnum.const_358);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_63 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_63.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_63 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_63 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_930,this.var_165);
         }
         return this.var_63 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_177 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_177 = new TutorialUI(this);
         }
         return this.var_177 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_177 != null)
         {
            this.var_177.dispose();
            this.var_177 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_737)
         {
            this.var_737 = new HotelMergeUI(this);
         }
         this.var_737.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_932)
         {
            this.var_932 = new RegistrationUI(this);
         }
         this.var_932.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_177 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_177.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_279 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_279);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_165 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_930 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_931 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_88,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_98,this.onRoomSessionEvent);
         this.var_165.events.addEventListener(HabboToolbarEvent.const_66,this.onHabboToolbarEvent);
         this.var_165.events.addEventListener(HabboToolbarEvent.const_40,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_395 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_88:
               if(this.var_63 != null)
               {
                  this.var_63.method_5(true);
               }
               if(this.var_177 != null)
               {
                  this.var_177.method_5(true);
               }
               break;
            case RoomSessionEvent.const_98:
               if(this.var_63 != null)
               {
                  this.var_63.method_5(false);
               }
               if(this.var_177 != null)
               {
                  this.var_177.method_5(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_165 != null)
         {
            this.var_165.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_120,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_66)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_40)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
