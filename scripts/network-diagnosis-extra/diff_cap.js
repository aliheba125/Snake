var LOG = "/data/local/tmp/diff_cap.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }
w("=== DIFF CAPTURE ===");
function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            try {
                var p = args[3];
                if (p.isNull()) return;
                var str = p.readCString();
                if (str && str.indexOf("push-918") >= 0) {
                    w("REQUEST: " + str.substring(0, 300));
                }
            } catch(e) {}
        }
    });
    w("HOOKED");
}
tryHook();
