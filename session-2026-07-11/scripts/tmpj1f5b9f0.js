
var f = new File("/data/local/tmp/patch_log.txt", "w");
f.write("Patch-all started\n");
var attempts = 0;
var iv = setInterval(function() {
    attempts++;
    var flutter = Process.findModuleByName("libflutter.so");
    if (flutter) {
        clearInterval(iv);
        f.write("libflutter at " + flutter.base + "\n");
        var targets = [4589992,4590236,4591196,4591296,4592228,4594284,4624196];
        for (var i = 0; i < targets.length; i++) {
            try {
                Memory.patchCode(flutter.base.add(targets[i]), 8, function(code) {
                    code.writeU32(0x52800000);
                    code.add(4).writeU32(0xD65F03C0);
                });
                f.write("  patched 0x" + targets[i].toString(16) + "\n");
            } catch(e) {
                f.write("  FAIL 0x" + targets[i].toString(16) + ": " + e + "\n");
            }
        }
        f.write("All patches applied after " + attempts + " attempts\n");
        f.flush();
    }
    if (attempts > 100) clearInterval(iv);
}, 50);
