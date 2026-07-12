# Raw z bytes located — 64-byte buffer allocated inside libengine

## Setup
Single live run against `com.snake` with wrap gadget. Frida script hooks:
- `malloc()` returning to `libengine.so+*` : record every libengine allocation of size 20…200
- `memcpy()` with return address `libengine.so+0x801e2c` (the URL z-hex write) and `+0x800bd8` (std::string capacity resize)

At each observed hex-string copy, walk the recent-allocations ring and, for
each 40…80-byte buffer, read its current raw bytes and hex-encode them.
Compare against the observed z hex string. A match is only recorded when
the buffer's hex representation **equals** the copied string, byte-for-byte,
for the first N characters.

## Result

Fresh z this run: `0c460ea866e6db5816693206df90623cb17b79cb1aeea14e894ac51c932221b12a701d643dc2ba1ca4712bfe4ddc0090c2`

The buffer at `0xb400fd0b7141ef30`, allocated by libengine caller
`libengine.so+0x800290` (size **64 bytes**), holds raw bytes whose hex
representation matches the first 48 bytes of z:

```
buffer raw bytes (48 shown):
0c 46 0e a8 66 e6 db 58 16 69 32 06 df 90 62 3c
b1 7b 79 cb 1a ee a1 4e 89 4a c5 1c 93 22 21 b1
2a 70 1d 64 3d c2 ba 1c a4 71 2b fe 4d dc 00 90

z hex (first 96 chars): 0c460ea866e6db5816693206df90623cb17b79cb1aeea14e894ac51c932221b12a701d643dc2ba1ca4712bfe4ddc0090
                        ^─ raw byte 0                                     raw byte 47 ─^
```

Cross-check at three successive hex-string growth events during URL assembly:

| ts       | source-copy                | src_str prefix | matched_alloc                       | prefix_len |
|----------|----------------------------|----------------|-------------------------------------|------------|
| +8203 ms | append (47-char resize)   | `0c460ea866…`  | 0xb400fd0b7141ef30 (64B, +0x800290) | 47         |
| +8214 ms | append (95-char resize)   | `0c460ea866…`  | 0xb400fd0b7141ef30 (same)           | 95         |
| +8217 ms | Z_WRITE (98-char final)   | `0c460ea866…c2`| 0xb400fd0b7141ef30 (same)           | 98         |

The buffer is stable across all three snapshots — same address, same content.
The content grows from being fully written (first 48 bytes) before the string
builder starts. That means:

1. Something inside libengine allocated 64 bytes via `libengine.so+0x800270`.
2. Something inside libengine wrote 48 raw bytes into that buffer.
3. Only then does the hex encoder start reading those bytes and writing
   `0c<hexchars>` into a `std::string`.
4. The `std::string` grows through capacity doublings (22 → 47 → 95) inside
   the caller of the `+0x800bd8` append site.
5. Finally the completed 98-char hex-ASCII is `memcpy`'d into the URL buffer
   at `+0x801e2c`, and the URL is copied out via `+0x5b7f0`.

The disassembly of the small allocator wrapper at `libengine+0x800270`
confirms it is a thin `bl 0x81f140` (PLT stub) followed by a null-check and
an indirect call — a `operator new` / smart-pointer allocator wrapper.

## Corrections vs prior artefacts this session

Prior scan reports in this session claimed:
- "The z bytes never persist as a contiguous 48-byte object" (`RAW_BYTES_INVESTIGATION.md`).
That claim was based on a scan **after the URL was assembled** and it did
not enumerate buffers that libengine holds through its own allocator paths
past that point. It is now known to be wrong: the raw bytes DO persist,
in a 64-byte allocation held by libengine.

Prior scans did not find them because they searched for the exact 48 raw
bytes at aligned offsets; the buffer is 64 bytes with the raw data at
offset 0, which _should_ have matched. The likely reason for the earlier
null result is one of:
- the scan window (post-assembly, seconds after) was already past a free
  or reuse of the allocation, or
- the scan restricted itself to certain memory regions that missed this
  scudo-heap allocation.

Either way, the buffer's presence is now empirically established.

## What is STILL not proven

- Who writes those 48 bytes into the buffer. That is the cipher / hash /
  producer we are looking for.
- What the cipher is, what the key is, what the plaintext is.

## Next steps (pre-declared)

1. Hook the entry of `libengine.so+0x800270` (via `Interceptor.attach`) to
   record every 64-byte allocation and the caller's LR (i.e., who requests
   a 64-byte buffer). This identifies the code that OWNS the raw z buffer.
2. Immediately after each 64-byte allocation from that caller, install a
   `MemoryAccessMonitor` (or `mprotect` guard) on the buffer to catch the
   first write and its backtrace.
3. Backtrace to the cipher function; capture (K, IV/nonce, plaintext); rerun
   the algorithm locally; verify the resulting 48 bytes match z byte-for-byte.
4. Only after step 3 succeeds is it correct to name a specific function as
   "the encryptor of z".
