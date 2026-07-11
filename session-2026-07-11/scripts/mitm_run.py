import socket, ssl, threading, os, subprocess, time

LISTEN_PORT = 443
REAL_HOST = "push-918010152455.europe-west1.run.app"
CA_KEY = "/home/ubuntu/.mitmproxy/mitmproxy-ca.pem"  # Contains both cert and key
LOG_PATH = "/tmp/mitm_log.txt"

log_file = open(LOG_PATH, "w")
def log(msg):
    log_file.write(msg + "\n")
    log_file.flush()

log("=== MITM Fixed ===")
log("CA_KEY: " + CA_KEY + " exists=" + str(os.path.exists(CA_KEY)))

# Load TLS context
ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
try:
    ctx.load_cert_chain(CA_KEY)
    log("Cert chain loaded OK")
except Exception as e:
    log("ERROR loading cert: " + str(e))
    log_file.close()
    exit(1)

def handle(client, addr):
    log("Connection from " + str(addr))
    try:
        sc = ctx.wrap_socket(client, server_side=True)
        log("  TLS handshake with client: OK")
    except ssl.SSLError as e:
        log("  TLS handshake FAILED: " + str(e))
        client.close()
        return
    except Exception as e:
        log("  Connection error: " + str(e))
        client.close()
        return

    # Connect to real server
    try:
        rs = socket.create_connection((REAL_HOST, 443), timeout=10)
        real_ctx = ssl.create_default_context()
        ss = real_ctx.wrap_socket(rs, server_hostname=REAL_HOST)
        log("  Connected to real server OK")
    except Exception as e:
        log("  Real server connection FAILED: " + str(e))
        sc.close()
        return

    # Read client request
    try:
        req = sc.recv(65536)
        log("  REQUEST ({} bytes):".format(len(req)))
        log("  " + req.decode("utf-8", errors="replace")[:3000])
    except Exception as e:
        log("  Read request error: " + str(e))
        sc.close()
        ss.close()
        return

    # Forward to server
    try:
        ss.sendall(req)
        resp = b""
        while True:
            try:
                chunk = ss.recv(65536)
                if not chunk:
                    break
                resp += chunk
                if len(resp) > 100000:
                    break
            except socket.timeout:
                break
            except:
                break
        log("  RESPONSE ({} bytes):".format(len(resp)))
        log("  " + resp.decode("utf-8", errors="replace")[:3000])
        # Forward to client
        sc.sendall(resp)
    except Exception as e:
        log("  Relay error: " + str(e))

    try: sc.close()
    except: pass
    try: ss.close()
    except: pass

# Start listening
server = socket.socket()
server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
server.bind(("0.0.0.0", LISTEN_PORT))
server.listen(5)
server.settimeout(3)
log("Listening on :" + str(LISTEN_PORT))

# Start app in background
subprocess.Popen(["adb", "shell", "am", "start", "-n", "com.snake/com.Entry"])
log("App starting...")

# Accept connections for 25 seconds
start = time.time()
while time.time() - start < 25:
    try:
        c, a = server.accept()
        threading.Thread(target=handle, args=(c, a), daemon=True).start()
    except socket.timeout:
        continue

log("=== Done (25s elapsed) ===")
log_file.close()
server.close()
