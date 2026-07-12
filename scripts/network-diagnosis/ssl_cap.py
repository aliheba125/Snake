import frida, sys, time, subprocess
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
PID=int(sys.argv[1]); RUNTIME=int(sys.argv[2]) if len(sys.argv)>2 else 60
D='localhost:5555'
def sh(*a): subprocess.run(['adb','-s',D,'shell',*a], stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
session=dev.attach(PID); print('[*] attached pid=%d'%PID,flush=True)
JS=r'''
'use strict';
function findSSL(){
  var names=['SSL_write','SSL_read'];
  var res={};
  names.forEach(function(n){
    var f=null;
    try{ f=Module.getGlobalExportByName(n); }catch(e){}
    if(!f){
      var mods=Process.enumerateModules();
      for(var i=0;i<mods.length && !f;i++){
        try{ f=mods[i].findExportByName(n); }catch(e){}
        if(!f){ try{ var syms=mods[i].enumerateSymbols(); for(var j=0;j<syms.length;j++){ if(syms[j].name===n){ f=syms[j].address; break; } } }catch(e){} }
      }
    }
    res[n]=f;
  });
  return res;
}
function toHex(ptr,len){ try{ if(len<=0) return null; var n=Math.min(len,4096); var ba=ptr.readByteArray(n); return Array.prototype.map.call(new Uint8Array(ba),function(c){return('0'+c.toString(16)).slice(-2);}).join(''); }catch(e){ return null; } }
function toTxt(ptr,len){ try{ if(len<=0) return null; var s=ptr.readUtf8String(Math.min(len,4096)); return s; }catch(e){ return null; } }
var ssl=findSSL();
send({t:'log',m:'SSL_write='+ssl.SSL_write+' SSL_read='+ssl.SSL_read});
var cnt={w:0,r:0};
if(ssl.SSL_write){
  Interceptor.attach(ssl.SSL_write,{ onEnter:function(a){ cnt.w++; var buf=a[1], num=a[2].toInt32(); send({t:'W', len:num, txt:toTxt(buf,num), hex:toHex(buf,num)}); } });
}
if(ssl.SSL_read){
  Interceptor.attach(ssl.SSL_read,{ onEnter:function(a){ this.buf=a[1]; }, onLeave:function(ret){ var n=ret.toInt32(); if(n>0){ cnt.r++; send({t:'R', len:n, txt:toTxt(this.buf,n), hex:toHex(this.buf,n)}); } } });
}
rpc.exports={stats:function(){return cnt;}};
'''
seen=[]
def on(m,d):
    if m.get('type')=='send':
        p=m['payload'];t=p.get('t')
        if t=='log':print('[log]',p['m'],flush=True)
        elif t in('W','R'):
            seen.append(p)
            tx=p.get('txt')
            if tx and any(k in tx for k in ['snake','encryptedData','deviceId','http','HTTP','api','{','request','token']):
                print('[%s] len=%d TXT=%r'%(t,p['len'],tx[:500]),flush=True)
            else:
                print('[%s] len=%d hex=%s txt=%r'%(t,p['len'],(p['hex'] or '')[:80],(tx or '')[:80]),flush=True)
    elif m.get('type')=='error':print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS);s.on('message',on);s.load()
print('[*] capturing SSL for %ds'%RUNTIME,flush=True)
t0=time.time()
while time.time()-t0<RUNTIME:
    for (x,y) in [(360,785),(270,1096),(446,1096),(100,1096),(645,98),(360,500)]:
        sh('input','tap',str(x),str(y));time.sleep(1.3)
try:print('\n[COUNTS]',s.exports_sync.stats(),flush=True)
except Exception as e:print('[stats-skip]',e,flush=True)
try:session.detach()
except:pass
