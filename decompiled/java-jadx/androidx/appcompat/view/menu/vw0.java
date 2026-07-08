package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class vw0 extends s implements ke0, ss, gx {
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(vw0.class, Object.class, "_state");
    private volatile Object _state;
    public int d;

    public static final class a extends zg {
        public Object p;
        public Object q;
        public Object r;
        public Object s;
        public Object t;
        public /* synthetic */ Object u;
        public int w;

        public a(xg xgVar) {
            super(xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            this.u = obj;
            this.w |= Integer.MIN_VALUE;
            return vw0.this.b(null, this);
        }
    }

    public vw0(Object obj) {
        this._state = obj;
    }

    @Override // androidx.appcompat.view.menu.ts
    public Object a(Object obj, xg xgVar) {
        setValue(obj);
        return r31.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0097 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:14:0x003e, B:15:0x008f, B:17:0x0097, B:19:0x009c, B:21:0x00bd, B:23:0x00c3, B:27:0x00a2, B:30:0x00a9, B:39:0x005f, B:41:0x0071, B:42:0x0080), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009c A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:14:0x003e, B:15:0x008f, B:17:0x0097, B:19:0x009c, B:21:0x00bd, B:23:0x00c3, B:27:0x00a2, B:30:0x00a9, B:39:0x005f, B:41:0x0071, B:42:0x0080), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c3 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:14:0x003e, B:15:0x008f, B:17:0x0097, B:19:0x009c, B:21:0x00bd, B:23:0x00c3, B:27:0x00a2, B:30:0x00a9, B:39:0x005f, B:41:0x0071, B:42:0x0080), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00c1 -> B:15:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00d3 -> B:15:0x008f). Please report as a decompilation issue!!! */
    @Override // androidx.appcompat.view.menu.ss
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object b(ts tsVar, xg xgVar) {
        a aVar;
        Object c;
        int i;
        vw0 vw0Var;
        xw0 xw0Var;
        ts tsVar2;
        q60 q60Var;
        Object obj;
        Object obj2;
        Object obj3;
        try {
            if (xgVar instanceof a) {
                aVar = (a) xgVar;
                int i2 = aVar.w;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    aVar.w = i2 - Integer.MIN_VALUE;
                    Object obj4 = aVar.u;
                    c = c60.c();
                    i = aVar.w;
                    if (i != 0) {
                        op0.b(obj4);
                        vw0Var = this;
                        xw0Var = (xw0) d();
                    } else if (i == 1) {
                        xw0Var = (xw0) aVar.r;
                        tsVar = (ts) aVar.q;
                        vw0Var = (vw0) aVar.p;
                        op0.b(obj4);
                    } else if (i == 2) {
                        obj = aVar.t;
                        q60Var = (q60) aVar.s;
                        xw0Var = (xw0) aVar.r;
                        tsVar2 = (ts) aVar.q;
                        vw0Var = (vw0) aVar.p;
                        op0.b(obj4);
                        if (!xw0Var.h()) {
                        }
                        obj2 = e.get(vw0Var);
                        if (q60Var != null) {
                        }
                        if (obj != null) {
                        }
                        if (obj2 == of0.a) {
                        }
                        aVar.p = vw0Var;
                        aVar.q = tsVar2;
                        aVar.r = xw0Var;
                        aVar.s = q60Var;
                        aVar.t = obj2;
                        aVar.w = 2;
                        if (tsVar2.a(obj3, aVar) == c) {
                        }
                    } else {
                        if (i != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        obj = aVar.t;
                        q60Var = (q60) aVar.s;
                        xw0Var = (xw0) aVar.r;
                        tsVar2 = (ts) aVar.q;
                        vw0Var = (vw0) aVar.p;
                        op0.b(obj4);
                        obj2 = e.get(vw0Var);
                        if (q60Var != null) {
                            x60.d(q60Var);
                        }
                        if (obj != null || !z50.a(obj, obj2)) {
                            obj3 = obj2 == of0.a ? null : obj2;
                            aVar.p = vw0Var;
                            aVar.q = tsVar2;
                            aVar.r = xw0Var;
                            aVar.s = q60Var;
                            aVar.t = obj2;
                            aVar.w = 2;
                            if (tsVar2.a(obj3, aVar) == c) {
                                return c;
                            }
                            obj = obj2;
                        }
                        if (!xw0Var.h()) {
                            aVar.p = vw0Var;
                            aVar.q = tsVar2;
                            aVar.r = xw0Var;
                            aVar.s = q60Var;
                            aVar.t = obj;
                            aVar.w = 3;
                            if (xw0Var.e(aVar) == c) {
                                return c;
                            }
                        }
                        obj2 = e.get(vw0Var);
                        if (q60Var != null) {
                        }
                        if (obj != null) {
                        }
                        if (obj2 == of0.a) {
                        }
                        aVar.p = vw0Var;
                        aVar.q = tsVar2;
                        aVar.r = xw0Var;
                        aVar.s = q60Var;
                        aVar.t = obj2;
                        aVar.w = 2;
                        if (tsVar2.a(obj3, aVar) == c) {
                        }
                    }
                    tsVar2 = tsVar;
                    q60Var = (q60) aVar.b().d(q60.d);
                    obj = null;
                    obj2 = e.get(vw0Var);
                    if (q60Var != null) {
                    }
                    if (obj != null) {
                    }
                    if (obj2 == of0.a) {
                    }
                    aVar.p = vw0Var;
                    aVar.q = tsVar2;
                    aVar.r = xw0Var;
                    aVar.s = q60Var;
                    aVar.t = obj2;
                    aVar.w = 2;
                    if (tsVar2.a(obj3, aVar) == c) {
                    }
                }
            }
            if (i != 0) {
            }
            tsVar2 = tsVar;
            q60Var = (q60) aVar.b().d(q60.d);
            obj = null;
            obj2 = e.get(vw0Var);
            if (q60Var != null) {
            }
            if (obj != null) {
            }
            if (obj2 == of0.a) {
            }
            aVar.p = vw0Var;
            aVar.q = tsVar2;
            aVar.r = xw0Var;
            aVar.s = q60Var;
            aVar.t = obj2;
            aVar.w = 2;
            if (tsVar2.a(obj3, aVar) == c) {
            }
        } catch (Throwable th) {
            vw0Var.g(xw0Var);
            throw th;
        }
        aVar = new a(xgVar);
        Object obj42 = aVar.u;
        c = c60.c();
        i = aVar.w;
    }

    @Override // androidx.appcompat.view.menu.gx
    public ss c(kh khVar, int i, u8 u8Var) {
        return ww0.d(this, khVar, i, u8Var);
    }

    @Override // androidx.appcompat.view.menu.s
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public xw0 e() {
        return new xw0();
    }

    @Override // androidx.appcompat.view.menu.s
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public xw0[] f(int i) {
        return new xw0[i];
    }

    public final boolean k(Object obj, Object obj2) {
        int i;
        u[] h;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !z50.a(obj3, obj)) {
                return false;
            }
            if (z50.a(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.d;
            if ((i2 & 1) != 0) {
                this.d = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.d = i3;
            u[] h2 = h();
            r31 r31Var = r31.a;
            while (true) {
                xw0[] xw0VarArr = (xw0[]) h2;
                if (xw0VarArr != null) {
                    for (xw0 xw0Var : xw0VarArr) {
                        if (xw0Var != null) {
                            xw0Var.g();
                        }
                    }
                }
                synchronized (this) {
                    i = this.d;
                    if (i == i3) {
                        this.d = i3 + 1;
                        return true;
                    }
                    h = h();
                    r31 r31Var2 = r31.a;
                }
                h2 = h;
                i3 = i;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.ke0
    public void setValue(Object obj) {
        if (obj == null) {
            obj = of0.a;
        }
        k(null, obj);
    }
}
