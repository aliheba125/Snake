// Minimal SSL plaintext capturer for gadget "script" interaction (loads early, no Java bridge, no event loop needed).
var OUT = '/data/local/tmp/ssl_cap.log';
function flog(o) { try { var f = new File(OUT, 'a'); f.write(JSON.stringify(o) + '\n'); f.flush(); f.close(); } catch (e) {} }
function txt(p, l) { try { return p.readUtf8String(Math.min(l, 8192)); } catch (e) { return null; } }
function expAny(n) {
  var f = null;
  try { f = Module.getGlobalExportByName(n); } catch (e) {}
  if (!f) { var m = Process.enumerateModules(); for (var i = 0; i < m.length && !f; i++) { try { f = m[i].findExportByName(n); } catch (e) {} } }
  return f;
}
flog({ t: 'boot', ts: Date.now(), pid: Process.id });

var hooked = { w: false, r: false };
function installSSL(tag) {
  if (!hooked.w) { var w = expAny('SSL_write'); if (w) { Interceptor.attach(w, { onEnter: function (a) { var n = a[2].toInt32(); flog({ t: 'W', len: n, txt: txt(a[1], n) }); } }); hooked.w = true; flog({ t: 'log', m: 'SSL_write hooked @ ' + w + ' (' + tag + ')' }); } }
  if (!hooked.r) { var r = expAny('SSL_read'); if (r) { Interceptor.attach(r, { onEnter: function (a) { this.b = a[1]; }, onLeave: function (x) { var n = x.toInt32(); if (n > 0) flog({ t: 'R', len: n, txt: txt(this.b, n) }); } }); hooked.r = true; flog({ t: 'log', m: 'SSL_read hooked @ ' + r + ' (' + tag + ')' }); } }
}
installSSL('immediate');
// fallback: catch libflutter loading later
try {
  var dl = expAny('android_dlopen_ext') || expAny('dlopen');
  if (dl) Interceptor.attach(dl, { onLeave: function () { installSSL('post-dlopen'); } });
} catch (e) {}
