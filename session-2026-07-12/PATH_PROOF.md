# Path Proof — z parameter creation (session 2026-07-12, phase 2)

**Purpose:** rigorous proof of which module owns the z-encryption path. Buffer-identity + call-stack based. **No timing-only inference.**

---

## 1. Fixed points (facts already established across sessions)

- **SINK** (independent observation from three prior sessions): `libflutter.so + 0x6d4be8` = internal BoringSSL SSL_write plaintext path (s3_pkt.cc). Contains full HTTP GET `?z=<98 hex chars>&v=20` **before** TLS encryption.
- User-Agent captured at SINK: `Dart/3.5 (dart:io)` — z arrives at the SINK inside a Dart-built HTTP request.
- Host `push-918010152455.europe-west1.run.app` is **not** a plaintext constant in `libengine.so`, `libapp.so`, `libflutter.so`, Dart pool, Java, smali, or Android resources. Assembled at runtime.
- z structure: 49 bytes = `0x0c || 48 bytes`.

Nothing before this document proves *which function* produces those 48 bytes. Prior claims ("Dart pointycastle", "native CBC via `FUN_0015fdec`") were stated without a call-graph or buffer trace linking them to z.

---

## 2. Method (this session)

One live run per candidate hypothesis, using Frida Gadget 17 in **listen mode + `on_load: resume`**, wrap.com.snake=`LD_PRELOAD=/system/lib64/libskia_android.so`. Client attaches within ~200ms of process start; hooks armed via `setTimeout` retry as soon as `libengine.so`, `libflutter.so`, `libapp.so` are all present in `Process.enumerateModules()`.

For each candidate cipher function, hook records at **both** onEnter and onLeave:
- pointer arguments (`args[0..3]`),
- referenced buffer content (`readVec(vec)` → `hex(begin, end-begin)`),
- 12–16 frame `Thread.backtrace(Backtracer.ACCURATE)` mapped to module offsets.

Records land in a ring buffer. When the SINK fires (`args[i].readCString().indexOf("z=0c") !== -1`):
1. extract full `z_hex_full`, split into 16-byte `iv_hex` + 32-byte `ct_hex`;
2. walk the ring backwards for **buffer identity** — any record whose `out_hex` / `in_hex` / `key_hex` **contains** `iv_hex`, `ct_hex`, or any ≥ 16-byte prefix/substring;
3. run `Memory.scanSync` across all `rw-` regions for the raw 16-byte IV pattern to locate the source buffer;
4. dump the 16-frame call stack at the SINK.

A **match** requires an actual overlapping byte sequence, not proximity in time.

---

## 3. Results — three independent reproductions

Force-stop com.snake → `am start` → poll for Gadget listen → attach + install hooks → wait.

| Trial | hooks armed | Z_SINK fired | window | KDF fires | AES_enc | AES_dec | FUN_167d38 | buffer_matches |
|-------|-------------|--------------|--------|-----------|---------|---------|------------|----------------|
| 1     | +786 ms     | +949 ms      | 163 ms | 0         | 0       | 0       | 0          | 0              |
| 2     | +720 ms     | +1123 ms     | 403 ms | 0         | 0       | 0       | 0          | 0              |
| 3     | +777 ms     | +1212 ms     | 435 ms | 0         | 0       | 0       | 0          | 0              |

Every SINK backtrace resolves entirely inside `libflutter.so` (`+0x6d4b5c`, `+0x6d9260`, `+0x7f1bfc`, `+0x7e8808`, `+0x87a5b0`, `+0x86bd78`, `+0x86bb08`, `+0x8ff0c4`, `+0x8c3540`) with the last two frames in `libc.so` (`__pthread_start+cb6ac`, `__start_thread+68220`). No frame in `libengine.so` or `libapp.so` appears in the SSL_write call chain. `libengine.so` is loaded (dlopen at +626 ms) *before* z is sent (+1212 ms), and its KDF/AES pointers are hooked from +777 ms — none of them execute during the 435 ms window that precedes z transmission.

Fresh z samples captured this session (proof set):
```
0c1689fe70e39f119f46e146f390a9991102228ba7d3764cd70335eb7e20223a159855567d590ede5869782519d8e259de
0ced50e7debcdc8d5d82a8a9c79590f9295f902963893d10b43b5663e5e04d1549df67c9273cde2bea1f9bd476766696b8
0c72bbfbdf91cb064287efb55fcde782a0950aaf8f649fd5cca19864a934912cf1362b6428ea187a54878d8a2f31afab13
0c08c4702fb85d348693000cebb7fbb86b462d6b1c0ae770b862f3dfc985e89d8274da5268ade033f7b1d1b4bd416ad38c   (recovered via Memory.scanSync in the running process)
```

---

## 4. Consequence

The hypothesis **H_native_libengine** (`FUN_00161788` KDF + `FUN_0015fdec`/`FUN_00160208` AES-CBC + `FUN_00167d38`) as the z-encryptor is **disproven for this z path** by buffer-identity + call-stack evidence, reproduced three times.

`libengine`'s crypto still fires (as prior sessions documented) for *its own subsystem* — but not on the wire for z.

---

## 5. What is *not* concluded here

- No claim yet about which specific function encrypts z. The SINK is `libflutter+0x6d4be8`, so the encryption happened somewhere upstream inside the same Dart isolate. Candidates that remain to be proved or disproved by the same buffer-identity method:
  - Pure Dart AES-256 (bit-sliced, no S-box byte pattern; would leave no static AES table in `libapp.so`).
  - AES-GCM inside `libflutter.so` BoringSSL, called via a Dart↔C++ internal (not `dlsym`) API.
  - A custom construction inside Dart AOT.
- The number of z variants captured (4 distinct nonces, all valid on the server via replay) is not by itself proof that the key is per-session; it only proves the IV varies.

---

## 6. Concrete static findings that constrain the next step

Byte-pattern search of the shipped native libraries:

| pattern                | `libflutter.so`                  | `libapp.so`  | `libengine.so`                |
|------------------------|----------------------------------|--------------|-------------------------------|
| AES S-box (`63 7c 77 7b …`) | absent                        | absent       | absent                        |
| ChaCha20 `expand 32-byte k` | 0x1aa980, 0x1aaa00            | absent       | absent                        |
| SHA-256 H0..H7 (LE)         | 0x200eb4, 0x201930            | absent       | 0x10a90 (KDF)                 |
| HEX lookup `0123456789abcdef` | 0x1cacb7, 0x206189           | 0x1bd91, 0x4c3a3 | 0x402b0                    |
| PBKDF2 / HKDF strings       | 0x1ec693 / 0x1b90fd, 0x1e26c3 | absent       | absent                        |
| GCM `Rb` mask `e1 00…` (LE) | multiple                     | absent       | 0x346b8, 0x391b8, 0x3dcb8     |

libflutter's exported symbols (511 in `.dynsym`): standard libc + EGL/GLES + `OPENSSL_memory_{alloc,free,get_size}` + `InternalFlutterGpu_*` + `JNI_OnLoad`. **No** EVP_/AES_/SHA256_/HKDF exports — BoringSSL is fully statically linked and stripped inside libflutter, unreachable through named-symbol resolution.

Interpretation constrained by these facts (still hypothesis until proven by buffer identity):
1. libflutter contains a full BoringSSL. It is not directly callable from Dart via `DynamicLibrary().lookupFunction<>()` because the symbols are stripped.
2. `libapp.so` contains hex tables but no AES/ChaCha table — a Dart-only AES with a byte-order S-box would show up here and does not.
3. `libengine.so` has both a SHA-256 (its KDF) and GCM Rb constants (implying an AES-GCM implementation independent of BoringSSL). Neither fired for z in the three trials.

---

## 7. Next step (pre-declared)

Continue the buffer-identity method against these narrower candidates, still in a single run per candidate:

1. Hook BoringSSL AES/GCM entry points inside `libflutter.so` located by pattern (bytes near `Rb=e1 00…`, ChaCha20 constant, or SHA-256 H0). Track any 12/16/32-byte buffers produced.
2. Hook `mprotect(prot=PROT_EXEC|PROT_WRITE)` and `mmap(prot=RWX)` to catch any Dart-VM JIT-emitted crypto.
3. Enable `Stalker.follow(Process.enumerateThreads()[main_isolate_tid])` for a ~500 ms window ending at the SINK; correlate the trace with the raw `iv_hex` byte pattern via `Memory.scanSync` inside the traced ranges.

No key/scheme conclusion will be recorded before the same buffer-identity match links a producer function to the observed z48 **and** we can re-encrypt one of the captured samples byte-for-byte from the captured (K, IV, plaintext).
