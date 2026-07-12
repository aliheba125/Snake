# Note: `node_modules/` was removed from this folder

**What was here:** a standard npm dependency tree (804 files, ~77 MB) for this folder's
`frida-compile`/`frida-java-bridge` based agents, installed per `package.json` /
`package-lock.json` (both still present in this folder).

**Why it was removed (2026-07-12 repository audit):** it is a build artifact with zero unique
analytical content — fully reproducible by running `npm install` in this directory — and it was
never referenced by any documentation, script, or finding in the repository. This is the **only**
deletion made during the repository audit; every other file, script, evidence item, and archived
note in this repository was kept (per project policy: nothing is deleted for being old or
superseded — only genuinely temporary/zero-value build output is removed, and only with this kind
of explanatory note).

**To restore it** (if you need to run the TypeScript agents in this folder):

```bash
cd artifacts/decompiled/native-deep/dynamic-live/agents/
npm install
```

See [`REPOSITORY_TREE.md`](../../../../../REPOSITORY_TREE.md) and
[`FINAL_REPOSITORY_AUDIT.md`](../../../../../FINAL_REPOSITORY_AUDIT.md) for
the full audit record.
