import angr, logging, time, sys
for n in ('angr','cle','pyvex','claripy','ailment'): logging.getLogger(n).setLevel('CRITICAL')
va=int(sys.argv[1],16); sz=int(sys.argv[2]); out=sys.argv[3]
t=time.time()
proj=angr.Project("/projects/sandbox/Snake/raw/lib/arm64-v8a/libengine.so", auto_load_libs=False)
cfg=proj.analyses.CFGFast(regions=[(va, va+sz)], normalize=True)
func=proj.kb.functions.get(va)
print(f"CFGFast: كتل={len(list(func.blocks)) if func else 0}, زمن={time.time()-t:.1f}s", flush=True)
if not func: sys.exit(1)
t=time.time()
dec=proj.analyses.Decompiler(func, cfg=cfg.model)
if dec.codegen and dec.codegen.text:
    code=dec.codegen.text
    open(out,"w").write(code)
    print(f"نجح: {len(code)} حرف، {code.count(chr(10))} سطر، goto={code.count('goto')}، زمن={time.time()-t:.1f}s")
else:
    print(f"لم يُنتج كوداً، زمن={time.time()-t:.1f}s")
