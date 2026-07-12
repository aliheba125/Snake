# libengine.so IS the z-URL builder — direct buffer proof

## Setup
Live run against `com.snake` with Frida Gadget 17 (listen mode, `on_load: resume`),
wrap `com.snake=LD_PRELOAD=/system/lib64/libskia_android.so`. Attached at ~200 ms.
Hooked `memcpy`/`memmove` with a **content filter**: only fire when the source
starts with `z=`, `?z=`, `http`, `push-`, `europe`, or `&v=` (very selective, no
performance collapse).

## What the filter caught (single run)

Chronological order for one z-request session:

```
+1974 ms  memcpy       sz=50   dst=0xb400f4b80484a680  src=0xf4b65d8b9000
          caller=libengine.so+0x801d80
          src="https://push-918010152455.europe-west1.run.app/?z="

+1975 ms  memcpy       sz=153  dst=0xb400f4b7d481d2d1  src=0xb400f4b80484a680
          caller=libengine.so+0x5b7f0
          src="https://push-918010152455.europe-west1.run.app/?z=0c85263b2fc71908ce8e9a20319683bea0dac2d1fbf3ddf8f940ff1b936ff5557c9f8a36d7279708bcb007739961891d89&v=20"

+1976 ms  memcpy       sz=153  dst=0xf4b647df8528     src=0xb400f4b80484a680
          caller=libc.so+0xb25f4  (dart:io HttpClient handoff)
          src=same full URL

+2015 ms  Z_SINK       libflutter+0x6d4be8 receives the same GET line
```

Fresh z on this run: `0c85263b2fc71908ce8e9a20319683bea0dac2d1fbf3ddf8f940ff1b936ff5557c9f8a36d7279708bcb007739961891d89`
(server accepts it via replay).

## Proof

Buffer at `0xb400f4b80484a680` is the URL assembly area.
- At `libengine.so+0x801d80`, a `memcpy` writes the 50-byte prefix
  `https://push-918010152455.europe-west1.run.app/?z=` INTO that buffer.
- Between +1974 ms and +1975 ms, the buffer's contents grow from 50 to 153 bytes
  (the extra 103 bytes = 96 hex chars of z + `&v=20`).
- At `libengine.so+0x5b7f0`, another `memcpy` reads the finished 153-byte URL
  OUT of that buffer, headed toward the HTTP client.

Both `memcpy` return addresses map inside `libengine.so`'s `.text`:
- 0x5b7f0 sits in a small helper (function start near 0x5b7a0; the memcpy
  call site is at 0x5b7ec, `bl` into the PLT).
- 0x801d80 sits inside the giant OLLVM-flattened `_INIT_34` (function
  `0x007edb3c`, size `0x145276`; offset 0x14244 within it — see
  `decompiled/native-deep/ghidra/function_inventory.tsv`).

The prior work's `_INIT_*` giants were noted as OLLVM decryption/flattened
routines. `_INIT_34` containing the code that writes the z-URL prefix is
concrete evidence that **the network URL assembly for the z endpoint runs
inside libengine.so**, not inside Dart/pointycastle.

## Direct correction of earlier claims

- Earlier this session I recorded `KDF/AES_enc/AES_dec/FUN_167d38 = 0 fires
  during the SINK window` and (in the first commit of PATH_PROOF.md) framed
  that as `libengine ruled out for z-encryption`. That framing was
  overreach — see the revised PATH_PROOF.md §4. The narrow reading (four
  named functions did not fire in the ~163–435 ms window) still holds.
- Prior sessions' framing that `z is encrypted in the Dart layer
  (pointycastle)` is **not** supported by the buffer trace above: the
  URL is assembled in libengine.so, and the hex characters of z are
  appended into the libengine-owned buffer.

## What remains to be located (still hypothesis)

- **Where do the 96 hex characters of z come from.**
  Between +1974 ms (prefix write) and +1975 ms (full URL read), 96 hex
  chars + `&v=20` (5 chars) get appended into `0xb400f4b80484a680 + 50`.
  This append could be:
  (a) many single-byte writes (str[i] = table[b >> 4]; str[i+1] = table[b & 0xf]),
  (b) one memcpy from an internal 96-byte hex staging buffer,
  (c) libc `snprintf` / `strncat` with `%02x` format.
- The **cipher and key** that produce the raw 48 z-bytes remain unknown.

## Next steps (pre-declared, do not skip)

1. Directly hook `libengine.so+0x801d80` (Interceptor.attach). At entry, read
   the caller's registers to capture the URL-buffer pointer, then dump the
   containing scudo page. Follow-up: on the SAME hook, install a temporary
   `MemoryAccessMonitor` on `dst_ptr + 50 … dst_ptr + 200` — the append
   region — to observe the very next write(s) into it and capture their
   backtrace.
2. Widen the memcpy filter to include `snprintf`, `strncat`, `strcat`,
   `stpcpy`. If z is written via one of these, the filter will catch it.
3. Independently, hook `libengine.so+0x5b7f0` at entry to capture the
   full 153-byte URL contents plus the source pointer and the calling
   stack. This is the last libengine site the URL passes through before
   it reaches Dart/HTTP.

No cipher/key claim will be recorded until we can capture (K, IV/nonce,
plaintext) and re-produce the exact 48-byte z bytes byte-for-byte.
