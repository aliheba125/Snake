#!/usr/bin/env python3
"""
capture_activation_request.py — Complete activation POST capture via:
1. Frida hook on getaddrinfo to redirect snakeseller.com → 127.0.0.1
2. Local HTTPS server (with mitmproxy CA-signed cert) captures plaintext request
3. Automated UI navigation to trigger activation

Requires: frida, adb access to device, mitmproxy cert installed on device.
Run from EC2 host.
"""
import frida, time, subprocess, json, sys, os, threading, ssl, http.server

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"
CAPTURE_FILE = "/tmp/activation_capture.json"

# ============ 1. Start local HTTPS server ============
class CaptureHandler(http.server.BaseHTTPRequestHandler):
    captures = []
    
    def do_POST(self):
        n = int(self.headers.get("Content-Length", 0))
        body = self.rfile.read(n).decode("utf-8", errors="replace")
        entry = {"method": "POST", "path": self.path, "headers": dict(self.headers), "body": body}
        CaptureHandler.captures.append(entry)
        print("\n[!!!] POST %s (%d bytes):\n%s\n" % (self.path, n, body[:500]), flush=True)
        resp = b'{"error":true,"error_code":-2,"message":"Code is Not valid"}'
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(resp)))
        self.end_headers()
        self.wfile.write(resp)

    def do_GET(self):
        entry = {"method": "GET", "path": self.path, "headers": dict(self.headers)}
        CaptureHandler.captures.append(entry)
        print("[GET] %s" % self.path, flush=True)
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"{}")

    def log_message(self, *a): pass

def start_server():
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx.load_cert_chain("/tmp/snake_server.crt", "/tmp/snake_server.key")
    srv = http.server.HTTPServer(("0.0.0.0", 443), CaptureHandler)
    srv.socket = ctx.wrap_socket(srv.socket, server_side=True)
    print("[SERVER] HTTPS :443 ready", flush=True)
    srv.serve_forever()

# Start server in thread
server_thread = threading.Thread(target=start_server, daemon=True)
server_thread.start()
time.sleep(2)

# ============ 2. Start app fresh ============
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am force-stop com.snake"], timeout=5)
time.sleep(3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am start -W -n com.snake/com.Entry"],
               capture_output=True, timeout=15)
time.sleep(10)

r = subprocess.run(["adb", "-s", "localhost:5555", "shell", "ps -A | grep com.snake$"],
                   capture_output=True, text=True, timeout=5)
pid = int(r.stdout.strip().split()[1])
print("[FRIDA] Attaching to PID %d" % pid, flush=True)

# ============ 3. Frida: hook getaddrinfo to redirect DNS ============
device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
session = device.attach(pid)

JS = """
var libc = Process.getModuleByName("libc.so");
var _getaddrinfo = libc.findExportByName("getaddrinfo");

Interceptor.attach(_getaddrinfo, {
    onEnter: function(args) {
        var host = args[0].readCString();
        if (host && host.indexOf("snakeseller") >= 0) {
            // Replace hostname with 172.17.0.1 (host gateway)
            args[0].writeUtf8String("172.17.0.1");
            send({t: "DNS_REDIRECT", original: host, replaced: "172.17.0.1"});
        }
    }
});
send({t: "ready"});
"""

results = []
def on_msg(m, _):
    if m["type"] == "send":
        p = m["payload"]
        results.append(p)
        if p.get("t") == "DNS_REDIRECT":
            print("[DNS] %s → %s" % (p["original"], p["replaced"]), flush=True)
    sys.stdout.flush()

sc = session.create_script(JS)
sc.on("message", on_msg)
sc.load()
time.sleep(3)

# ============ 4. Navigate to Entry Key and activate ============
print("[NAV] Device screen...", flush=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 140 98"], timeout=5)
time.sleep(3)

print("[NAV] Entry Key...", flush=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 360 1117"], timeout=5)
time.sleep(2)

print("[NAV] Input + code %s..." % CODE, flush=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 165 590"], timeout=5)
time.sleep(0.5)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input text " + CODE], timeout=5)
time.sleep(1)

print("[NAV] ACTIVATE!", flush=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 495 745"], timeout=5)
time.sleep(12)

# ============ 5. Collect results ============
print("\n" + "=" * 60, flush=True)
print("RESULTS:", flush=True)
print("=" * 60, flush=True)
print("DNS redirects: %d" % len([r for r in results if r.get("t") == "DNS_REDIRECT"]), flush=True)
print("Server captures: %d" % len(CaptureHandler.captures), flush=True)

posts = [c for c in CaptureHandler.captures if c["method"] == "POST"]
print("POST requests: %d" % len(posts), flush=True)

if posts:
    print("\n[!!!] ACTIVATION REQUEST CAPTURED [!!!]", flush=True)
    for i, p in enumerate(posts):
        print("\n--- POST #%d: %s ---" % (i, p["path"]), flush=True)
        print("Headers: %s" % json.dumps(p["headers"], indent=2), flush=True)
        print("Body: %s" % p["body"][:2000], flush=True)

with open(CAPTURE_FILE, "w") as f:
    json.dump({"dns_redirects": [r for r in results if r.get("t") == "DNS_REDIRECT"],
               "server_captures": CaptureHandler.captures}, f, indent=2)
print("\nSaved to %s" % CAPTURE_FILE, flush=True)

session.detach()
