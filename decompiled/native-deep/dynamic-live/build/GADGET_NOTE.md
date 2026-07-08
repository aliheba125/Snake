# Frida Gadget binary (not committed)

`libgadget.so` (~25 MB, arm64) is the stock **Frida Gadget** for android-arm64 and is a third-party
binary, so it is not committed here. Download the version matching your frida-server:

    curl -L https://github.com/frida/frida/releases/download/17.15.4/frida-gadget-17.15.4-android-arm64.so.xz -o gadget.so.xz
    python3 -c "import lzma;open('libgadget.so','wb').write(lzma.open('gadget.so.xz').read())"

Then follow `../TOOLCHAIN.md` §2 (rename to `libskia_helper.so`, push, set `wrap.com.snake`).

`build/compiled_conn.js` is the ready-to-run bundle of `agents/agent_conn.js` (produced by
`frida-compile`, includes `frida-java-bridge`). Regenerate with:

    frida-compile agents/agent_conn.js -o build/compiled_conn.js
