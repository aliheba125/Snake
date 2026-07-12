# z raw bytes — where they are (and are not) in process memory

## Setup
- Clean `com.snake` process (**no** Frida, **no** LD_PRELOAD gadget).
- PID 111169 on Redroid 14. z is sent at startup as usual.
- Post-startup memory scan via `/proc/PID/mem` (docker exec → `dd`), reading every readable region announced by `/proc/PID/maps` (2 402 regions).

## z observed at the sink (as ASCII string)
```
z=0c 98fb978d79e911a56b7f88109e5deba9 0f73d2f5cac6c02f820ca43be32ef33a fe4f300044cdfd7df8571ba2c6b492cf
       └──────── IV (16) ──────────┘└─────── CT[0..16] ──────────┘└─────── CT[16..32] ──────────┘
```
Full assembled URL lives at `0xf0902be45d91` in a `[anon:scudo:primary]` region
(Android's hardened allocator, used by dart:io's HttpClient).

## Raw-binary search over the entire memory map (clean process)

| pattern              | hits |
|----------------------|------|
| `iv_raw` (16 bytes)  | **0** |
| `ct_first16` (16 B)  | **0** |
| `ct_last16` (16 B)   | **0** |
| `iv + ct_first16` (32 B) | **0** |
| `full z48` (48 B)    | **0** |

The URL exists as ASCII (`z=0c...`). The 48 corresponding raw bytes exist **nowhere** as a
contiguous buffer at post-startup dump time.

## Cross-check: earlier hits under an *attached* Frida session were scratch

An earlier scan (with an active Frida script that had called `Memory.scanSync`
using `"ad 78 fa 57 ..."`) reported:
- `iv_raw` at `0xe1cd66dc5940` inside a rw-p region.
- `ct_first16` at `0xe1ca224dc970` and `0xe1ca224dc9a0` (30 B apart) plus at `0xe1cd66dc5950`.

The block at `0xe1cd66dc5940` is followed by an ASCII space-separated hex string
`" 4f d3 a1 b4 82\0"` (5 bytes of the same IV, textual form). Its total footprint
matches the exact byte length of the pattern string we passed to `Memory.scanSync`.
Under a clean process without Frida activity, the same patterns give **zero** hits.

Conclusion: those earlier hits were Frida internal scratch, **not** app state.

## What this narrows the hypothesis to

The z bytes never persist as a contiguous 48-byte object on the Dart heap.
Compatible interpretations (not yet ranked/proved):

1. **Streaming cipher + streaming hex.** Bytes are produced one at a time
   (or in 16-byte blocks) and immediately fed into hex encoding; the raw
   byte never lives outside a stack slot or SIMD register.
2. **Stack-local block cipher.** AES/GCM/CTR runs from a stack-resident
   context; the ciphertext block is `memcpy`d into the growing ASCII URL
   and the stack slot is reused.
3. **Register-level pipeline.** ARM NEON crypto (AES intrinsics) can hold
   both input and output blocks in Q registers; when combined with an
   inline hex table lookup, no memory-resident 48-byte block ever exists.

All three imply the encryption function has already returned by the time
we dump memory, and there is no lingering plaintext/ciphertext buffer to
scan for.

## What is *not* concluded

- Nothing about which specific cipher or key is used.
- Nothing about which module owns the pipeline.
- Nothing about `libengine` beyond the previously-scoped observation
  that four specific hooked functions did not fire in a 163–435 ms
  window (see PATH_PROOF.md §4).

## Next step (revised)

Since the raw bytes never persist, buffer-identity backwards from the SINK
via `Memory.scanSync` will not work. The next attempts must catch the bytes
**in flight**:

1. **URL region watchpoint.** Use Frida `MemoryAccessMonitor` or a
   `mprotect(PROT_NONE)` + `SIGSEGV` handler on the scudo page that holds
   the URL string. Capture the first *write* backtrace — this is the
   function that assembles the URL / performs the final `memcpy` from the
   hex-encoding buffer.
2. **Targeted `memcpy` filter.** Hook `memcpy`/`memmove` with an
   early return unless the source (first 4 bytes) equals `"z=0c"` or
   `"?z="`, or the destination is inside the currently-active scudo page.
   This avoids the global memcpy performance collapse observed earlier.
3. **Dart AOT function scan for hex loop.** The hex lookup table
   (`0123456789abcdef`) is present in `libapp.so` at `0x1bd91` and
   `0x4c3a3`. Enumerate `adrp+add` instruction pairs in `.text` that
   reference these offsets, and hook the containing functions to catch
   the hex-encoding call site.
