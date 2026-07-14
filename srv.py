import ssl, http.server, json, sys
LOG="/tmp/server_captures.log"
class H(http.server.BaseHTTPRequestHandler):
    def do_POST(self):
        n=int(self.headers.get("Content-Length",0))
        b=self.rfile.read(n).decode("utf-8",errors="replace")
        with open(LOG,"a") as f:
            f.write(json.dumps({"m":"POST","p":self.path,"h":dict(self.headers),"b":b},indent=2)+"\n---\n")
        print("[POST %s] %d: %s"%(self.path,n,b[:300]),flush=True)
        r=b'{"error":true,"error_code":-2,"message":"Invalid action"}'
        self.send_response(200)
        self.send_header("Content-Type","application/json")
        self.send_header("Content-Length",str(len(r)))
        self.end_headers()
        self.wfile.write(r)
    def do_GET(self):
        with open(LOG,"a") as f:
            f.write(json.dumps({"m":"GET","p":self.path})+"\n---\n")
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"{}")
    def log_message(self,*a): pass
ctx=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
ctx.load_cert_chain("/tmp/snake_server.crt","/tmp/snake_server.key")
s=http.server.HTTPServer(("0.0.0.0",443),H)
s.socket=ctx.wrap_socket(s.socket,server_side=True)
print("READY on :443",flush=True)
s.serve_forever()
