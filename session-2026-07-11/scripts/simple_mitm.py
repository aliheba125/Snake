"""
Simple TLS MITM proxy using mitmproxy CA cert.
Listens on port 443 on all interfaces.
When a connection comes in (from the container), establishes TLS with our CA cert,
then connects to the real server and logs plaintext in both directions.
"""
import ssl
import socket
import threading
import os

LISTEN_PORT = 443
REAL_HOST = "push-918010152455.europe-west1.run.app"
REAL_PORT = 443
CA_CERT = os.path.expanduser("/tmp/mitm_cert.pem")
CA_KEY = os.path.expanduser("/tmp/mitm_ca.pem")
LOG_FILE = "/tmp/mitm_log.txt"

log = open(LOG_FILE, "w")

def log_write(msg):
    log.write(msg + "\n")
    log.flush()
    print(msg)

def handle_client(client_sock, addr):
    log_write(f"[+] Connection from {addr}")
    
    # Create server-side SSL context (to present to client)
    server_ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    try:
        # Use mitmproxy CA to generate a cert for the target host
        # Actually just use the CA cert directly (client will trust it since it's in system store)
        server_ctx.load_cert_chain(CA_CERT, CA_KEY)
    except Exception as e:
        log_write(f"[-] Cert error: {e}")
        # Try with just the key file (mitmproxy stores both in mitmproxy-ca.pem)
        try:
            server_ctx.load_cert_chain(CA_KEY)
        except Exception as e2:
            log_write(f"[-] Cert error 2: {e2}")
            client_sock.close()
            return
    
    try:
        ssl_client = server_ctx.wrap_socket(client_sock, server_side=True)
        log_write(f"[+] TLS handshake with client OK")
    except Exception as e:
        log_write(f"[-] Client TLS error: {e}")
        client_sock.close()
        return
    
    # Connect to real server
    try:
        real_sock = socket.create_connection((REAL_HOST, REAL_PORT), timeout=10)
        client_ctx = ssl.create_default_context()
        ssl_real = client_ctx.wrap_socket(real_sock, server_hostname=REAL_HOST)
        log_write(f"[+] Connected to real server {REAL_HOST}:{REAL_PORT}")
    except Exception as e:
        log_write(f"[-] Real server error: {e}")
        ssl_client.close()
        return
    
    # Relay data both ways, logging plaintext
    def relay(src, dst, direction):
        try:
            while True:
                data = src.recv(65536)
                if not data:
                    break
                log_write(f"[{direction}] {len(data)} bytes")
                # Try to decode as text
                try:
                    text = data.decode("utf-8", errors="replace")
                    log_write(f"  TEXT: {text[:2000]}")
                except:
                    log_write(f"  HEX: {data[:256].hex()}")
                dst.sendall(data)
        except Exception as e:
            log_write(f"[{direction}] closed: {e}")
        finally:
            try: src.close()
            except: pass
            try: dst.close()
            except: pass
    
    t1 = threading.Thread(target=relay, args=(ssl_client, ssl_real, "CLIENT->SERVER"))
    t2 = threading.Thread(target=relay, args=(ssl_real, ssl_client, "SERVER->CLIENT"))
    t1.daemon = True
    t2.daemon = True
    t1.start()
    t2.start()
    t1.join(timeout=20)
    t2.join(timeout=20)

# Main
log_write(f"=== Simple MITM starting on port {LISTEN_PORT} ===")
log_write(f"CA cert: {CA_CERT}")
log_write(f"Target: {REAL_HOST}:{REAL_PORT}")

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
server.bind(("0.0.0.0", LISTEN_PORT))
server.listen(5)
server.settimeout(30)
log_write(f"[+] Listening on 0.0.0.0:{LISTEN_PORT}")

try:
    while True:
        try:
            client, addr = server.accept()
            threading.Thread(target=handle_client, args=(client, addr), daemon=True).start()
        except socket.timeout:
            break
except KeyboardInterrupt:
    pass

log_write("=== Done ===")
log.close()
server.close()
