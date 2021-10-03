package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1920:int = 0;
      
      public static const const_1515:int = 1;
      
      public static const const_1605:int = 2;
      
      public static const const_1710:int = 3;
      
      public static const const_1857:int = 4;
      
      public static const const_1912:int = 5;
      
      public static const const_1462:int = 10;
      
      public static const const_1906:int = 11;
      
      public static const const_1819:int = 12;
      
      public static const const_1790:int = 13;
      
      public static const const_1707:int = 16;
      
      public static const const_1769:int = 17;
      
      public static const const_1883:int = 18;
      
      public static const const_1787:int = 19;
      
      public static const const_1751:int = 20;
      
      public static const const_1885:int = 22;
      
      public static const const_1733:int = 23;
      
      public static const const_1924:int = 24;
      
      public static const const_1836:int = 25;
      
      public static const const_1916:int = 26;
      
      public static const const_1853:int = 27;
      
      public static const const_1735:int = 28;
      
      public static const const_1892:int = 29;
      
      public static const const_1911:int = 100;
      
      public static const const_1848:int = 101;
      
      public static const const_1919:int = 102;
      
      public static const const_1758:int = 103;
      
      public static const const_1801:int = 104;
      
      public static const const_1827:int = 105;
      
      public static const const_1862:int = 106;
      
      public static const const_1732:int = 107;
      
      public static const const_1882:int = 108;
      
      public static const const_1887:int = 109;
      
      public static const const_1699:int = 110;
      
      public static const const_1822:int = 111;
      
      public static const const_1897:int = 112;
      
      public static const const_1855:int = 113;
      
      public static const const_1761:int = 114;
      
      public static const const_1767:int = 115;
      
      public static const const_1739:int = 116;
      
      public static const const_1869:int = 117;
      
      public static const const_1832:int = 118;
      
      public static const const_1918:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1515:
            case const_1462:
               return "banned";
            case const_1605:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
