# z URL assembly — exact memcpy call sites inside libengine (_INIT_34)

## Setup
Filter memcpy hooks to fire only when the return address is inside libengine
_INIT_34 (VA 0x7edb3c … 0x932db2). This is the giant OLLVM-flattened init
function that prior sessions identified. All observations from a single live
run.

## Observed sequence — the URL is assembled inside _INIT_34

Fresh z this run: `0c7b355a394c2263fcf6f862df0f7fc63e5302944e857b26fde8728d2ae099afed073ed3a9def536c0ddceb9206ba794b1`

At `+370..+372 ms` — a `std::string` grows through capacity doublings **already
holding hex characters** (a separate string is built in parallel; details in
§Prior-Strings below):

```
+370 ms  memcpy sz=22  ra=libengine.so+0x800bd8  src="a0e76e5bf65a6bb872437b"
+370 ms  memcpy sz=47  ra=libengine.so+0x800bd8  src="a0e76e5bf65a6bb872437ba934ee8c92a7ad19a1ac68d73"
+371 ms  memcpy sz=22  ra=libengine.so+0x800bd8  src="0c7b355a394c2263fcf6f8"            ← z growing
+371 ms  memcpy sz=47  ra=libengine.so+0x800bd8  src="0c7b355a394c2263fcf6f862df0f7fc63e5302944e857b2"
+372 ms  memcpy sz=95  ra=libengine.so+0x800bd8  src="0c7b355a394c2263fcf6f862df0f7fc63e5302944e857b26fde8728d2ae099afed073ed3a9def536c0ddceb9206ba79"
```

At `+373 ms` — the final assembly writes the completed URL into the scudo
buffer (all four writes target the same URL buffer):

```
+373 ms  memcpy sz=50  ra=libengine.so+0x801d80  dst=URL_BUF      src="https://push-918010152455.europe-west1.run.app/?z="
+373 ms  memcpy sz=98  ra=libengine.so+0x801e2c  dst=URL_BUF+50   src="0c7b355a394c2263fcf6f862df0f7fc63e5302944e857b26fde8728d2ae099afed073ed3a9def536c0ddceb9206ba794b1"
+373 ms  memcpy sz=3   ra=libengine.so+0x801674  dst=URL_BUF+148  src="&v="
+373 ms  memcpy sz=2   ra=libengine.so+0x801020  dst=URL_BUF+151  src="20"
+373 ms  FULL_READ sz=153 (libengine.so+0x5b7f0) src=URL_BUF      copies finished URL out
+400 ms  Z_SINK_HIT (libflutter+0x6d4be8)
```

All five in-place writes happen within one millisecond, from four distinct
call sites all inside `_INIT_34`.

## What is proven

- The URL is assembled inside `libengine.so`, in `_INIT_34`, at four
  identified `memcpy` call sites: `+0x801d80`, `+0x801e2c`, `+0x801674`,
  `+0x801020`.
- The 98-char z hex ASCII (`0c` + 96 hex chars) is `memcpy`d in one shot
  from a source buffer (address recorded per-run) at `+0x801e2c` into
  `URL_BUF+50`. That source buffer already contains the finished z hex
  ASCII when `+0x801e2c` fires.
- Just before that, at `+0x800bd8`, we see a `std::string` capacity-doubling
  chain (22 → 47 → 95 chars) that grows a string whose content is exactly
  the z hex ASCII (minus the last few chars — the final append into it
  is not observed via memcpy because it fits under the reallocation
  threshold).

## What is NOT proven (still open)

- **Where the z hex characters come from before `+0x800bd8`**.
  Someone writes hex characters into the growing `std::string`. That writer
  is inside `_INIT_34` too, but the individual hex-char writes (probably
  single `strb` at each step of a hex encoder loop) do not produce
  observable `memcpy` events. We have not yet identified the specific code
  that produced the 96 hex chars.
- **The raw 48 bytes that were hex-encoded**. If the app follows the
  standard pattern `hex(48_bytes) = 96 chars`, then somewhere upstream a
  48-byte buffer existed at least momentarily. It has not been found in
  the passive memory scan.
- **The cipher / key / IV / plaintext that produced the 48 raw bytes.**
  Not proven, not named. The only relationship established so far is
  "libengine assembles the URL that carries z" — not "libengine encrypts z".

## Prior-strings (§)

At `+370 ms`, before the z string, a different 47-char hex string is grown
through the same `+0x800bd8` allocator: `a0e76e5bf65a6bb872437ba934ee8c92a7ad19a1ac68d73`.
Earlier still, another one starts with `b0d624f5a3380bb3037ea3...`. These
are likely intermediate hex-encoded values (device ID hash, subscription
signature, etc.) produced by the same builder pattern but distinct from z.
Their content is what the `_INIT_34` code writes into growing strings
whenever it needs a hex payload. Whether they are inputs to z's construction
or separate values is not yet determined.

## Next steps (pre-declared)

Trace backward from `libengine.so+0x800bd8` (the string-append call site
in `_INIT_34`):

1. Disassemble `_INIT_34` around VA `0x800bd8` to identify the immediate
   surrounding block. Look for a byte-by-byte loop or a snprintf-style
   loop that writes hex characters into the target `std::string`.
2. Hook `_INIT_34` at that loop entry to record the SOURCE buffer of the
   hex encoding. That source buffer must hold the 48 raw z bytes (or 48
   bytes of something that gets rehashed).
3. Once the 48-byte source is identified, hook its writer to identify
   the cipher / hash function that produced it. That is the true
   z producer — only *then* can we sensibly discuss "encryption".
4. Reproduce z byte-for-byte from that source.

Concrete anti-scope-creep note: do not identify anything as "encryption"
based on adjacency in `_INIT_34`. Only functions that (a) take a plaintext
input and a key/IV/nonce and (b) produce ciphertext bytes that match the
z payload byte-for-byte qualify. Everything else is still just "code that
touches the URL buffer".
