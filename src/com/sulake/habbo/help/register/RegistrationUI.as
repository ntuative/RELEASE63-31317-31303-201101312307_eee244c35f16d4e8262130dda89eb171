package com.sulake.habbo.help.register
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.communication.messages.outgoing.help.SendRegistrationDataComposer;
   import com.sulake.habbo.help.HabboHelp;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class RegistrationUI
   {
       
      
      private var var_178:HabboHelp;
      
      private var var_909:RegistrationView;
      
      public function RegistrationUI(param1:HabboHelp)
      {
         super();
         this.var_178 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this.var_178.windowManager;
      }
      
      public function get assets() : IAssetLibrary
      {
         return this.var_178.assets;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_178.localization;
      }
      
      public function get method_4() : String
      {
         return this.var_178.ownUserName;
      }
      
      public function dispose() : void
      {
         this.var_178 = null;
         if(this.var_909)
         {
            this.var_909.dispose();
            this.var_909 = null;
         }
      }
      
      public function showRegistrationView() : void
      {
         if(!this.var_909)
         {
            this.var_909 = new RegistrationView(this);
         }
         this.var_909.showMainView();
      }
      
      public function sendRegistrationEmail(param1:String, param2:String, param3:Boolean) : void
      {
         this.var_178.sendMessage(new SendRegistrationDataComposer(param1,param2,param3));
      }
   }
}
