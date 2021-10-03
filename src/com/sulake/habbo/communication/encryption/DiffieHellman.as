package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1034:BigInteger;
      
      private var var_2434:BigInteger;
      
      private var var_1997:BigInteger;
      
      private var var_2720:BigInteger;
      
      private var var_1575:BigInteger;
      
      private var var_1998:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1575 = param1;
         this.var_1998 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1575.toString() + ",generator: " + this.var_1998.toString() + ",secret: " + param1);
         this.var_1034 = new BigInteger();
         this.var_1034.fromRadix(param1,param2);
         this.var_2434 = this.var_1998.modPow(this.var_1034,this.var_1575);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1997 = new BigInteger();
         this.var_1997.fromRadix(param1,param2);
         this.var_2720 = this.var_1997.modPow(this.var_1034,this.var_1575);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2434.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2720.toRadix(param1);
      }
   }
}
