# FINDING: I/O captured during activation — TLS records on fd=122

**Date:** 2026-07-14
**Method:** Frida hook on all libc I/O functions (write/writev/send/sendto/sendmsg) with proper UI navigation verified via uiautomator dump.

## Key Discovery

After fixing UI navigation (the blocker was a stale "Code is Not valid" dialog covering the screen), successful activation I/O was captured:

### I/O Pattern During Activation (code "135790"):
```
sendto fd=137 len=24   × 3   (DNS queries for snakeseller.com)
write  fd=122 len=24   × 22  (TLS-encrypted data to server)
```

### Analysis:
- **fd=137** = UDP socket for DNS (sendto, 24 bytes each)
- **fd=122** = TCP TLS socket to snakeseller.com:443
- Each TLS write is exactly **24 bytes** = 5-byte TLS record header + 19 bytes encrypted payload
- Total encrypted payload: 22 × 19 = **~418 bytes** (reasonable for a JSON POST body)
- Data is **TLS ciphertext** (not readable without session key)

## UI Navigation Fix (Critical for Future Sessions)

### Correct tap sequence (verified via uiautomator dump):
1. `am start -W -n com.snake/com.Entry` (wait for launch)
2. Tap `(140, 98)` → navigates to Device screen
3. Tap `(360, 1117)` → opens "Entry Key" dialog
4. Tap `(165, 590)` → focuses first input box (6-digit PIN)
5. `input text 135790` → fills all 6 digits
6. Tap `(495, 745)` → "Activate" button
7. Wait 10-12s for server response
8. Result: "Code is Not valid" dialog appears

### Common Pitfall:
If a dialog ("Code is Not valid" / "Soccer Stars warning") is already showing,
all taps go to it instead of the underlying screen. Always verify UI state with
`uiautomator dump` before tapping.

## Remaining: Plaintext Capture

The I/O is captured but encrypted (TLS). To get plaintext HTTP body:
1. Use Gadget script mode (which captures plaintext via `0x6d4be8` hook)
2. BUT ensure app reaches foreground properly (was the prior blocker)
3. Correct approach: Gadget script + `am start -W` + longer sleep + verify top activity

## Device ID confirmed: 394318

From uiautomator dump: `content-desc="Device id:\n394318"`
This is the **short numeric device ID** displayed in UI (different from the 64-char hex token
`751fb123...` used internally). Relationship: likely `394318` is an account/registration ID,
while `751fb123...` is the cryptographic device fingerprint sent in requests.

---

## ADDENDUM: Activation CONFIRMED working but POST plaintext still not captured

**Date:** 2026-07-14 (session continuation)

### Proof activation works with Gadget + correct navigation:
- Gadget script mode + hooks on 0x6d4be8 (+ 3 other offsets)
- Navigation: tap(140,98) → tap(360,1117) → tap(165,590) → text(135790) → tap(495,745)
- **Result: "Code is Not valid" dialog confirmed via uiautomator dump**
- Startup GET requests captured in plaintext (beacon z, notifications, feeds)
- **POST activation NOT captured by any of the 4 hooks**

### Conclusions:
1. The POST request goes through a DIFFERENT BoringSSL code path than GETs
2. This is likely because:
   - GETs use HTTP/1.1 with fresh connections (captured at handshake+first-write)
   - POST reuses an existing connection (already established during startup)
   - OR POST uses HTTP/2 multiplexing (different write function)
3. Server response JSON is ephemeral (not in heap after processing)
4. The hook at 0x6d4be8 specifically handles the "first write after SSL_connect" case

### What we KNOW about the activation request (from all evidence combined):
- Endpoint: POST https://rest.snakeseller.com/api/request/
- TLS socket: fd=122 (from I/O capture)
- Payload size: ~418 bytes encrypted (22 × 19 byte TLS fragments)
- Contains: encryptedData, deviceId, timestamp (from PROTOCOL_ANALYSIS.md)
- Response: {"error":true,"error_code":N,"message":"..."} (from api_response.txt)
- The app maps error_code to local Dart constant strings

### Remaining approach for POST plaintext:
1. **Stalker on libflutter** during the 2-second window between Activate tap and response
   to identify which function writes the POST body to the TLS buffer
2. **DNS redirect**: point snakeseller.com to a local HTTPS server with mitmproxy cert
3. **HTTP/2 frame hook**: if the connection uses h2, the POST goes through nghttp2/h2 framing
   functions (different from the h1 path we hooked)

---

## ADDENDUM: DNS redirect attempted but Dart bypasses /etc/hosts

**Date:** 2026-07-14

### Attempt:
- Added `172.17.0.1 rest.snakeseller.com` to `/etc/hosts` inside Redroid
- Verified `ping rest.snakeseller.com` resolves to `172.17.0.1` ✅
- Set up HTTPS server on host:443 with cert signed by mitmproxy CA for `rest.snakeseller.com`
- Cert: subject=CN=rest.snakeseller.com, issuer=CN=mitmproxy,O=mitmproxy

### Result: FAILED
- App still connects to **172.253.62.172:443** (Google Cloud) — NOT 172.17.0.1
- Dart's DNS resolver does NOT use /etc/hosts (uses Android's system DNS service instead)
- The fake server received zero requests from the app

### Why ping works but app doesn't:
- `ping` uses bionic libc `getaddrinfo()` which reads /etc/hosts
- Dart uses Android's `InetAddress.getByName()` or its own async DNS resolver
  which queries the system DNS server (172.17.0.1:53 or configured DNS) directly

### Server IP confirmed: 
rest.snakeseller.com → 172.253.62.172 (Google Cloud Run, CF3EFDAC in /proc/net/tcp)

### Correct approach for DNS redirect:
1. **Modify the actual DNS server** response (run dnsmasq on 172.17.0.1 with override)
2. **Or use iptables DNAT** (requires kernel NAT — not available in Redroid)
3. **Or patch the app's DNS resolution** at runtime via Frida hook on getaddrinfo
   (replace IP for snakeseller.com → 172.17.0.1)

### Hosts file cleaned up after test.
