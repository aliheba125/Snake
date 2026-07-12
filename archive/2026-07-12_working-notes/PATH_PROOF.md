# Path Proof — z parameter creation (session 2026-07-12, phase 2)

**Purpose:** rigorous proof of which function owns the z-encryption path.
Buffer-identity + call-stack based. **No timing-only inference.**

**Correction note (self):** an earlier version of this document overreached in the
scope of its conclusion. The corrected statement is in §4 below.

---

## 1. Fixed points (facts already established across sessions)

- **SINK** (independent observation from three prior sessions):
  `libflutter.so + 0x6d4be8` = internal BoringSSL SSL_write plaintext path
  (`s3_pkt.cc`). Contains full HTTP GET `?z=<98 hex chars>&v=20` **before**
  TLS encryption.
- User-Agent captured at SINK: `Dart/3.5 (dart:io)`.
- Host `push-918010152455.europe-west1.run.app` is **not** a plaintext constant
  in `libengine.so`, `libapp.so`, `libflutter.so`, the Dart pool, Java, smali,
  or Android resources. Assembled at runtime.
- z structure: 49 bytes = `0x0c || 48 bytes`.

Nothing before this document proves *which function* produces those 48 bytes.
Prior claims ("Dart pointycastle", "native CBC via `FUN_0015fdec`") were made
without a call-graph or buffer trace linking them to `z`.

---

## 2. Method (this phase)

One live run per candidate, using Frida Gadget 17 in
**listen mode + `on_load: resume`**, wrap `com.snake=LD_PRELOAD=/system/lib64/libskia_android.so`.
The client attaches within ~200 ms of process start; hooks are armed via
`setTimeout` retry as soon as `libengine.so`, `libflutter.so`, `libapp.so` are
all present in `Process.enumerateModules()`.

For each hooked candidate function, `onEnter`/`onLeave` records:
- pointer arguments,
- pointed-to buffer content (`readVec(vec)` → `hex(begin, end-begin)`),
- 12–16 frame `Thread.backtrace(Backtracer.ACCURATE)` mapped to module offsets.

Records land in a ring buffer. When the SINK fires (`readCString().indexOf("z=0c") !== -1`):
1. extract full `z_hex_full`, split into 16-byte `iv_hex` + 32-byte `ct_hex`;
2. walk the ring backwards for **buffer identity** — any record whose
   `out_hex` / `in_hex` / `key_hex` contains `iv_hex`, `ct_hex`, or any
   ≥ 16-byte substring of them;
3. dump the SINK backtrace.

A **match** requires an overlapping byte sequence, not proximity in time.

---

## 3. Results — three reproductions

Force-stop `com.snake` → `am start` → poll for Gadget listen → attach + install
hooks → wait.

| Trial | hooks armed | Z_SINK fired | window | KDF fires | AES_enc | AES_dec | FUN_167d38 | buffer_matches |
|-------|-------------|--------------|--------|-----------|---------|---------|------------|----------------|
| 1     | +786 ms     | +949 ms      | 163 ms | 0         | 0       | 0       | 0          | 0              |
| 2     | +720 ms     | +1123 ms     | 403 ms | 0         | 0       | 0       | 0          | 0              |
| 3     | +777 ms     | +1212 ms     | 435 ms | 0         | 0       | 0       | 0          | 0              |

Every SINK backtrace resolves entirely inside `libflutter.so`
(`+0x6d4b5c`, `+0x6d9260`, `+0x7f1bfc`, `+0x7e8808`, `+0x87a5b0`, `+0x86bd78`,
`+0x86bb08`, `+0x8ff0c4`, `+0x8c3540`) followed by two `libc.so` frames
(`__pthread_start+0xcb6ac`, `__start_thread+0x68220`). Directly at the SINK,
no frame in `libengine.so` or `libapp.so` appears.

Fresh z samples captured this session (proof set):
```
0c1689fe70e39f119f46e146f390a9991102228ba7d3764cd70335eb7e20223a159855567d590ede5869782519d8e259de
0ced50e7debcdc8d5d82a8a9c79590f9295f902963893d10b43b5663e5e04d1549df67c9273cde2bea1f9bd476766696b8
0c72bbfbdf91cb064287efb55fcde782a0950aaf8f649fd5cca19864a934912cf1362b6428ea187a54878d8a2f31afab13
0c08c4702fb85d348693000cebb7fbb86b462d6b1c0ae770b862f3dfc985e89d8274da5268ade033f7b1d1b4bd416ad38c
```

---

## 4. Correct scope of the conclusion (revised)

**What is proven** (by the buffer-identity + backtrace method above, three trials):

- The **four specific libengine.so functions** hooked at their known offsets
  (`FUN_00161788` @ 0x161788, `FUN_00160208` @ 0x160208, `FUN_0015fdec` @ 0x15fdec,
  `FUN_00167d38` @ 0x167d38) did **not execute during the observation window
  that ended at the SINK** (windows: 163 ms, 403 ms, 435 ms respectively across
  the three trials).
- The **direct SSL_write call chain at the SINK** does not pass through
  `libengine.so`; all frames at that point are inside `libflutter.so` +
  the pthread-start prologue. This is normal for a `dart:io` HTTP request: the
  socket write happens on the IO thread while the Dart isolate that produced
  the buffer runs on a different thread. It does **not** identify the producer
  of `z`.

**What is *not* proven by the above** (removing previously overreached wording):

- It is **not** proven that `libengine.so` as a whole is uninvolved in
  producing `z`.
- Any `libengine` code that ran during dlopen constructors (before hooks
  were armed, i.e. earlier than +720…+786 ms in the three trials) is
  **unobserved**.
- Any `libengine` function other than the four hooked is **unobserved**.
- The absence of `libengine` frames at the SINK backtrace only proves that
  the socket-write frame chain is inside `libflutter`; it does **not**
  demonstrate anything about who assembled the 48 bytes upstream.
- The presence of BoringSSL constants (ChaCha20 `expand 32-byte k`,
  SHA-256 H0, PBKDF2/HKDF strings, GCM `Rb`) inside `libflutter.so` only
  shows the TLS stack. It is not evidence about the `z` cipher.

Prior sessions had documented the SINK location and its `libflutter` backtrace;
this phase does not add new information about the *creator* of `z`.

---

## 5. Static traces that constrain the next step (facts only)

Byte-pattern search of the shipped native libraries:

| pattern                     | `libflutter.so`               | `libapp.so`      | `libengine.so`                |
|-----------------------------|-------------------------------|------------------|-------------------------------|
| AES S-box (`63 7c 77 7b …`) | absent (byte-order match)     | absent           | absent (obfuscated at runtime, `DAT_009281a8`) |
| ChaCha20 `expand 32-byte k` | 0x1aa980, 0x1aaa00            | absent           | absent                        |
| SHA-256 H0..H7 (LE)         | 0x200eb4, 0x201930            | absent           | 0x10a90 (KDF)                 |
| HEX table `0123456789abcdef`| 0x1cacb7, 0x206189            | 0x1bd91, 0x4c3a3 | 0x402b0                       |
| PBKDF2 / HKDF strings       | 0x1ec693 / 0x1b90fd, 0x1e26c3 | absent           | absent                        |
| GCM `Rb` mask (LE, `e1 00…`)| multiple                     | absent           | 0x346b8, 0x391b8, 0x3dcb8     |
| ARM AESE opcode `4e28 xxxx` | ≥ 30 hits in .text            | not scanned      | not scanned                   |

Interpretation constraints:
1. `libflutter.so` contains full BoringSSL statically linked, symbols stripped:
   511 dynamic symbols, none of `EVP_*`/`AES_*`/`SHA256_*`/`HKDF*` exported.
   Only `OPENSSL_memory_{alloc,free,get_size}` are exported (for BoringSSL's
   internal use). Not directly callable via `dlsym`.
2. `libapp.so` contains hex tables only.
3. `libengine.so` has its own SHA-256 K-table + GCM `Rb` constants (independent
   of BoringSSL); not observed to fire in this phase — but see §4 for the
   exact scope of that observation.

---

## 6. Next step (pre-declared)

Do **not** chase BoringSSL yet — its presence in `libflutter` is TLS
infrastructure, not evidence about `z`. The correct next question is
**where and when does the 48-byte `z` buffer first appear in the address
space**, and **who writes it there**.

Concrete plan (all in a single live run):

1. **Detect first appearance.** Periodically `Memory.scanSync` the `rw-`
   regions for a canonical marker: the last SSL_write's `iv_hex` from the
   *previous* run (replay works, so the server accepts the old z; but the
   client will generate a *new* IV each time — so a periodic scan is done
   for **any** 49-byte pattern starting with `0x0c` and consisting of only
   16 IV bytes + 32 CT bytes and being surrounded by URL-shaped ASCII
   `push-918010152455.europe-west1.run.app/?z=`). The first hit gives us
   the address of the assembled URL string.
2. **First hex form.** Immediately before the assembled URL exists, the
   raw 48 bytes and the hex conversion must exist. Set a page-level
   watchpoint (via `mprotect(PROT_READ)` on the containing page and hook
   `SIGSEGV`) if practical; otherwise, alternate strategy: at each memory
   scan hit, save the address, and on the next scan iteration observe
   whether the same 48-byte pattern (raw form) appeared anywhere upstream.
3. **Backtrace at hex conversion.** Hook the hex-encoding character output
   points. Dart's hex encoding writes the hex string to a `String` object
   built via `_StringBuffer` or the `_Uint8ArrayView` toRadixString. The
   two `HEX_LOWER` occurrences in `libapp.so` (`0x1bd91`, `0x4c3a3`) are
   candidate byte-lookup arrays; walk the .text callers that reference
   those .rodata offsets via `adrp+add` pairs and hook there. When they
   fire, record the source bytes and backtrace.
4. **Follow the buffer address.** Once the raw 48-byte buffer's address
   is known, hook `memcpy`/`memmove` (already installed for small sizes)
   to catch every duplication of that specific pointer's contents,
   forming a chain from the encryption output to the URL string to
   the SSL_write plaintext.

No key/scheme conclusion will be recorded until buffer identity links a
concrete producer function to the observed `z48`, **and** a captured
`(K, IV, plaintext)` re-encrypts to the same `z48` byte-for-byte.
