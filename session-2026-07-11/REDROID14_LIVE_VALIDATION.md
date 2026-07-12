# Snake Engine — Live Validation on Redroid 14 / EC2 Graviton (session 2026-07-11)

Independent reproduction and validation of the prior Snake Engine analysis on a **fresh
environment** (Redroid Android 14, ARM64, AWS Graviton `m9g.2xlarge`). This document records
only what was **directly observed** this session, separating proven facts from hypotheses.

> Scope note: this is a runtime-behavior validation. It confirms/extends the existing
> `native-deep/dynamic-live/` analysis. No new secret material was extracted; the terminal
> blocker (a server-issued subscription) is unchanged.

---

## 1. Environment (all PASS)

| Component | Value |
|-----------|-------|
| Host | EC2 `i-03132b9c284ac092c`, `m9g.2xlarge`, ARM Neoverse-V3 8 vCPU / 30 GB |
| OS | Ubuntu 24.04.4 LTS, kernel `6.17.0-1017-aws` aarch64 |
| Container | `redroid/redroid:14.0.0_64only-latest` (Android 14, `arm64-v8a`) |
| Binder | `binder_linux.ko` (from `linux-modules-extra`) + binderfs devices via `BINDER_CTL_ADD` ioctl, `chmod 666` |
| Tooling | Docker 29.6.1, ADB 34.0.4, Frida 17.15.4 (server as root), friTap 2.2.5, radare2 5.5.0 |
| App | `com.snake` v2.2.6, SHA-256 `f847608605ea1da9a7452f2072ee59e4dc26a900ca2aad0315c967c9c896d561` |

**Why `_64only`:** the regular `14.0.0` image fails on Graviton because the kernel lacks 32-bit
ARM `binfmt` support (`boringssl_self_test32` → `Exec format error`). The APK is `arm64-v8a`-only,
so 64-only is the correct match.

---

## 2. Process & module facts (Frida attach — stable)

- Two processes: `com.snake` (UI/Flutter/network) and `com.snake:engine` (DaemonService,
  `SystemCallProvider` IPC). 61 threads in main (Flutter `1.ui`/`1.raster`×8/`1.io`, Dart
  `Thread<00..07>`, Firebase, OkHttp, plus an unusual `TAG` thread).
- Native libs (main process base addrs vary per launch; ASLR): `libengine.so` (8.23 MB, only
  `JNI_OnLoad` exported + 16 C++ vtables), `libflutter.so` (10.45 MB), `libapp.so` (5.38 MB,
  Dart snapshot symbols only).
- `libengine.so` `JNI_OnLoad` at file offset `0x F3FA0`.

## 3. Backend channel (live, measured)

- Endpoint `https://rest.snakeseller.com/api/request/` → resolves `92.205.103.45`.
- Server cert (captured live from the TLS handshake bytes): subject `cpanel.snakeseller.com`,
  issuer **Let's Encrypt → ISRG Root YR**, validity 2026-05-30 … 2026-08-28. This is ordinary
  **cPanel hosting** (not the Cloud Run endpoint named in older docs).
- Startup pattern (close-tracked, false-positives from fd-reuse eliminated):
  **4 parallel TLS connections** opened at ≈ +100 ms, all closed by ≈ +940 ms; reconnects at
  ≈ +5 s and ≈ +10 s. Totals: **≈ 3 KB uploaded / ≈ 2.26 MB downloaded**.
- **The app is network-silent after startup:** 0 new connections across 45 s of full UI
  interaction. All backend traffic is one-shot at launch.

## 4. Split TLS stacks (proven)

| Channel | TLS stack | Observability |
|---------|-----------|---------------|
| Firebase / `app-measurement.com` | **system `libssl.so`** (BoringSSL) | friTap decrypts cleanly (keylog + plaintext pcap) |
| Backend `rest.snakeseller.com` | **BoringSSL statically linked & stripped inside `libflutter.so`** | not captured via system libssl; friTap's libflutter pattern did not match this build |

`libflutter.so` is stripped (only `.dynsym`, 44 syms, 0 SSL exports) but BoringSSL source paths
are present in `.rodata` (`s3_pkt.cc`, `ssl_aead_ctx.cc`, `handshake_client.cc`, …), confirming
the bundled stack.

## 5. Anti-instrumentation (reproduced)

- **Frida `spawn` → process dies at ≈ 0.4 s**, before `libengine.so` even loads. Benign control
  apps (`com.android.settings`, `deskclock`) survive `spawn` → the behavior is **app-specific**.
- **Frida `attach` after boot is stable** (35 s+ with 6 simultaneous libc/SSL hooks, no kill).
  Interpretation consistent with a **startup-time ptrace/self-check** that is not re-run once the
  process is past init.
- **Frida Gadget via `wrap.com.snake` LD_PRELOAD**: the wrapper loads (`WrapperInit`,
  "Wrapped process"), but the app then **SIGSEGVs (signal 11) during init** — both from
  `/data/local/tmp` and from `/system/lib64/libskia_helper.so` (benign name). Frida 17 gadget's
  runtime is detected on this app/build. Removing the `wrap` property restores normal operation,
  confirming the gadget as the cause.

## 6. Two encryption layers — where the data actually is

```
Layer 1  TLS               → BoringSSL inside libflutter.so (stripped)
Layer 2  application crypto → Dart / pointycastle (network payload `encryptedData`)
                            → libengine.so AES-256 (FUN_00160208, key = SHA-256(xorshift PRNG),
                              KDF FUN_00161788) ONLY for in-container game-data, and ONLY when a
                              subscribed target game is loaded.
```

Confirmed against the prior `native-deep/dynamic-live/` analysis: the **network** payload is
encrypted in the **Dart layer (pointycastle)**, not in `libengine`. `libengine`'s KDF/AES fire
**only on real game load with an active subscription** — never in idle/browsing (0 calls
observed). Hooks install fine in attach mode (no integrity-kill there).

## 7. Bottom line

All technical protections are understood and (per prior work) bypassable. The **only remaining
gate for both layers is a server-issued active subscription**: without it the app performs its
one-shot startup exchange and goes idle, and the game-load crypto path never executes. This is a
business/account gate, not a technical one.

### New this session
Fresh-environment (Redroid 14) reproduction; live backend metrics + certificate chain; proven
Firebase-vs-backend TLS-stack split; reproduction of the spawn/gadget anti-tamper on Frida 17;
recovery procedure for a host wedged by Frida `spawn-gating` (EC2 power-cycle).

### Operational caution
Do **not** use Frida `enable_spawn_gating` against this device: it suspends all device process
spawns and saturated the host CPU, requiring an EC2 stop/start (which changes the public IP).

---

## Addendum: Deep Key Extraction Attempts (same session)

### Frida Gadget (listen mode) — confirmed working on Redroid 14

| Config | Result |
|--------|--------|
| `type: "script"` | ❌ SIGSEGV (detected) |
| `type: "listen"`, `on_load: "resume"` + **`pm clear`** before launch | ✅ **Works** — app survives 20s+ without UI interaction |
| Any UI interaction while gadget is loaded | ❌ Immediate `application-requested` detach |

### Java bridge (frida-compile + frida-java-bridge)

Successfully hooked and called `com.snake.helper.Native` methods. Full API signatures discovered:
- `ac(Object, Object)`, `aior(String, String)`, `awl(String)`, `chl(byte[])→boolean`
- `djp(int)→byte[]`, `eio()`, `gcuid(int)→int`, `i(int)`, `ic(Context)`
- `ilil(int)→String`, `logIn(String, long)`, `logIn(String, long, boolean)`
- `pjowqpxe(Object, Object, Object)`, `update(Object, Method)`
- **Java-only:** `a(Activity,String,int,long,boolean)`, `b(Activity,String,int,long,boolean)`, `getApplicationInfo(Context,String)→ApplicationInfo`, `il(File)→File`, `il(String)→String`

### ilil extraction (reproduced)

6 runtime-decrypted strings recovered (matches prior `recovered_strings.json`):
- `id_token`, `com.miniclip.googleplaygames.Authentication`, OAuth client ID, OAuth endpoint, `loginCallback`, `onLoginResult`

Systematic sweep of ~500 indices confirmed: **only 6 strings exist** in the encrypted table.

### djp extraction

Exhaustive sweep (indices 0-50 + structured 0xfXXXXX): **zero results**. `djp` requires runtime context (game-load state).

### cip_pub (cipher public key)

- SharedPreferences key `cip_pub` exists but is **empty string** after all tests
- Not populated by initial backend connection (which downloads game images only)
- Not populated by fake OAuth injection via `vx.c()`
- Requires **real Google OAuth login** that authenticates against `snakeengine.com/oauth/google`
- The public key is sent **from the server** upon successful account binding — it does not exist locally at all until then

### Backend API protocol (new findings)

| Finding | Evidence |
|---------|----------|
| Content-Type: `application/x-www-form-urlencoded` (not JSON) | `curl` test: form-encoded → error -1 "Authentication failed" vs JSON → error -2 "Invalid action" |
| All tested `action=` values recognized | login, activate, check, get_games, etc. all return -1 (auth fail) not -2 (invalid action) |
| Firebase JWT NOT accepted as Bearer token | Same -1 error with Authorization header |
| Authentication is app-layer (encrypted request body) | Confirmed: plain requests always fail auth |
| Data downloaded at startup = PNG/JPEG images | `file` command on SHA-named files: 512x512 game icons |

### OAuth flow architecture (from decompiled `vx.java`)

```
Native.logIn(clientId, timestamp)
  → vx.f() registers BroadcastReceiver for "com.snake.INTERNAL_OAUTH_RESULT"
  → yu0.d() opens browser to snakeengine.com/oauth/google
  → Browser redirects back with fragment #id_token=JWT
  → BroadcastReceiver catches it → vx.b() extracts id_token → vx.h() parses JWT payload["sub"]
  → vx.c() injects (sub, id_token) into target game's Authentication class via reflection
```

### Key architectural conclusion

The encryption key (`cip_pub`) is a **server-issued credential**, not a derived or hardcoded secret.
The complete unlock sequence:
```
Google OAuth → server validates → server sends cip_pub → stored locally → 
enables encrypted API communication → subscription check → game load → KDF/AES fire
```

Without step 1 (real Google OAuth with a Snake Engine-registered account), the entire crypto
chain is inert. This is an **identity-gated** system, not merely a subscription-gated one.



---

## Addendum: Deep Key Extraction Attempts (same session)

### Frida Gadget (listen mode) — confirmed working on Redroid 14

| Config | Result |
|--------|--------|
| `type: "script"` | SIGSEGV (detected) |
| `type: "listen"`, `on_load: "resume"` + `pm clear` before launch | **Works** — app survives 20s+ without UI interaction |
| Any UI interaction while gadget is loaded | Immediate `application-requested` detach |

### Java bridge (frida-compile + frida-java-bridge)

Full Native API signatures discovered (19 methods). Key ones:
- `ilil(int)->String` — runtime string decrypt (6 strings extracted live)
- `djp(int)->byte[]` — runtime data decrypt (empty without game-load context)
- `chl(byte[])->boolean` — license check
- `logIn(String, long)` — triggers OAuth flow
- `pjowqpxe(Object, Object, Object)` — mystery 3-arg (never called in idle)
- `update(Object, Method)` — method hooking (never called in idle)
- `aior(String, String)` — I/O redirect
- `awl(String)` — whitelist

### cip_pub (cipher public key) — the identity gate

- SharedPreferences key `cip_pub` exists but is **empty** after:
  - Initial backend connection (downloads game images only)
  - Fake OAuth injection via `vx.c()`
  - All testing performed this session
- Requires **real Google OAuth login** authenticating against `snakeengine.com/oauth/google`
- The public key is **server-issued** upon successful account binding

### Backend API protocol

- Content-Type: `application/x-www-form-urlencoded` (not JSON — different error codes prove it)
- All `action=` values (login, activate, check, get_games, etc.) return error -1 "Authentication failed"
- Firebase JWT NOT accepted as Bearer token
- Authentication requires encrypted request body (app-layer crypto via pointycastle)

### OAuth flow (from decompiled vx.java)

```
Native.logIn(clientId, timestamp)
  -> vx.f() registers BroadcastReceiver for "com.snake.INTERNAL_OAUTH_RESULT"
  -> Opens browser to snakeengine.com/oauth/google
  -> Browser returns with #id_token=JWT
  -> vx.b() extracts id_token -> vx.h() parses JWT["sub"] (Google user ID)
  -> vx.c() injects result into target game class via reflection
```

### Final conclusion: identity-gated system

The encryption key (`cip_pub`) is a **server-issued credential**. Complete unlock sequence:
```
Google OAuth -> server validates -> server sends cip_pub -> stored locally ->
enables encrypted API -> subscription check -> game load -> KDF/AES activate
```

Without real Google OAuth with a Snake Engine-registered account, the entire crypto chain is inert.

---

## Addendum 2: Dart Object Pool Constants & Backend API Probing

### Hardcoded constants discovered in Dart pool (next to `_Bpa` API builder)

| Offset | Value | Size | Context |
|--------|-------|------|---------|
| `pp+0x13918` | `d0166552cf5886ffc1fcadeffd892870dd077f45d50cccfed5e4b7` | 28 bytes | field `ooa.lke` |
| `pp+0x13920` | `b8621122bc62a9d0b68bdac18ee7491b` | 16 bytes | field `ooa.uie` |
| `pp+0x13948` | `"llb"` | — | label/identifier |

These sit in the same pool region as the API URL (`rest.snakeseller.com/api/request/`),
`"success"`, `"----WebKitFormBoundary"`, and `"?action=upload_profile_image"`.

**Tested as AES-128/HMAC keys against the backend**: all attempts returned "Authentication failed"
or "Invalid action". They are **not** the direct API encryption keys — more likely identifiers,
content hashes, or lookup keys for the obfuscated class `ooa` (which has 13+ static fields).

### snakeengine.com Public API (discovered from frontend JS bundle)

| Endpoint | Auth | Response |
|----------|------|----------|
| `GET /api/config` | None | `{"games":[{id:1,name:"8 Ball Pool",...},{id:2,...},{id:3,...}]}` |
| `GET /api/pricing` | None | Full pricing tiers ($3.99-$49.99, durations 3-90 days) |
| `POST /api/device/verify` | None | `{"found":false}` for unregistered devices |
| `POST /api/checkout/create` | None | `{"error":"Stripe secret key not configured"}` — payments disabled |
| `GET /api/admin/remote-config` | Admin | `{"error":"Unauthorized"}` |
| `POST /api/admin/login` | username+password | Returns `snk_token` for admin panel at `/e4989608c5...` |

**Key finding**: Stripe is NOT configured on the server — the payment system is inactive. The
checkout flow (Stripe + Binance) exists in frontend code but cannot complete.

### Backend API protocol confirmed:

- Content-Type: `application/x-www-form-urlencoded`
- Requires `action` field (without it → error -2 "Invalid action")
- With any `action` value → error -1 "Authentication failed"
- Authentication is **inside** the encrypted `encryptedData` field — the server cannot validate
  the request without the correct app-layer encryption
- The initial encryption key (for first-boot registration) is embedded in Dart AOT (libapp.so)
  but its exact derivation mechanism remains unresolved (not the two hex constants above)

### Android ID captured: `8840bf6a81679fc4`
- Not registered on the snakeengine.com server (`/api/device/verify` → `found: false`)
- This confirms the device has never completed the registration flow with the backend



---

## MAJOR DISCOVERY: Real Backend Protocol Captured (Gadget 16 Script-Mode)

### Frida Gadget 16.5.6 — Script Mode Works!

Unlike Gadget 17 (which causes SIGSEGV in script-mode on this app), **Gadget 16.5.6 script-mode
runs perfectly** — the app stays alive and hooks fire from process load.

### The REAL Snake Engine API Protocol

Captured live via libflutter TLS write hook (offset 0x6d4be8):

```http
GET /?z=0c6da67c93688e58ee2d71b107a165569b931542170d6220ed6379450e253b6f28affa875fbf1fac36ef12a2520cf35c6a&v=20 HTTP/1.1
user-agent: Dart/3.5 (dart:io)
accept-encoding: gzip
host: push-918010152455.europe-west1.run.app
```

| Field | Value |
|-------|-------|
| **Real endpoint** | `https://push-918010152455.europe-west1.run.app/` (Google Cloud Run) |
| **Method** | GET |
| **Parameter `z`** | `0c` prefix + 48 bytes hex-encoded encrypted payload |
| **Parameter `v`** | `20` (protocol version) |
| **Response** | 33 bytes hex-encoded (66 hex chars), HTTP 200 |
| **Replay** | Works — server responds to replayed z-values |

### Two Captures Compared:

```
Z1: 0c | 6da67c93688e58ee2d71b107a165569b931542170d6220ed6379450e253b6f28affa875fbf1fac36ef12a2520cf35c6a
Z2: 0c | 09da02f6dd5ea80c70486c4ffb36404381d4ed99ce4f3ecb852cac3dbd49a2766c009a1d5b40031ae5b9221724be4c47

R1: f11ac0aefb2c7ad89b10f6461fc5b034e8d73d343ceab67cbc61906c84425b5712
R2: 6cf26bcec9f6da2322d14f369309f610b9ecc4ff894588d704106fbc9850746971
```

- Version byte `0c` is constant
- 48-byte payload: 0 same bytes between runs (properly encrypted)
- 33-byte response: 0 same bytes between runs (properly encrypted)
- Probable structure: AES-GCM with 12B nonce + 20B ciphertext + 16B tag = 48B

### Critical Corrections to Prior Understanding:

| Prior assumption | Actual finding |
|-----------------|----------------|
| Backend is `rest.snakeseller.com` | **Only for static files** (images/icons) |
| API uses `POST /api/request/` | **GET `/?z=...&v=20`** to Cloud Run |
| Request is form-encoded | **Hex-encoded binary in query param** |
| Request contains `action`, `deviceId`, `timestamp` | **49 bytes binary (1B version + 48B encrypted)** |
| Need complex auth/HMAC | **Just encrypted payload — replay works!** |

### What `rest.snakeseller.com` Actually Does:

Only serves static assets:
- `GET /api/files/8_ball_pool_icon.png`
- `GET /api/files/1.jpg?r=4`, `2.jpg`, `3.jpg`
- `GET /api/files/carrom_pool_icon.png`
- `GET /api/files/soccer_stars_icon.png`

### Other Discoveries:

Firebase notifications/feeds from `storage.googleapis.com`:
- `GET /notics/notifications?r=<timestamp>`
- `GET /notics/feeds_en?r=<timestamp>`
- `GET /notics/feeds?r=<timestamp>`

### Remaining Work:

The 48-byte encrypted payload in `z` needs to be decrypted. The encryption key is embedded
in Dart AOT (`libapp.so`). The 32-byte constants found earlier in the object pool
(`pp+0xb730`, `pp+0x131b0`, `pp+0x14010`) are candidates for the AES-256 key.



---

## Final Capture: Three Live z-Payload Samples with Server Responses

### Capture Method (proven reproducible):
```
Frida Gadget 16.5.6 (script-mode) + LD_PRELOAD via wrap.com.snake
Hook: libflutter.so offset 0x6d4be8 (s3_pkt.cc TLS record write)
arg3 contains the full HTTP plaintext before TLS encryption
```

### Three Independent Captures:

| # | z parameter (49 bytes hex) | Server Response (33 bytes hex) |
|---|---------------------------|-------------------------------|
| 1 | `0c6da67c93688e58ee2d71b107a165569b931542170d6220ed6379450e253b6f28affa875fbf1fac36ef12a2520cf35c6a` | `f11ac0aefb2c7ad89b10f6461fc5b034e8d73d343ceab67cbc61906c84425b5712` |
| 2 | `0c09da02f6dd5ea80c70486c4ffb36404381d4ed99ce4f3ecb852cac3dbd49a2766c009a1d5b40031ae5b9221724be4c47` | `6cf26bcec9f6da2322d14f369309f610b9ecc4ff894588d704106fbc9850746971` |
| 3 | `0c3dc709ebc0e50fbd469c4240a77ae8384e22ab051ef50f1174e8f8620a01780fc5e22d218c83caf3a58b0a4b93352b98` | `5877ae76b8338b76a8aa2a2073af765193c431533c809d4c84de501e9f7bdd9f42` |

All three replay successfully: `curl "https://push-918010152455.europe-west1.run.app/?z=<value>&v=20"` returns 200 OK.

### Connection Sequence Observed:
```
[CONNECT] 34.143.73.2:443      ← Cloud Run (push-918010152455...) - API endpoint
[CONNECT] 192.179.18.207:443   ← Google (storage.googleapis.com) - notifications/feeds
[CONNECT] 92.205.103.45:443    ← rest.snakeseller.com - static files (images)
```

### Encryption Key Status:
- 5 candidate keys from Dart pool tested: none decrypts the z payload
- The actual AES key is derived at runtime or stored in a non-obvious form
- Decryption attempts: AES-256-GCM, AES-256-CBC, ChaCha20-Poly1305, AES-128-GCM — all failed tag verification
- ECB produces random-looking output (not valid plaintext)
- **The key extraction remains the only unresolved item**
