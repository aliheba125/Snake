"""
Detect TLS records in raw libc read/write to confirm Flutter 
uses libc for socket I/O (even if SSL is internal to libflutter).
If TLS records are visible, we know the encrypted bytes pass through libc.
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Switch to listen mode and restart
adb("am force-stop com.snake")
time.sleep(1)
subprocess.run(["adb","shell","echo '{\"interaction\":{\"type\":\"listen\",\"address\":\"127.0.0.1\",\"port\":27052,\"on_load\":\"resume\"}}' > /system/lib64/libskia_android.config.so"], capture_output=True, timeout=5)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")
time.sleep(18)
subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

SCRIPT = """
var libc = Process.findModuleByName("libc.so");
var write_fn = libc.findExportByName("write");
var read_fn = libc.findExportByName("read");

var tls_w = 0, tls_r = 0;

// Detect TLS Application Data records: starts with 0x17 0x03 0x03
Interceptor.attach(write_fn, {
    onEnter: function(args) {
        var len = args[2].toInt32();
        if (len > 5 && len < 65536) {
            try {
                var b = args[1];
                if (b.readU8() === 0x17 && b.add(1).readU8() === 0x03) {
                    tls_w++;
                    if (tls_w <= 3) {
                        var recLen = (b.add(3).readU8() << 8) | b.add(4).readU8();
                        send("TLS_W fd=" + args[0].toInt32() + " rec=" + recLen + " total=" + len);
                    }
                }
                // Also detect TLS Handshake (0x16)
                if (b.readU8() === 0x16 && b.add(1).readU8() === 0x03) {
                    send("TLS_HANDSHAKE_W fd=" + args[0].toInt32() + " len=" + len);
                }
            } catch(e) {}
        }
    }
});

Interceptor.attach(read_fn, {
    onEnter: function(args) { this.fd = args[0].toInt32(); this.buf = args[1]; },
    onLeave: function(ret) {
        var len = ret.toInt32();
        if (len > 5) {
            try {
                var b = this.buf;
                if (b.readU8() === 0x17 && b.add(1).readU8() === 0x03) {
                    tls_r++;
                    if (tls_r <= 3) {
                        var recLen = (b.add(3).readU8() << 8) | b.add(4).readU8();
                        send("TLS_R fd=" + this.fd + " rec=" + recLen + " total=" + len);
                    }
                }
                if (b.readU8() === 0x16 && b.add(1).readU8() === 0x03) {
                    send("TLS_HANDSHAKE_R fd=" + this.fd + " len=" + len);
                }
            } catch(e) {}
        }
    }
});

send("TLS detection active");
setTimeout(function() { send("10s: writes=" + tls_w + " reads=" + tls_r); }, 10000);
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        print("  " + str(m["payload"]))

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(12)

print("\nTotal events:", len(events))
session.detach()
