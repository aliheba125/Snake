import angr, logging, time, sys
for n in ('angr','cle','pyvex','claripy'): logging.getLogger(n).setLevel('CRITICAL')
va=0x4ed990
t=time.time()
proj=angr.Project("/projects/sandbox/Snake/raw/lib/arm64-v8a/libengine.so", auto_load_libs=False)
print(f"تحميل {time.time()-t:.1f}s")
t=time.time()
cfg=proj.analyses.CFGFast(regions=[(va, va+21284)], normalize=True)
print(f"CFGFast: {len(cfg.functions)} دالة، زمن={time.time()-t:.1f}s")
func=cfg.functions.get(va) or proj.kb.functions.get(va)
if func is None:
    # جرّب إيجاد أقرب دالة
    print("لم تُعرّف الدالة عند العنوان بدقّة؛ الدوال المكتشفة:", list(cfg.functions.keys())[:5])
    sys.exit(0)
print(f"الدالة: {func.name}, كتل={len(list(func.blocks))}, حجم~={func.size}")
t=time.time()
try:
    dec=proj.analyses.Decompiler(func, cfg=cfg.model)
    if dec.codegen and dec.codegen.text:
        code=dec.codegen.text
        print(f"=== نجح مفكّك angr! ({len(code)} حرف، زمن={time.time()-t:.1f}s) ===")
        print(code[:3000])
        open("_INIT_16_angr_decompiled.c","w").write(code)
    else:
        print(f"مفكّك angr لم يُنتج كوداً (زمن={time.time()-t:.1f}s)")
except Exception as ex:
    print(f"مفكّك angr فشل بعد {time.time()-t:.1f}s: {type(ex).__name__}: {str(ex)[:300]}")
