import angr, logging, sys, time
logging.getLogger('angr').setLevel('ERROR')
logging.getLogger('cle').setLevel('ERROR')
t=time.time()
proj=angr.Project("/projects/sandbox/Snake/raw/lib/arm64-v8a/libengine.so", auto_load_libs=False)
print(f"angr حمّل الثنائي في {time.time()-t:.1f}s، arch={proj.arch.name}")
va=0x4ed990; sz=21284
# استرجاع CFG محلي لدالة _INIT_16 المُسطّحة
t=time.time()
try:
    cfg=proj.analyses.CFGEmulated(starts=[va], context_sensitivity_level=1,
                                  keep_state=False, max_steps=400)
    blocks=[n for n in cfg.graph.nodes() if va<=n.addr<va+sz]
    print(f"CFGEmulated: {len(list(cfg.graph.nodes()))} عقدة كلياً، {len(blocks)} داخل _INIT_16، زمن={time.time()-t:.1f}s")
except Exception as ex:
    print(f"CFGEmulated فشل بعد {time.time()-t:.1f}s: {type(ex).__name__}: {str(ex)[:200]}")
