package com.sulake.habbo.ui
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDisplayObjectWrapper;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.advertisement.IAdManager;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.IHabboAvatarEditor;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.friendlist.events.FriendRequestEvent;
   import com.sulake.habbo.help.IHabboHelp;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.moderation.IHabboModeration;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.RoomVariableEnum;
   import com.sulake.habbo.room.events.RoomEngineEvent;
   import com.sulake.habbo.room.events.RoomEngineObjectEvent;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectOperationEnum;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.roomevents.IHabboUserDefinedRoomEvents;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.IUserData;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.tracking.IHabboTracking;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.widget.IRoomWidget;
   import com.sulake.habbo.widget.IRoomWidgetFactory;
   import com.sulake.habbo.widget.IRoomWidgetMessageListener;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetLoadingBarUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniToWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.room.events.RoomContentLoadedEvent;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.utils.ColorConverter;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.RoomGeometry;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.filters.BitmapFilter;
   import flash.filters.BlurFilter;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.DisplacementMapFilterMode;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class RoomDesktop implements IRoomDesktop, IRoomWidgetMessageListener, IRoomWidgetHandlerContainer
   {
      
      public static const const_562:int = -1;
       
      
      private var _events:EventDispatcher;
      
      private var _windowManager:IHabboWindowManager = null;
      
      private var _roomEngine:IRoomEngine = null;
      
      private var var_1023:IRoomWidgetFactory = null;
      
      private var var_395:ISessionDataManager = null;
      
      private var var_17:IRoomSessionManager = null;
      
      private var var_447:IAvatarRenderManager = null;
      
      private var _friendList:IHabboFriendList = null;
      
      private var _inventory:IHabboInventory = null;
      
      private var var_165:IHabboToolbar = null;
      
      private var _navigator:IHabboNavigator = null;
      
      private var var_1559:IHabboAvatarEditor = null;
      
      private var _catalog:IHabboCatalog = null;
      
      private var var_276:IAdManager = null;
      
      private var _localization:IHabboLocalizationManager = null;
      
      private var var_1021:IHabboHelp = null;
      
      private var _connection:IConnection = null;
      
      private var var_826:IHabboModeration;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_554:IHabboSoundManager;
      
      private var _habboTracking:IHabboTracking;
      
      private var var_1022:IHabboUserDefinedRoomEvents;
      
      private var _assets:IAssetLibrary = null;
      
      private var var_31:IRoomSession = null;
      
      private var var_292:Array;
      
      private var var_59:Map;
      
      private var var_503:Map;
      
      private var var_754:Map;
      
      private var var_753:Map;
      
      private var var_193:DesktopLayoutManager;
      
      private var var_1826:Boolean = true;
      
      private var var_1825:Boolean = true;
      
      private var var_752:Array;
      
      private var var_213:IToolTipWindow;
      
      private var var_2569:uint = 16777215;
      
      private var var_2568:Boolean = false;
      
      private var var_1827:int = 0;
      
      public function RoomDesktop(param1:IRoomSession, param2:IAssetLibrary, param3:IConnection)
      {
         this.var_292 = [];
         super();
         this._events = new EventDispatcher();
         this.var_31 = param1;
         this._assets = param2;
         this._connection = param3;
         this.var_59 = new Map();
         this.var_503 = new Map();
         this.var_754 = new Map();
         this.var_753 = new Map();
         this.var_193 = new DesktopLayoutManager();
      }
      
      public function get roomSession() : IRoomSession
      {
         return this.var_31;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_395;
      }
      
      public function get events() : IEventDispatcher
      {
         return this._events;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return this._roomEngine;
      }
      
      public function get roomSessionManager() : IRoomSessionManager
      {
         return this.var_17;
      }
      
      public function get friendList() : IHabboFriendList
      {
         return this._friendList;
      }
      
      public function get avatarRenderManager() : IAvatarRenderManager
      {
         return this.var_447;
      }
      
      public function get inventory() : IHabboInventory
      {
         return this._inventory;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_165;
      }
      
      public function get roomWidgetFactory() : IRoomWidgetFactory
      {
         return this.var_1023;
      }
      
      public function get navigator() : IHabboNavigator
      {
         return this._navigator;
      }
      
      public function get avatarEditor() : IHabboAvatarEditor
      {
         return this.var_1559;
      }
      
      public function get catalog() : IHabboCatalog
      {
         return this._catalog;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this._localization;
      }
      
      public function get habboHelp() : IHabboHelp
      {
         return this.var_1021;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get soundManager() : IHabboSoundManager
      {
         return this.var_554;
      }
      
      public function get moderation() : IHabboModeration
      {
         return this.var_826;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get session() : IRoomSession
      {
         return this.var_31;
      }
      
      public function set catalog(param1:IHabboCatalog) : void
      {
         this._catalog = param1;
      }
      
      public function set avatarEditor(param1:IHabboAvatarEditor) : void
      {
         this.var_1559 = param1;
      }
      
      public function set roomWidgetFactory(param1:IRoomWidgetFactory) : void
      {
         this.var_1023 = param1;
      }
      
      public function set sessionDataManager(param1:ISessionDataManager) : void
      {
         this.var_395 = param1;
      }
      
      public function set roomSessionManager(param1:IRoomSessionManager) : void
      {
         this.var_17 = param1;
      }
      
      public function get userDefinedRoomEvents() : IHabboUserDefinedRoomEvents
      {
         return this.var_1022;
      }
      
      public function set friendList(param1:IHabboFriendList) : void
      {
         this._friendList = param1;
         if(this._friendList)
         {
            this._friendList.events.addEventListener(FriendRequestEvent.const_44,this.processEvent);
            this._friendList.events.addEventListener(FriendRequestEvent.const_315,this.processEvent);
         }
      }
      
      public function set avatarRenderManager(param1:IAvatarRenderManager) : void
      {
         this.var_447 = param1;
      }
      
      public function set windowManager(param1:IHabboWindowManager) : void
      {
         this._windowManager = param1;
      }
      
      public function set inventory(param1:IHabboInventory) : void
      {
         this._inventory = param1;
      }
      
      public function set navigator(param1:IHabboNavigator) : void
      {
         this._navigator = param1;
      }
      
      public function set adManager(param1:IAdManager) : void
      {
         this.var_276 = param1;
      }
      
      public function set localization(param1:IHabboLocalizationManager) : void
      {
         this._localization = param1;
      }
      
      public function set habboHelp(param1:IHabboHelp) : void
      {
         this.var_1021 = param1;
      }
      
      public function set moderation(param1:IHabboModeration) : void
      {
         this.var_826 = param1;
      }
      
      public function set config(param1:IHabboConfigurationManager) : void
      {
         this._config = param1;
      }
      
      public function set soundManager(param1:IHabboSoundManager) : void
      {
         this.var_554 = param1;
      }
      
      public function set habboTracking(param1:IHabboTracking) : void
      {
         this._habboTracking = param1;
      }
      
      public function set userDefinedRoomEvents(param1:IHabboUserDefinedRoomEvents) : void
      {
         this.var_1022 = param1;
      }
      
      public function set roomEngine(param1:IRoomEngine) : void
      {
         this._roomEngine = param1;
         if(this._roomEngine != null && this._roomEngine.events != null)
         {
            this._roomEngine.events.addEventListener(RoomContentLoadedEvent.const_390,this.onRoomContentLoaded);
            this._roomEngine.events.addEventListener(RoomContentLoadedEvent.const_542,this.onRoomContentLoaded);
            this._roomEngine.events.addEventListener(RoomContentLoadedEvent.const_622,this.onRoomContentLoaded);
         }
      }
      
      public function set toolbar(param1:IHabboToolbar) : void
      {
         this.var_165 = param1;
         this.var_165.events.addEventListener(HabboToolbarEvent.TOOLBAR_ORIENTATION,this.onToolbarRepositionEvent);
         this.var_165.events.addEventListener(HabboToolbarEvent.const_40,this.onHabboToolbarEvent);
      }
      
      public function set layout(param1:XML) : void
      {
         this.var_193.setLayout(param1,this._windowManager);
         if(this.var_165 != null)
         {
            this.var_193.toolbarSize = this.var_165.size;
            this.var_193.toolbarOrientation = this.var_165.orientation;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(this._roomEngine != null && this.var_31 != null)
         {
            _loc2_ = this._roomEngine.getRoomCanvasGeometry(this.var_31.roomId,this.var_31.roomCategory,this.getFirstCanvasId());
            if(_loc2_ != null)
            {
               this.trackZoomTime(_loc2_.isZoomedIn());
            }
         }
         var _loc1_:int = 0;
         if(this.var_292 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_292.length)
            {
               _loc3_ = this.var_292[_loc1_];
               _loc4_ = this.getWindowName(_loc3_);
               if(this._windowManager)
               {
                  this._windowManager.removeWindow(_loc4_);
               }
               _loc1_++;
            }
         }
         if(this.var_59 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_59.length)
            {
               _loc5_ = this.var_59.getWithIndex(_loc1_) as IRoomWidget;
               if(_loc5_ != null)
               {
                  _loc5_.dispose();
               }
               _loc1_++;
            }
            this.var_59.dispose();
            this.var_59 = null;
         }
         if(this.var_503 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_503.length)
            {
               _loc6_ = this.var_503.getWithIndex(_loc1_) as IRoomWidgetHandler;
               if(_loc6_ != null)
               {
                  _loc6_.dispose();
               }
               _loc1_++;
            }
            this.var_503.dispose();
            this.var_503 = null;
         }
         if(this.var_754 != null)
         {
            this.var_754.dispose();
            this.var_754 = null;
         }
         if(this.var_753 != null)
         {
            this.var_753.dispose();
            this.var_753 = null;
         }
         this._assets = null;
         this.var_447 = null;
         this.var_292 = null;
         this._events = null;
         if(this._friendList && this._friendList.events)
         {
            this._friendList.events.removeEventListener(FriendRequestEvent.const_44,this.processEvent);
            this._friendList.events.removeEventListener(FriendRequestEvent.const_315,this.processEvent);
         }
         this._friendList = null;
         this.var_193.dispose();
         this.var_193 = null;
         if(this._roomEngine != null && this._roomEngine.events != null)
         {
            this._roomEngine.events.removeEventListener(RoomContentLoadedEvent.const_390,this.onRoomContentLoaded);
            this._roomEngine.events.removeEventListener(RoomContentLoadedEvent.const_542,this.onRoomContentLoaded);
            this._roomEngine.events.removeEventListener(RoomContentLoadedEvent.const_622,this.onRoomContentLoaded);
         }
         this._roomEngine = null;
         this.var_17 = null;
         this.var_1023 = null;
         this.var_31 = null;
         this.var_395 = null;
         this._windowManager = null;
         this._inventory = null;
         if(this.var_165 && this.var_165.events)
         {
            this.var_165.events.removeEventListener(HabboToolbarEvent.TOOLBAR_ORIENTATION,this.onToolbarRepositionEvent);
            this.var_165.events.removeEventListener(HabboToolbarEvent.const_40,this.onHabboToolbarEvent);
         }
         this.var_165 = null;
         this._localization = null;
         this._config = null;
         this.var_554 = null;
         if(this.var_213 != null)
         {
            this.var_213.dispose();
            this.var_213 = null;
         }
      }
      
      public function init() : void
      {
         if(this._roomEngine != null && this.var_31 != null)
         {
            this.var_752 = this._roomEngine.loadRoomResources(this.var_31.roomResources);
            if(this.var_752.length > 0)
            {
               this.var_1825 = false;
               this.processEvent(new RoomWidgetLoadingBarUpdateEvent(RoomWidgetLoadingBarUpdateEvent.const_100));
            }
         }
         if(this.var_276 != null && this.var_31.state == RoomSessionEvent.const_239)
         {
            this.var_1826 = !this.var_276.showInterstitial();
         }
         this.checkInterrupts();
      }
      
      private function onRoomContentLoaded(param1:RoomContentLoadedEvent) : void
      {
         if(this.var_752 == null || this.var_752.length == 0)
         {
            return;
         }
         var _loc2_:int = this.var_752.indexOf(param1.contentType);
         if(_loc2_ != -1)
         {
            this.var_752.splice(_loc2_,1);
         }
         if(this.var_752.length == 0)
         {
            this.var_1825 = true;
            this.checkInterrupts();
         }
      }
      
      public function createWidget(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         if(this.var_1023 == null)
         {
            return;
         }
         _loc2_ = this.var_1023.createWidget(param1);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.messageListener = this;
         _loc2_.registerUpdateEvents(this._events);
         this.var_193.addWidgetWindow(_loc2_.mainWindow);
         if(!this.var_59.add(param1,_loc2_))
         {
            _loc2_.dispose();
         }
         switch(param1)
         {
            case RoomWidgetEnum.const_374:
               _loc5_ = new ChatWidgetHandler();
               _loc5_.connection = this._connection;
               _loc3_ = _loc5_ as IRoomWidgetHandler;
               break;
            case RoomWidgetEnum.const_501:
               _loc3_ = new InfoStandWidgetHandler();
               break;
            case RoomWidgetEnum.CHAT_INPUT_WIDGET:
               _loc3_ = new ChatInputWidgetHandler();
               break;
            case RoomWidgetEnum.const_447:
               _loc3_ = new MeMenuWidgetHandler();
               break;
            case RoomWidgetEnum.const_736:
               _loc3_ = new PlaceholderWidgetHandler();
               break;
            case RoomWidgetEnum.const_448:
               _loc3_ = new FurnitureCreditWidgetHandler();
               break;
            case RoomWidgetEnum.const_495:
               _loc3_ = new FurnitureStickieWidgetHandler();
               break;
            case RoomWidgetEnum.const_478:
               _loc3_ = new FurniturePresentWidgetHandler();
               break;
            case RoomWidgetEnum.const_477:
               _loc3_ = new FurnitureTrophyWidgetHandler();
               break;
            case RoomWidgetEnum.const_508:
               _loc3_ = new FurnitureTeaserWidgetHandler();
               break;
            case RoomWidgetEnum.const_429:
               _loc3_ = new FurnitureEcotronBoxWidgetHandler();
               break;
            case RoomWidgetEnum.const_114:
               _loc3_ = new DoorbellWidgetHandler();
               break;
            case RoomWidgetEnum.const_735:
               _loc3_ = new RoomQueueWidgetHandler();
               break;
            case RoomWidgetEnum.const_500:
               _loc3_ = new LoadingBarWidgetHandler();
               break;
            case RoomWidgetEnum.const_118:
               _loc3_ = new VoteWidgetHandler();
               break;
            case RoomWidgetEnum.const_367:
               _loc3_ = new PollWidgetHandler();
               break;
            case RoomWidgetEnum.const_550:
               _loc3_ = new FurniChooserWidgetHandler();
               break;
            case RoomWidgetEnum.const_300:
               _loc3_ = new UserChooserWidgetHandler();
               break;
            case RoomWidgetEnum.const_485:
               _loc3_ = new FurnitureDimmerWidgetHandler();
               break;
            case RoomWidgetEnum.const_139:
               _loc3_ = new FriendRequestWidgetHandler();
               break;
            case RoomWidgetEnum.const_526:
               _loc3_ = new FurnitureClothingChangeWidgetHandler();
               break;
            case RoomWidgetEnum.const_820:
               _loc3_ = new ConversionPointWidgetHandler();
               break;
            case RoomWidgetEnum.const_117:
               _loc3_ = new UserNotificationWidgetHandler();
               break;
            case RoomWidgetEnum.const_400:
               _loc3_ = new PurseWidgetHandler();
         }
         if(_loc3_ != null)
         {
            _loc3_.container = this;
            if(!this.var_503.add(param1,_loc3_))
            {
               _loc3_.dispose();
            }
            _loc6_ = null;
            _loc7_ = _loc3_.getWidgetMessages();
            if(_loc7_ != null)
            {
               for each(_loc9_ in _loc7_)
               {
                  _loc6_ = this.var_754.getValue(_loc9_);
                  if(_loc6_ == null)
                  {
                     _loc6_ = [];
                     this.var_754.add(_loc9_,_loc6_);
                  }
                  else
                  {
                     Logger.log("Room widget message \'" + _loc9_ + "\' handled by more than one widget message handler, could cause problems. Be careful!");
                  }
                  _loc6_.push(_loc3_);
               }
            }
            _loc8_ = _loc3_.getProcessedEvents();
            if(_loc8_ != null)
            {
               for each(_loc10_ in _loc8_)
               {
                  _loc6_ = this.var_753.getValue(_loc10_);
                  if(_loc6_ == null)
                  {
                     _loc6_ = [];
                     this.var_753.add(_loc10_,_loc6_);
                  }
                  _loc6_.push(_loc3_);
               }
            }
         }
         param1 = "null";
         var _loc4_:RoomWidgetRoomViewUpdateEvent = new RoomWidgetRoomViewUpdateEvent(param1,this.var_193.roomViewRect);
         this.events.dispatchEvent(_loc4_);
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Array = this.var_754.getValue(param1.type);
         if(_loc2_ != null)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = _loc3_.processWidgetMessage(param1);
               if(_loc4_ != null)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc3_:* = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Array = this.var_753.getValue(param1.type);
         if(_loc2_ != null)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc3_.processEvent(param1);
            }
         }
      }
      
      public function roomObjectEventHandler(param1:RoomEngineObjectEvent) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = int(param1.objectId);
         var _loc3_:int = int(param1.category);
         var _loc4_:* = null;
         var _loc5_:* = null;
         switch(param1.type)
         {
            case RoomEngineObjectEvent.const_788:
               _loc4_ = new RoomWidgetRoomObjectUpdateEvent(RoomWidgetRoomObjectUpdateEvent.const_378,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               if(this.var_826 != null && _loc3_ == RoomObjectCategoryEnum.OBJECT_CATEGORY_USER)
               {
                  _loc7_ = this.var_31.userDataManager.getUserDataByIndex(_loc2_);
                  if(_loc7_ != null && _loc7_.type == RoomObjectTypeEnum.const_397)
                  {
                     this.var_826.userSelected(_loc7_.webID,_loc7_.name);
                  }
               }
               break;
            case RoomEngineObjectEvent.const_294:
               switch(_loc3_)
               {
                  case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
                  case RoomObjectCategoryEnum.const_27:
                     _loc6_ = "null";
                     break;
                  case RoomObjectCategoryEnum.OBJECT_CATEGORY_USER:
                     _loc6_ = "null";
               }
               if(_loc6_ != null)
               {
                  _loc4_ = new RoomWidgetRoomObjectUpdateEvent(_loc6_,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               }
               break;
            case RoomEngineObjectEvent.const_656:
               switch(_loc3_)
               {
                  case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
                  case RoomObjectCategoryEnum.const_27:
                     _loc6_ = "null";
                     break;
                  case RoomObjectCategoryEnum.OBJECT_CATEGORY_USER:
                     _loc6_ = "null";
               }
               if(_loc6_ != null)
               {
                  _loc4_ = new RoomWidgetRoomObjectUpdateEvent(_loc6_,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               }
               break;
            case RoomEngineObjectEvent.const_419:
               _loc4_ = new RoomWidgetRoomObjectUpdateEvent(RoomWidgetRoomObjectUpdateEvent.const_208,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               break;
            case RoomEngineObjectEvent.const_853:
               if(!this.var_31.isRoomController && !this.var_395.isAnyRoomController)
               {
                  return;
               }
               this._roomEngine.modifyRoomObject(param1.objectId,param1.category,RoomObjectOperationEnum.OBJECT_MOVE);
               break;
            case RoomEngineObjectEvent.const_143:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_614,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.ROOM_OBJECT_WIDGET_REQUEST_STICKIE:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_854,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_134:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_709,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_146:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_774,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_136:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_787,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_126:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_840,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_131:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_695,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_133:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_1172,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_438:
            case RoomEngineObjectEvent.const_451:
               this.handleRoomAdClick(param1);
               break;
            case RoomEngineObjectEvent.const_533:
            case RoomEngineObjectEvent.const_525:
               this.handleRoomAdTooltip(param1);
               break;
            case RoomEngineObjectEvent.const_103:
               this.processEvent(param1);
               break;
            case RoomEngineObjectEvent.const_138:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_839,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
         }
         if(_loc4_ != null)
         {
            this.events.dispatchEvent(_loc4_);
         }
      }
      
      public function roomEngineEventHandler(param1:RoomEngineEvent) : void
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case RoomEngineEvent.const_516:
               _loc2_ = new RoomWidgetRoomEngineUpdateEvent(RoomWidgetRoomEngineUpdateEvent.const_116,param1.roomId,param1.roomCategory);
               break;
            case RoomEngineEvent.const_469:
               _loc2_ = new RoomWidgetRoomEngineUpdateEvent(RoomWidgetRoomEngineUpdateEvent.const_1082,param1.roomId,param1.roomCategory);
         }
         if(_loc2_ != null)
         {
            this.events.dispatchEvent(_loc2_);
         }
      }
      
      public function createRoomView(param1:int) : void
      {
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = null;
         var _loc2_:Rectangle = this.var_193.roomViewRect;
         var _loc3_:int = _loc2_.width;
         var _loc4_:int = _loc2_.height;
         var _loc5_:int = 0;
         if(this.var_292.indexOf(param1) >= 0)
         {
            return;
         }
         if(this.var_31 == null || this._windowManager == null || this._roomEngine == null)
         {
            return;
         }
         var _loc6_:DisplayObject = this._roomEngine.createRoomCanvas(this.var_31.roomId,this.var_31.roomCategory,param1,_loc3_,_loc4_,_loc5_);
         if(_loc6_ == null)
         {
            return;
         }
         var _loc7_:RoomGeometry = this._roomEngine.getRoomCanvasGeometry(this.var_31.roomId,this.var_31.roomCategory,param1) as RoomGeometry;
         if(_loc7_ != null)
         {
            _loc13_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_798);
            _loc14_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_710);
            _loc15_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_830);
            _loc16_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_689);
            _loc17_ = (_loc13_ + _loc14_) / 2;
            _loc18_ = (_loc15_ + _loc16_) / 2;
            _loc19_ = 20;
            _loc17_ += _loc19_ - 1;
            _loc18_ += _loc19_ - 1;
            _loc20_ = Math.sqrt(_loc19_ * _loc19_ + _loc19_ * _loc19_) * Math.tan(0);
            _loc7_.location = new Vector3d(_loc17_,_loc18_,_loc20_);
         }
         var _loc8_:XmlAsset = this._assets.getAssetByName("room_view_container_xml") as XmlAsset;
         if(_loc8_ == null)
         {
            return;
         }
         var _loc9_:IWindowContainer = this._windowManager.buildFromXML(_loc8_.content as XML) as IWindowContainer;
         if(_loc9_ == null)
         {
            return;
         }
         _loc9_.width = _loc3_;
         _loc9_.height = _loc4_;
         var _loc10_:IDisplayObjectWrapper = _loc9_.findChildByName("room_canvas_wrapper") as IDisplayObjectWrapper;
         if(_loc10_ == null)
         {
            return;
         }
         _loc10_.setDisplayObject(_loc6_);
         _loc10_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_279,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_191,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_41,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_56,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_193,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowEvent.const_45,this.onRoomViewResized);
         var _loc11_:Sprite = new Sprite();
         _loc11_.mouseEnabled = false;
         _loc11_.blendMode = BlendMode.MULTIPLY;
         _loc10_ = _loc9_.findChildByName("colorizer_wrapper") as IDisplayObjectWrapper;
         if(_loc10_ == null)
         {
            return;
         }
         _loc10_.setDisplayObject(_loc11_);
         _loc10_.addEventListener(WindowEvent.const_45,this.resizeColorizer);
         if(this.var_31.isSpectatorMode)
         {
            _loc21_ = this.getSpectatorModeVisualization();
            if(_loc21_ != null)
            {
               _loc21_.width = _loc9_.width;
               _loc21_.height = _loc9_.height;
               _loc9_.addChild(_loc21_);
            }
         }
         this.var_193.addRoomView(_loc9_);
         this.var_292.push(param1);
         var _loc12_:String = this._roomEngine.method_3(this.var_31.roomId,this.var_31.roomCategory);
         if(!this._roomEngine.isPublicRoomWorldType(_loc12_))
         {
            this.var_2568 = true;
            this.var_1827 = getTimer();
         }
      }
      
      private function resizeColorizer(param1:WindowEvent) : void
      {
         var _loc2_:IDisplayObjectWrapper = param1.target as IDisplayObjectWrapper;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:Sprite = _loc2_.getDisplayObject() as Sprite;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.graphics.clear();
         _loc3_.graphics.beginFill(this.var_2569);
         _loc3_.graphics.drawRect(0,0,_loc2_.width,_loc2_.height);
         _loc3_.graphics.endFill();
      }
      
      public function setRoomViewColor(param1:uint, param2:int) : void
      {
         var _loc3_:IWindowContainer = this.var_193.getRoomView() as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:IDisplayObjectWrapper = _loc3_.getChildByName("colorizer_wrapper") as IDisplayObjectWrapper;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Sprite = _loc4_.getDisplayObject() as Sprite;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:int = ColorConverter.rgbToHSL(param1);
         _loc6_ = (_loc6_ & 16776960) + param2;
         param1 = ColorConverter.hslToRGB(_loc6_);
         this.var_2569 = param1;
         _loc5_.graphics.clear();
         _loc5_.graphics.beginFill(param1);
         _loc5_.graphics.drawRect(0,0,_loc4_.width,_loc4_.height);
         _loc5_.graphics.endFill();
      }
      
      public function getFirstCanvasId() : int
      {
         if(this.var_292 != null)
         {
            if(this.var_292.length > 0)
            {
               return this.var_292[0];
            }
         }
         return 0;
      }
      
      public function getRoomViewRect() : Rectangle
      {
         if(!this.var_193)
         {
            return null;
         }
         return this.var_193.roomViewRect;
      }
      
      public function canvasMouseHandler(param1:Event) : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         if(this._roomEngine == null || this.var_31 == null)
         {
            return;
         }
         var _loc2_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:String = "";
         switch(_loc2_.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_279:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_41:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_56:
            case WindowMouseEvent.const_193:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_191:
               _loc3_ = "null";
               break;
            default:
               return;
         }
         var _loc4_:IDisplayObjectWrapper = _loc2_.target as IDisplayObjectWrapper;
         if(_loc4_ == _loc2_.target)
         {
            _loc5_ = new Point();
            _loc4_.getGlobalPosition(_loc5_);
            _loc6_ = _loc2_.stageX - _loc5_.x;
            _loc7_ = _loc2_.stageY - _loc5_.y;
            this._roomEngine.setActiveRoom(this.var_31.roomId,this.var_31.roomCategory);
            this._roomEngine.handleRoomCanvasMouseEvent(this.var_292[0],_loc6_,_loc7_,_loc3_,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown);
         }
         if(_loc3_ == MouseEvent.MOUSE_MOVE && this.var_213 != null)
         {
            _loc8_ = new Point(_loc2_.stageX,_loc2_.stageY);
            _loc8_.offset(-this.var_213.width / 2,15);
            this.var_213.setGlobalPosition(_loc8_);
         }
      }
      
      private function onRoomViewResized(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.window;
         this._roomEngine.modifyRoomCanvas(this.var_31.roomId,this.var_31.roomCategory,this.var_292[0],_loc2_.width,_loc2_.height);
         var _loc3_:String = "null";
         this.events.dispatchEvent(new RoomWidgetRoomViewUpdateEvent(_loc3_,_loc2_.rectangle));
      }
      
      private function onToolbarRepositionEvent(param1:HabboToolbarEvent) : void
      {
         if(this.var_193 != null)
         {
            this.var_193.toolbarOrientation = param1.orientation;
         }
      }
      
      private function trackZoomTime(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.var_2568)
         {
            _loc2_ = getTimer();
            _loc3_ = Math.round((_loc2_ - this.var_1827) / 1000);
            if(this._habboTracking != null)
            {
               if(param1)
               {
                  this._habboTracking.track("zoomEnded","in",_loc3_);
               }
               else
               {
                  this._habboTracking.track("zoomEnded","out",_loc3_);
               }
            }
            this.var_1827 = _loc2_;
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.iconId == HabboToolbarIconEnum.ZOOM)
         {
            if(this.var_31 != null)
            {
               _loc2_ = this._roomEngine.getRoomCanvasGeometry(this.var_31.roomId,this.var_31.roomCategory,this.getFirstCanvasId());
               if(_loc2_ != null)
               {
                  this.trackZoomTime(_loc2_.isZoomedIn());
                  _loc2_.performZoom();
                  _loc3_ = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_105,HabboToolbarIconEnum.ZOOM);
                  if(_loc2_.isZoomedIn())
                  {
                     _loc3_.iconState = "2";
                     this.var_165.events.dispatchEvent(_loc3_);
                  }
                  else
                  {
                     _loc3_.iconState = "0";
                     this.var_165.events.dispatchEvent(_loc3_);
                  }
               }
            }
         }
      }
      
      public function update() : void
      {
         this.updateHandlers();
      }
      
      private function updateHandlers() : void
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_503.length)
         {
            _loc2_ = this.var_503.getWithIndex(_loc1_) as IRoomWidgetHandler;
            if(_loc2_ != null)
            {
               _loc2_.update();
            }
            _loc1_++;
         }
      }
      
      private function getWindowName(param1:int) : String
      {
         return "Room_Engine_Window_" + param1;
      }
      
      private function createFilter(param1:int, param2:int) : Array
      {
         var _loc3_:BlurFilter = new BlurFilter(2,2);
         return [];
      }
      
      private function getBitmapFilter(param1:int, param2:int) : BitmapFilter
      {
         var _loc3_:BitmapData = new BitmapData(param1,param2);
         _loc3_.perlinNoise(param1,param2,5,Math.random() * 2000000000,true,false);
         var _loc4_:Point = new Point(0,0);
         var _loc5_:int = 0;
         var _loc6_:uint = _loc5_;
         var _loc7_:uint = _loc5_;
         var _loc8_:Number = param1 / 20;
         var _loc9_:Number = -param1 / 25;
         var _loc10_:String = "null";
         return new DisplacementMapFilter(_loc3_,_loc4_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,0,0);
      }
      
      public function checkInterrupts() : void
      {
         if(this.var_17 != null && this.var_31 != null && this.var_1826 && this.var_1825)
         {
            this.var_17.startSession(this.var_31);
            this.processEvent(new RoomWidgetLoadingBarUpdateEvent(RoomWidgetLoadingBarUpdateEvent.const_317));
         }
      }
      
      public function setInterstitialCompleted() : void
      {
         this.var_1826 = true;
         this.checkInterrupts();
      }
      
      private function handleRoomAdClick(param1:RoomEngineObjectEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:IRoomObject = this._roomEngine.getRoomObject(param1.roomId,param1.roomCategory,param1.objectId,param1.category);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModel = _loc2_.getModel() as IRoomObjectModel;
         var _loc4_:String = _loc3_.getString(RoomObjectVariableEnum.const_396);
         if(_loc4_ == null || _loc4_.indexOf("http") != 0)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomEngineObjectEvent.const_438:
               if(this.var_31.isRoomController || this.var_395.isAnyRoomController)
               {
                  return;
               }
               HabboWebTools.openWebPage(_loc4_);
               break;
            case RoomEngineObjectEvent.const_451:
               if(!this.var_31.isRoomController && !this.var_395.isAnyRoomController)
               {
                  return;
               }
               HabboWebTools.openWebPage(_loc4_);
               break;
         }
      }
      
      private function handleRoomAdTooltip(param1:RoomEngineObjectEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomEngineObjectEvent.const_533:
               if(this.var_213 != null)
               {
                  return;
               }
               _loc2_ = this._roomEngine.getRoomObject(param1.roomId,param1.roomCategory,param1.objectId,param1.category);
               if(_loc2_ == null)
               {
                  return;
               }
               _loc3_ = this._localization.getKey(_loc2_.getType() + ".tooltip","${ads.roomad.tooltip}");
               this.var_213 = this._windowManager.createWindow("room_ad_tooltip",_loc3_,WindowType.const_344,WindowStyle.const_823,WindowParam.const_96) as IToolTipWindow;
               this.var_213.setParamFlag(WindowParam.const_29,false);
               this.var_213.visible = true;
               this.var_213.center();
               break;
            case RoomEngineObjectEvent.const_525:
               if(this.var_213 == null)
               {
                  return;
               }
               this.var_213.dispose();
               this.var_213 = null;
               break;
         }
      }
      
      private function getSpectatorModeVisualization() : IWindow
      {
         var _loc1_:XmlAsset = this._assets.getAssetByName("spectator_mode_xml") as XmlAsset;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:IWindowContainer = this._windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         if(_loc2_ == null)
         {
            return null;
         }
         this.setBitmap(_loc2_.findChildByName("top_left"),"spec_top_left_png");
         this.setBitmap(_loc2_.findChildByName("top_middle"),"spec_top_middle_png");
         this.setBitmap(_loc2_.findChildByName("top_right"),"spec_top_right_png");
         this.setBitmap(_loc2_.findChildByName("middle_left"),"spec_middle_left_png");
         this.setBitmap(_loc2_.findChildByName("middle_right"),"spec_middle_right_png");
         this.setBitmap(_loc2_.findChildByName("bottom_left"),"spec_bottom_left_png");
         this.setBitmap(_loc2_.findChildByName("bottom_middle"),"spec_bottom_middle_png");
         this.setBitmap(_loc2_.findChildByName("bottom_right"),"spec_bottom_right_png");
         return _loc2_;
      }
      
      private function setBitmap(param1:IWindow, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1 as IBitmapWrapperWindow;
         if(_loc3_ == null || this._assets == null)
         {
            return;
         }
         var _loc4_:BitmapDataAsset = this._assets.getAssetByName(param2) as BitmapDataAsset;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:BitmapData = _loc4_.content as BitmapData;
         if(_loc5_ == null)
         {
            return;
         }
         _loc3_.bitmap = _loc5_.clone();
      }
      
      public function initializeWidget(param1:String, param2:int = 0) : void
      {
         var _loc3_:IRoomWidget = this.var_59[param1];
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.initialize(param2);
      }
      
      public function getWidgetState(param1:String) : int
      {
         var _loc2_:IRoomWidget = this.var_59[param1];
         if(_loc2_ == null)
         {
            return const_562;
         }
         return _loc2_.state;
      }
   }
}
