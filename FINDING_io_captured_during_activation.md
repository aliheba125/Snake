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
