package com.sulake.habbo.navigator.roomsettings
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ICheckBoxWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IRadioButtonWindow;
   import com.sulake.core.window.components.ISelectorWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   import com.sulake.habbo.communication.messages.outgoing.room.action.RemoveAllRightsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.action.RemoveRightsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.DeleteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.GetRoomSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.SaveRoomSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.SaveableRoomSettingsData;
   import com.sulake.habbo.communication.messages.parser.roomsettings.RoomSettingsSaveErrorMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.TextFieldManager;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.geom.Rectangle;
   
   public class RoomSettingsCtrl
   {
       
      
      private var _inRoom:Boolean;
      
      private var var_422:IRoomSettingsCtrlOwner;
      
      private var var_362:int;
      
      private var _navigator:HabboNavigator;
      
      private var var_78:RoomSettingsData;
      
      private var var_1184:int;
      
      private var _window:IWindowContainer;
      
      private var _active:Boolean;
      
      private var var_1893:Boolean;
      
      private var var_517:Boolean;
      
      private var var_776:TextFieldManager;
      
      private var var_1182:TextFieldManager;
      
      private var var_838:TextFieldManager;
      
      private var var_839:TextFieldManager;
      
      private var var_959:TextFieldManager;
      
      private var var_1183:TextFieldManager;
      
      private var var_1185:ICheckBoxWindow;
      
      private var var_1189:ICheckBoxWindow;
      
      private var var_1190:ICheckBoxWindow;
      
      private var var_630:ICheckBoxWindow;
      
      private var var_1894:IWindowContainer;
      
      private var var_1448:IWindowContainer;
      
      private var var_1187:IWindowContainer;
      
      private var var_1188:IWindowContainer;
      
      private var var_1892:IWindowContainer;
      
      private var var_1449:IWindowContainer;
      
      private var var_262:IWindowContainer;
      
      private var var_1186:IWindowContainer;
      
      private var var_2678:ITextWindow;
      
      private var var_2677:ITextWindow;
      
      private var var_1895:ITextWindow;
      
      public function RoomSettingsCtrl(param1:HabboNavigator, param2:IRoomSettingsCtrlOwner, param3:Boolean)
      {
         super();
         this._navigator = param1;
         this.var_422 = param2;
         this._inRoom = param3;
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
         this.var_517 = false;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function load(param1:int) : void
      {
         this.var_362 = param1;
         this._navigator.send(new GetRoomSettingsMessageComposer(this.var_362));
         if(this.var_1186 != null)
         {
            this.var_1186.visible = false;
         }
      }
      
      public function onRoomSettings(param1:RoomSettingsData) : void
      {
         if(param1.roomId != this.var_362)
         {
            return;
         }
         this.var_78 = param1;
         this._active = true;
         this.var_1893 = true;
         this.var_422.roomSettingsRefreshNeeded();
      }
      
      public function onFlatControllerAdded(param1:int, param2:FlatControllerData) : void
      {
         if(param1 != this.var_362)
         {
            return;
         }
         if(!this.controllerExists(param2.userId))
         {
            this.var_78.controllers.splice(0,0,param2);
            ++this.var_78.controllerCount;
         }
         if(this.var_517)
         {
            this.var_422.roomSettingsRefreshNeeded();
         }
      }
      
      private function controllerExists(param1:int) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_78.controllers.length)
         {
            _loc3_ = this.var_78.controllers[_loc2_];
            if(_loc3_.userId == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function onFlatControllerRemoved(param1:int, param2:int) : void
      {
         var _loc4_:* = null;
         if(param1 != this.var_362)
         {
            return;
         }
         --this.var_78.controllerCount;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_78.controllers.length)
         {
            _loc4_ = this.var_78.controllers[_loc3_];
            if(_loc4_.userId == param2)
            {
               this.var_78.controllers.splice(_loc3_,1);
            }
            else
            {
               _loc3_++;
            }
         }
         if(this.var_517)
         {
            this.var_422.roomSettingsRefreshNeeded();
         }
      }
      
      public function onRoomSettingsSaved(param1:int) : void
      {
         if(param1 != this.var_362 || this.var_1184 < 1)
         {
            return;
         }
         this.close();
         this.var_422.roomSettingsRefreshNeeded();
      }
      
      public function onRoomSettingsSaveError(param1:int, param2:int, param3:String) : void
      {
         if(param1 != this.var_362 || this.var_1184 < 1)
         {
            return;
         }
         this.var_1184 = 0;
         if(param2 == RoomSettingsSaveErrorMessageParser.const_1552)
         {
            this.var_776.displayError("${navigator.roomsettings.roomnameismandatory}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1535)
         {
            this.var_776.displayError("${navigator.roomsettings.unacceptablewords}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1510)
         {
            this.var_1182.displayError("${navigator.roomsettings.unacceptablewords}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1345)
         {
            this.setTagError(this.var_838,param3,"${navigator.roomsettings.unacceptablewords}");
            this.setTagError(this.var_839,param3,"${navigator.roomsettings.unacceptablewords}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1507)
         {
            this.setTagError(this.var_838,param3,"${navigator.roomsettings.nonuserchoosabletag}");
            this.setTagError(this.var_839,param3,"${navigator.roomsettings.nonuserchoosabletag}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1490)
         {
            this.var_959.displayError("${navigator.roomsettings.passwordismandatory}");
         }
         else
         {
            this.var_776.displayError("Update failed: error " + param2);
         }
      }
      
      private function setTagError(param1:TextFieldManager, param2:String, param3:String) : void
      {
         if(param2 == param1.getText().toLowerCase())
         {
            param1.displayError(param3);
         }
      }
      
      public function close() : void
      {
         this._active = false;
         this.var_362 = 0;
         this.var_78 = null;
         this.var_1184 = 0;
      }
      
      private function clearErrors() : void
      {
         this.var_776.clearErrors();
         this.var_1182.clearErrors();
         this.var_838.clearErrors();
         this.var_839.clearErrors();
         this.var_959.clearErrors();
         this.var_1183.clearErrors();
      }
      
      private function prepareWindow(param1:IWindowContainer) : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("ros_room_settings"));
         param1.addChildAt(this._window,0);
         var _loc2_:IRadioButtonWindow = this._window.findChildByName("doormode_password") as IRadioButtonWindow;
         _loc2_.addEventListener(WindowEvent.const_512,this.onDoorModePasswordSelect);
         _loc2_.addEventListener(WindowEvent.const_730,this.onDoorModePasswordUnselect);
         this.getSaveButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onSaveButtonClick);
         this.getCancelButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCancelButtonClick);
         this.getDeleteButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onDeleteButtonClick);
         Util.setProc(this._window,"edit_thumbnail",this.onEditThumbnailButtonClick);
         Util.setProc(this._window,"remove_all_flat_ctrls",this.onRemoveAllFlatCtrlsClick);
         Util.setProc(this._window,"remove_flat_ctrl",this.onRemoveFlatCtrlClick);
         this.var_776 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("room_name")),60);
         this.var_1182 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("description")),255);
         this.var_838 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("tag1")),30);
         this.var_839 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("tag2")),30);
         this.var_959 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("password")),30);
         this.var_1183 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("password_confirm")),30);
         this.var_1185 = ICheckBoxWindow(this._window.findChildByName("allow_pets_checkbox"));
         this.var_1189 = ICheckBoxWindow(this._window.findChildByName("allow_foodconsume_checkbox"));
         this.var_1190 = ICheckBoxWindow(this._window.findChildByName("allow_walk_through_checkbox"));
         this.var_630 = ICheckBoxWindow(this._window.findChildByName("hide_walls_checkbox"));
         this.var_1894 = IWindowContainer(this._window.findChildByName("header_container"));
         this.var_1448 = IWindowContainer(this._window.findChildByName("thumbnail_container"));
         this.var_1187 = IWindowContainer(this._window.findChildByName("basic_settings_container"));
         this.var_1188 = IWindowContainer(this._window.findChildByName("advanced_settings_container"));
         this.var_1892 = IWindowContainer(this._window.findChildByName("switch_view_container"));
         this.var_1449 = IWindowContainer(this._window.findChildByName("footer_container"));
         this.var_262 = IWindowContainer(this._window.findChildByName("flat_controllers_container"));
         this.var_1186 = IWindowContainer(this._window.findChildByName("password_container"));
         this.var_2678 = ITextWindow(this._window.findChildByName("basic_caption"));
         this.var_2677 = ITextWindow(this._window.findChildByName("advanced_caption"));
         this.var_1895 = ITextWindow(this._window.findChildByName("switch_view_text"));
         this.var_1895.procedure = this.onSwitchView;
         this.var_1186.visible = false;
         if(!this._inRoom)
         {
            this._window.color = 4294967295;
            Util.setColors(this._window,4278190080);
         }
      }
      
      private function getSaveButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("save"));
      }
      
      private function getCancelButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("cancel"));
      }
      
      private function getDeleteButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("delete"));
      }
      
      public function refresh(param1:IWindowContainer) : void
      {
         if(!this._active)
         {
            return;
         }
         this.prepareWindow(param1);
         Util.hideChildren(this._window);
         this.var_1894.visible = this._inRoom;
         this.var_1892.visible = this._inRoom;
         this.var_2677.visible = this.var_517;
         this.var_2678.visible = !this.var_517;
         if(this.var_517)
         {
            this.var_1188.visible = true;
            this.var_1449.visible = false;
            this.refreshFlatControllers();
            this.var_1188.height = Util.getLowestPoint(this.var_1188) + 4;
         }
         else
         {
            this.populateForm();
            this.var_1187.visible = true;
            this.var_1449.visible = true;
            this.var_1448.visible = this._inRoom;
            this._navigator.thumbRenderer.refreshThumbnail(IWindowContainer(this.var_1448.findChildByName("picframe")),this._navigator.data.enteredGuestRoom.thumbnail,false);
            this.var_1187.height = Util.getLowestPoint(this.var_1187) + 4;
         }
         this.var_1895.text = !!this.var_517 ? "${navigator.roomsettings.tobasicsettings}" : "${navigator.roomsettings.toadvancedsettings}";
         Util.moveChildrenToColumn(this._window,[this.var_1894.name,this.var_1448.name,this.var_1187.name,this.var_1188.name,this.var_1449.name,this.var_1892.name],0,0);
         this._window.height = Util.getLowestPoint(this._window) + 4;
         this._window.visible = true;
      }
      
      private function populateForm() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         if(!this.var_1893)
         {
            return;
         }
         this.var_1893 = false;
         var _loc1_:RoomSettingsData = this.var_78;
         this.var_776.setText(_loc1_.name);
         this.var_1182.setText(_loc1_.description);
         this.var_959.setText("");
         this.var_1183.setText("");
         var _loc2_:ISelectorWindow = this._window.findChildByName("doormode") as ISelectorWindow;
         var _loc3_:IRadioButtonWindow = this._window.findChildByName("doormode_password") as IRadioButtonWindow;
         switch(_loc1_.doorMode)
         {
            case RoomSettingsData.const_175:
               _loc4_ = this._window.findChildByName("doormode_doorbell") as IRadioButtonWindow;
               _loc2_.setSelected(_loc4_);
               break;
            case RoomSettingsData.const_109:
               _loc2_.setSelected(_loc3_);
               break;
            default:
               _loc5_ = this._window.findChildByName("doormode_open") as IRadioButtonWindow;
               _loc2_.setSelected(_loc5_);
         }
         this.changePasswordField(_loc1_.doorMode == RoomSettingsData.const_109);
         Logger.log("CATEGORY ID: " + _loc1_.categoryId);
         this.setCategorySelection(_loc1_.categoryId);
         this.refreshMaxVisitors(_loc1_);
         this.setTag(this.var_838,_loc1_.tags[0]);
         this.setTag(this.var_839,_loc1_.tags[1]);
         if(this.var_1185)
         {
            if(_loc1_.allowPets)
            {
               this.var_1185.select();
            }
            else
            {
               this.var_1185.unselect();
            }
         }
         if(this.var_1189)
         {
            if(_loc1_.allowFoodConsume)
            {
               this.var_1189.select();
            }
            else
            {
               this.var_1189.unselect();
            }
         }
         if(this.var_1190)
         {
            if(_loc1_.allowWalkThrough)
            {
               this.var_1190.select();
            }
            else
            {
               this.var_1190.unselect();
            }
         }
         if(this.var_630)
         {
            if(_loc1_.hideWalls)
            {
               this.var_630.select();
            }
            else
            {
               this.var_630.unselect();
            }
            _loc6_ = 1;
            _loc7_ = 16777215;
            if(!this.hideWallsAllowed())
            {
               this.var_630.disable();
               _loc6_ = 0.5;
               _loc7_ = 8421504;
            }
            else
            {
               this.var_630.enable();
            }
            this.var_630.blend = _loc6_;
            _loc8_ = this._window.findChildByName("hide_walls_text") as ITextWindow;
            if(_loc8_)
            {
               _loc8_.textColor = _loc7_;
            }
         }
         this.clearErrors();
      }
      
      private function hideWallsAllowed() : Boolean
      {
         return this._navigator.sessionData.hasUserRight("fuse_hide_room_walls");
      }
      
      private function setTag(param1:TextFieldManager, param2:String) : void
      {
         param1.setText(param2 == null ? "" : param2);
      }
      
      private function refreshMaxVisitors(param1:RoomSettingsData) : void
      {
         var _loc2_:Array = new Array();
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         var _loc5_:int = 10;
         while(_loc5_ <= param1.maximumVisitorsLimit)
         {
            _loc2_.push("" + _loc5_);
            if(_loc5_ == param1.maximumVisitors)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
            _loc5_ += 5;
         }
         var _loc6_:IDropMenuWindow = this._window.findChildByName("maxvisitors") as IDropMenuWindow;
         _loc6_.populate(_loc2_);
         _loc6_.selection = _loc3_ > -1 ? int(_loc3_) : 0;
      }
      
      private function setCategorySelection(param1:int) : void
      {
         var _loc6_:* = null;
         var _loc2_:IDropMenuWindow = this._window.findChildByName("categories") as IDropMenuWindow;
         var _loc3_:Array = new Array();
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         for each(_loc6_ in this._navigator.data.allCategories)
         {
            if(_loc6_.visible || param1 == _loc6_.nodeId)
            {
               _loc3_.push(_loc6_.nodeName);
               if(param1 == _loc6_.nodeId)
               {
                  _loc4_ = _loc5_;
               }
               _loc5_++;
            }
         }
         _loc2_.populate(_loc3_);
         _loc2_.selection = _loc4_;
      }
      
      private function getFlatCategoryByIndex(param1:int, param2:int) : FlatCategory
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this._navigator.data.allCategories)
         {
            if(_loc4_.visible || param1 == _loc4_.nodeId)
            {
               if(param2 == _loc3_)
               {
                  return _loc4_;
               }
               _loc3_++;
            }
         }
         return null;
      }
      
      private function onEditThumbnailButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.roomInfoViewCtrl.startThumbnailEdit();
      }
      
      private function onSwitchView(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_517 = !this.var_517;
         this.var_422.roomSettingsRefreshNeeded();
      }
      
      private function onSaveButtonClick(param1:WindowMouseEvent) : void
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc2_:SaveableRoomSettingsData = new SaveableRoomSettingsData();
         _loc2_.roomId = this.var_78.roomId;
         _loc2_.name = this.var_776.getText();
         _loc2_.description = this.var_1182.getText();
         var _loc3_:ISelectorWindow = this._window.findChildByName("doormode") as ISelectorWindow;
         var _loc4_:IWindow = _loc3_.getSelected();
         switch(_loc4_.name)
         {
            case "doormode_doorbell":
               _loc2_.doorMode = RoomSettingsFlatInfo.const_175;
               break;
            case "doormode_password":
               _loc2_.doorMode = RoomSettingsFlatInfo.const_109;
               break;
            default:
               _loc2_.doorMode = RoomSettingsFlatInfo.const_481;
         }
         if(_loc2_.doorMode == RoomSettingsFlatInfo.const_109)
         {
            _loc8_ = this.var_959.getText();
            _loc9_ = this.var_1183.getText();
            if(_loc8_ != _loc9_)
            {
               this.var_959.clearErrors();
               this.var_1183.displayError("${navigator.roomsettings.invalidconfirm}");
               return;
            }
            if(_loc8_ != "")
            {
               _loc2_.password = _loc8_;
            }
         }
         var _loc5_:IDropMenuWindow = this._window.findChildByName("categories") as IDropMenuWindow;
         var _loc6_:FlatCategory = this.getFlatCategoryByIndex(this.var_78.categoryId,_loc5_.selection);
         _loc2_.categoryId = _loc6_.nodeId;
         var _loc7_:IDropMenuWindow = this._window.findChildByName("maxvisitors") as IDropMenuWindow;
         _loc2_.maximumVisitors = 10 + _loc7_.selection * 5;
         _loc2_.allowPets = this.var_1185.isSelected;
         _loc2_.allowFoodConsume = this.var_1189.isSelected;
         _loc2_.allowWalkThrough = this.var_1190.isSelected;
         _loc2_.hideWalls = this.var_630.isSelected;
         _loc2_.tags = new Array();
         this.addTag(this.var_838,_loc2_.tags);
         this.addTag(this.var_839,_loc2_.tags);
         this.clearErrors();
         this.var_1184 = _loc2_.roomId;
         this._navigator.send(new SaveRoomSettingsMessageComposer(_loc2_));
      }
      
      private function addTag(param1:TextFieldManager, param2:Array) : void
      {
         if(param1.getText() != "")
         {
            param2.push(param1.getText());
         }
      }
      
      private function onCancelButtonClick(param1:WindowMouseEvent) : void
      {
         this.close();
         this.var_422.roomSettingsRefreshNeeded();
      }
      
      private function onDeleteButtonClick(param1:WindowMouseEvent) : void
      {
         Logger.log("[RoomSettingsCtrl.onDeleteButtonClick] " + this.var_362);
         this._navigator.registerParameter("navigator.roomsettings.deleteroom.confirm.message","room_name",this.var_78.name);
         var _loc2_:ConfirmDialogView = new ConfirmDialogView(IFrameWindow(this._navigator.getXmlWindow("ros_room_delete_confirm")),this,this.onConfirmRoomDelete,[this.var_362]);
         _loc2_.show();
      }
      
      private function onConfirmRoomDelete(param1:WindowMouseEvent, param2:int) : void
      {
         var _loc3_:* = null;
         this._navigator.send(new DeleteRoomMessageComposer(param2));
         this.close();
         this.var_422.roomSettingsRefreshNeeded();
         if(this._navigator.data.guestRoomSearchResults != null)
         {
            _loc3_ = this._navigator.data.guestRoomSearchResults;
            this._navigator.mainViewCtrl.startSearch(this._navigator.tabs.getSelected().id,_loc3_.searchType,_loc3_.searchParam);
         }
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_157,HabboToolbarIconEnum.ROOMINFO));
      }
      
      private function onDoorModePasswordSelect(param1:WindowEvent) : void
      {
         this.changePasswordField(true);
      }
      
      private function onDoorModePasswordUnselect(param1:WindowEvent) : void
      {
         this.changePasswordField(false);
      }
      
      private function changePasswordField(param1:Boolean) : void
      {
         this.var_1186.visible = param1;
         this.var_422.roomSettingsRefreshNeeded();
      }
      
      private function refreshFlatControllers() : void
      {
         var _loc10_:* = null;
         var _loc1_:IWindowContainer = IWindowContainer(this.var_262.findChildByName("flat_controller_list"));
         var _loc2_:IButtonWindow = IButtonWindow(this.var_262.findChildByName("remove_flat_ctrl"));
         var _loc3_:IButtonWindow = IButtonWindow(this.var_262.findChildByName("remove_all_flat_ctrls"));
         var _loc4_:IWindow = this.var_262.findChildByName("flat_ctrls_caption_txt");
         var _loc5_:IWindow = this.var_262.findChildByName("flat_ctrls_info_txt");
         var _loc6_:IWindow = this.var_262.findChildByName("flat_ctrls_limit_txt");
         var _loc7_:IWindowContainer = IWindowContainer(this.var_262.findChildByName("flat_controllers_footer"));
         Util.hideChildren(this.var_262);
         this.var_262.findChildByName("ruler").visible = true;
         this._navigator.registerParameter("navigator.roomsettings.flatctrls.caption","cnt","" + this.var_78.controllerCount);
         _loc4_.visible = true;
         Util.hideChildren(_loc1_);
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         while(_loc9_ < this.var_78.controllers.length)
         {
            _loc10_ = this.var_78.controllers[_loc9_];
            this.refreshFlatController(_loc1_,_loc9_,_loc10_);
            if(_loc10_.selected)
            {
               _loc8_ = true;
            }
            _loc9_++;
         }
         Util.layoutChildrenInArea(_loc1_,_loc1_.width,15);
         _loc1_.height = Util.getLowestPoint(_loc1_);
         if(this.var_78.controllers.length > 0)
         {
            _loc1_.visible = true;
            _loc7_.visible = true;
            _loc5_.visible = true;
            if(this.var_78.controllerCount > this.var_78.controllers.length)
            {
               this._navigator.registerParameter("navigator.roomsettings.flatctrls.limitinfo","cnt","" + this.var_78.controllers.length);
               _loc6_.visible = true;
            }
            Util.moveChildrenToColumn(this.var_262,["flat_ctrls_caption_txt","flat_ctrls_limit_txt","flat_controller_list","flat_ctrls_info_txt","flat_controllers_footer"],_loc4_.y,5);
         }
         else
         {
            _loc7_.visible = false;
            _loc5_.visible = false;
            _loc7_.y = _loc1_.y + _loc1_.height + 5;
         }
         if(_loc8_)
         {
            _loc2_.enable();
         }
         else
         {
            _loc2_.disable();
         }
         this.var_262.height = Util.getLowestPoint(this.var_262);
      }
      
      private function refreshFlatController(param1:IWindowContainer, param2:int, param3:FlatControllerData) : void
      {
         var _loc6_:* = null;
         var _loc4_:String = "fc." + param2;
         var _loc5_:IWindowContainer = IWindowContainer(param1.getChildByName(_loc4_));
         if(param3 == null)
         {
            if(_loc5_ != null)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            if(_loc5_ == null)
            {
               _loc5_ = this.getFlatControllerContainer(_loc4_);
               param1.addChild(_loc5_);
               _loc5_.addChild(this._navigator.getXmlWindow("ros_flat_controller"));
            }
            _loc6_ = ITextWindow(_loc5_.findChildByName("flat_controller"));
            _loc6_.text = param3.userName;
            _loc6_.id = param3.userId;
            Util.setProcDirectly(_loc6_,this.onFlatControllerClick);
            _loc6_.width = _loc6_.textWidth + 5;
            _loc5_.width = _loc6_.width + 3;
            _loc5_.height = _loc6_.height;
            _loc6_.color = !!param3.selected ? 4294967295 : uint(4286216826);
            Logger.log("HUMP: " + param3.userName + ", " + param3.selected + ", " + _loc6_.textBackgroundColor);
            _loc5_.visible = true;
         }
      }
      
      private function getFlatControllerContainer(param1:String) : IWindowContainer
      {
         return IWindowContainer(this._navigator.windowManager.createWindow(param1,"",HabboWindowType.const_59,HabboWindowStyle.const_31,HabboWindowParam.const_62,new Rectangle(0,0,100,20)));
      }
      
      private function onFlatControllerClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:ITextWindow = ITextWindow(param2);
         var _loc4_:int = _loc3_.id;
         Logger.log("FC clicked: " + _loc3_.name + ", " + _loc4_);
         var _loc5_:FlatControllerData = this.getFlatCtrl(_loc4_);
         if(_loc5_ == null)
         {
            Logger.log("Couldn\'t find fc: " + _loc4_);
            return;
         }
         _loc5_.selected = !_loc5_.selected;
         this.var_422.roomSettingsRefreshNeeded();
      }
      
      private function getFlatCtrl(param1:int) : FlatControllerData
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_78.controllers)
         {
            if(_loc2_.userId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function hasSelectedFlatCtrls() : Boolean
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_78.controllers)
         {
            if(_loc1_.selected)
            {
               return true;
            }
         }
         return false;
      }
      
      private function onRemoveAllFlatCtrlsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Remove all clicked: ");
         this._navigator.send(new RemoveAllRightsMessageComposer(this.var_362));
      }
      
      private function onRemoveFlatCtrlClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Remove clicked: ");
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.var_78.controllers)
         {
            if(_loc4_.selected)
            {
               _loc3_.push(_loc4_.userId);
            }
         }
         _loc5_ = new RemoveRightsMessageComposer(_loc3_);
         this._navigator.send(_loc5_);
      }
   }
}
