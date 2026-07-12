import angr, logging, time, sys
for n in ('angr','cle','pyvex','claripy','ailment'): logging.getLogger(n).setLevel('CRITICAL')
va=int(sys.argv[1],16); sz=int(sys.argv[2]); out=sys.argv[3]
t=time.time()
proj=angr.Project("/projects/sandbox/Snake/raw/lib/arm64-v8a/libengine.so", auto_load_libs=False)
# CFGFast مع فحص كامل وإجبار على نقطة الدخول
cfg=proj.analyses.CFGFast(regions=[(va, va+sz)], normalize=True,
                          force_complete_scan=True, function_starts=[va])
func=proj.kb.functions.get(va)
if not func:
    print(f"لم تُعرّف؛ دوال مكتشفة قربها: {[hex(a) for a in list(proj.kb.functions.keys())[:8]]}", flush=True)
    sys.exit(0)
nb=len(list(func.blocks))
print(f"CFGFast(force): كتل={nb}, زمن={time.time()-t:.1f}s", flush=True)
t=time.time()
try:
    dec=proj.analyses.Decompiler(func, cfg=cfg.model)
    if dec.codegen and dec.codegen.text:
        code=dec.codegen.text; open(out,"w").write(code)
        print(f"نجح: {code.count(chr(10))} سطر، goto={code.count('goto')}، زمن={time.time()-t:.1f}s")
    else:
        print(f"لم يُنتج كوداً، زمن={time.time()-t:.1f}s")
except Exception as ex:
    print(f"فشل: {type(ex).__name__}: {str(ex)[:200]}، زمن={time.time()-t:.1f}s")
