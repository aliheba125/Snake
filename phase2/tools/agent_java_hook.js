"use strict";
// Hook com.snake.helper.Native JNI methods + MethodChannel to trace the activation
// verdict path. Reveals whether "Code is Not valid" comes from ilil() (engine string
// decryption) and what triggers it.
var log = [];
var armed = false;

function rec(o){ o.ts = Date.now(); o.armed = armed; log.push(o); send({t:"LOG", rec:o}); }

setTimeout(function(){
  Java.perform(function(){
    try {
      var Native = Java.use("com.snake.helper.Native");

      Native.ilil.implementation = function(i){
        var r = this.ilil(i);
        rec({fn:"ilil", arg:i, ret:(r===null?null:r.toString())});
        return r;
      };
      try {
        Native.djp.implementation = function(i){
          var r = this.djp(i);
          var len = r ? r.length : -1;
          rec({fn:"djp", arg:i, retLen:len});
          return r;
        };
      } catch(e){}
      try {
        Native.awl.implementation = function(s){
          rec({fn:"awl", arg:(s===null?null:s.toString())});
          return this.awl(s);
        };
      } catch(e){}
      try {
        Native.aior.implementation = function(a,b){
          rec({fn:"aior", a:(a?a.toString():null), b:(b?b.toString():null)});
          return this.aior(a,b);
        };
      } catch(e){}
      try {
        Native.chl.implementation = function(b){
          var r = this.chl(b);
          rec({fn:"chl", retBool:r, inLen:(b?b.length:-1)});
          return r;
        };
      } catch(e){}

      // Native.il(String) -> String (calls z10.d().h) - string localization/decrypt
      try {
        Native.il.overload('java.lang.String').implementation = function(s){
          var r = this.il(s);
          rec({fn:"il(String)", arg:(s?s.toString():null), ret:(r?r.toString():null)});
          return r;
        };
      } catch(e){}

      send({t:"HOOKED", ok:true});
    } catch(e) {
      send({t:"HOOK_ERR", e:e.toString()});
    }
  });
}, 500);

rpc.exports = {
  arm: function(){ armed = true; return Date.now(); },
  getlog: function(){ return log; }
};
