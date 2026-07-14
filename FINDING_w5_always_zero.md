# FINDING: w5 (w21) is ALWAYS ZERO at all key_engine call sites

**Date:** 2026-07-14
**Method:** Binary search for all `bl 0x81cb8` callers + ARM64 decoding

## Discovery

Inside `key_engine` (0x81cb8), the decision register `w21` is set by:

    0x81ce0: mov w21, w5     ; w21 = argument #5 from caller

Then later:

    0x81d38: tbz w21, #0, skip_success   ; if bit0==0: skip FUN_0017e148

## Evidence: w5 is ALWAYS 0 across all 11 callers

Found 11 call sites of `bl 0x81cb8` in the OLLVM state machine (0xa6000..0xaf000).
Every single one has `mov w5, wzr` (encoding: `2a1f03e5`) within 1-3 instructions before the `bl`.

| Caller offset | w5 assignment |
|:---:|:---:|
| 0xa63c4 | mov w5, wzr @ 0xa63b4 |
| 0xa680c | not written; already 0 |
| 0xa69e8 | mov w5, wzr @ 0xa69d8 |
| 0xa8d4c | mov w5, wzr @ 0xa8d3c |
| 0xaa140 | mov w5, wzr @ 0xaa12c |
| 0xaa498 | mov w5, wzr @ 0xaa48c |
| 0xaa9cc | mov w5, wzr @ 0xaa9bc |
| 0xab614 | mov w5, wzr @ 0xab600 |
| 0xaded4 | mov w5, wzr @ 0xadec8 |
| 0xae348 | mov w5, wzr @ 0xae33c |
| 0xae7ac | mov w5, wzr @ 0xae7a4 |

## Implication

FUN_0017e148 (the success handler) is UNREACHABLE with the static code as written.
No call site passes w5=1. This means one of:

### Hypothesis A: Self-modification
The `mov w5, wzr` instructions are patched at runtime via mprotect RWX to `mov w5, #1`
when a valid key is processed. Consistent with the engines known self-relocation layer.

### Hypothesis B: Async path
The actual success signal is communicated via worker thread (spawned at bl 0x618a4 ->
pthread_create) back to Dart asynchronously, not via w21.

### Hypothesis C: key_engine is NOT the validator (STRONGEST)
key_engine is the request builder. It ALWAYS gets w5=0 because at this stage the local
decision has already been made or is delegated to the worker/server.
The actual local rejection for 135790 happens BEFORE key_engine in the OLLVM blocks
that route to error (ilil -> channel A) vs proceed to server path.

## Supporting evidence for Hypothesis C

- 135790 causes ZERO network calls (proven Phase 1) -> rejection is before network/server
- key_engine is called WITH 135790 (observed in Stalker) -> it runs for invalid codes
- Therefore: either key_engine itself rejects (but w21 is set to 0 by CALLER not by
  key_engine logic), OR the rejection happens somewhere else entirely

## Updated model

    Entry Key entered
        |
        v
    OLLVM state machine (0xa58c0)
        |
        +-- format/checksum check (WHERE? still unknown)
        |       |
        |       +-- FAIL -> ilil(N) -> "Code is Not valid" -> return to Dart (NO network)
        |
        +-- PASS format -> key_engine (0x81cb8, always w5=0)
                |
                +-- vtable dispatch (ret stub = no-op for all codes)
                +-- worker thread (pthread_create via bl 0x618a4)
                +-- server call (GATE 2: rest.snakeseller.com)
                +-- server response -> verdict

## Next steps

1. Trace which OLLVM blocks execute for invalid format (135790) vs longer/formatted codes
2. Find the ilil call site during Activate (where is the error message produced)
3. Test well-formatted but wrong keys to distinguish format-reject from server-reject
4. Monitor pthread_create and worker thread for the actual server communication
