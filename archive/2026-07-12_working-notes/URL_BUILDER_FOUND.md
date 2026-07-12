# libengine.so touches the z-URL buffer — but this alone does not prove it encrypts z

## Setup
Live run against `com.snake` with Frida Gadget 17 (listen mode, `on_load: resume`),
wrap `com.snake=LD_PRELOAD=/system/lib64/libskia_android.so`. Attached at ~200 ms.
Hooked `memcpy`/`memmove` with a **content filter**: only fire when the source
starts with `z=`, `?z=`, `http`, `push-`, `europe`, or `&v=`.

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
          caller=libc.so+0xb25f4  (some libc string helper)
          src=same full URL

+2015 ms  Z_SINK       libflutter+0x6d4be8 receives the same GET line
```

Fresh z on this run: `0c85263b2fc71908ce8e9a20319683bea0dac2d1fbf3ddf8f940ff1b936ff5557c9f8a36d7279708bcb007739961891d89`

## What is proven (and only this)

- Buffer at `0xb400f4b80484a680` is the URL assembly area.
- `libengine.so+0x801d80` executes a `memcpy` that writes the **50-byte
  static URL prefix** `https://push-...?z=` into that buffer. The source
  string is a fixed template (not derived from anything z-specific).
- `libengine.so+0x5b7f0` executes a `memcpy` that **reads the finished
  153-byte URL out** of that buffer, headed toward the HTTP client.
- Between +1974 ms and +1975 ms the buffer content grows from 50 to 153
  bytes: `+96` hex chars of z, `+5` bytes of `&v=20`, and a null.

Function containment inside libengine (from `function_inventory.tsv`):
- `0x5b7f0` sits in a small helper (function start near 0x5b7a0; the
  memcpy call site is at 0x5b7ec, `bl` into the PLT).
- `0x801d80` sits inside the giant OLLVM-flattened `_INIT_34`
  (function `0x007edb3c`, size `0x145276`, offset `0x14244`).

## What is **NOT** proven by the above

- **libengine does not necessarily encrypt or create z.** The two
  memcpys observed are:
  - a copy of a *static* URL prefix template, and
  - a copy of an *already-completed* URL out to the caller.
  Copying a URL is not encrypting z. Any component (Dart / Java bridge
  / another libengine function / anything else) could be the one that
  wrote the 96 hex characters of z into the append region between
  +1974 ms and +1975 ms.
- The identity of the code that produced the raw z bytes, the cipher,
  the key, the IV/nonce, and the plaintext — all still unknown.

## Correction of the previous file version

An earlier version of this file said "libengine.so **IS** the z-URL builder".
That framing overreached from the same evidence: a URL-buffer touch and a
URL-buffer read do **not** demonstrate that libengine produced the ciphertext
inside the URL. The observation only puts libengine on the transport path
of the URL. It does not name it the cipher.

## Next steps (pre-declared)

Walk backward from `libengine+0x5b7f0` and from the append region into
`0xb400f4b80484a680 + 50` until we reach the **first write** of any z
character (a hex digit) into that region. Only when we have:
1. the exact instruction / function that wrote the first hex byte, and
2. the source buffer / register content that byte came from, and
3. a re-computation chain from a captured `(key, IV, plaintext)` to that
   byte sequence,
can we name the actual z-producer. Until then the finding is only:
libengine copies the finished URL. Nothing more.

Concrete plan for this next probe (`watch_append.py`, already prepared):

1. Hook `memcpy` / `memmove` and match `returnAddress == libengine+0x801d80`
   to catch the prefix write and record the URL buffer pointer `dst`.
2. As soon as `dst` is known, install hooks on `memcpy`, `memmove`,
   `stpcpy`, `strcpy`, `strncat`, `strcat`, `snprintf`, `memset` filtered
   by "destination address is inside `dst+50 … dst+200`". Record the
   backtrace and source content of every hit.
3. Also hook `memcpy` filtered by `returnAddress == libengine+0x5b7f0`
   to snapshot the *finished* buffer plus the calling stack.
4. If (2) captures no small-copy events, the hex characters were written
   by inline `strb` instructions with no libc call — in that case, use
   `MemoryAccessMonitor` (or single-step) on `dst+50 … dst+200` to
   catch the writer directly.
