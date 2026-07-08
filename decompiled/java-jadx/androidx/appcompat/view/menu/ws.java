package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract /* synthetic */ class ws {

    public static final class a extends zg {
        public Object p;
        public Object q;
        public Object r;
        public boolean s;
        public /* synthetic */ Object t;
        public int u;

        public a(xg xgVar) {
            super(xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            this.t = obj;
            this.u |= Integer.MIN_VALUE;
            return ws.c(null, null, false, this);
        }
    }

    public static final Object b(ts tsVar, vn0 vn0Var, xg xgVar) {
        Object c;
        Object c2 = c(tsVar, vn0Var, true, xgVar);
        c = c60.c();
        return c2 == c ? c2 : r31.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #0 {all -> 0x003c, blocks: (B:12:0x0036, B:14:0x0062, B:19:0x0077, B:21:0x007f, B:32:0x0054, B:34:0x005e), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0091 -> B:13:0x0039). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(ts tsVar, vn0 vn0Var, boolean z, xg xgVar) {
        a aVar;
        Object c;
        int i;
        za it;
        za zaVar;
        ts tsVar2;
        Object b;
        try {
            if (xgVar instanceof a) {
                aVar = (a) xgVar;
                int i2 = aVar.u;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    aVar.u = i2 - Integer.MIN_VALUE;
                    Object obj = aVar.t;
                    c = c60.c();
                    i = aVar.u;
                    if (i != 0) {
                        op0.b(obj);
                        us.c(tsVar);
                        it = vn0Var.iterator();
                        aVar.p = tsVar;
                        aVar.q = vn0Var;
                        aVar.r = it;
                        aVar.s = z;
                        aVar.u = 1;
                        b = it.b(aVar);
                        if (b == c) {
                        }
                    } else if (i == 1) {
                        z = aVar.s;
                        zaVar = (za) aVar.r;
                        vn0Var = (vn0) aVar.q;
                        tsVar2 = (ts) aVar.p;
                        op0.b(obj);
                        if (((Boolean) obj).booleanValue()) {
                        }
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z = aVar.s;
                        zaVar = (za) aVar.r;
                        vn0Var = (vn0) aVar.q;
                        tsVar2 = (ts) aVar.p;
                        op0.b(obj);
                        it = zaVar;
                        tsVar = tsVar2;
                        aVar.p = tsVar;
                        aVar.q = vn0Var;
                        aVar.r = it;
                        aVar.s = z;
                        aVar.u = 1;
                        b = it.b(aVar);
                        if (b == c) {
                            return c;
                        }
                        tsVar2 = tsVar;
                        zaVar = it;
                        obj = b;
                        if (((Boolean) obj).booleanValue()) {
                            if (z) {
                                eb.a(vn0Var, null);
                            }
                            return r31.a;
                        }
                        Object next = zaVar.next();
                        aVar.p = tsVar2;
                        aVar.q = vn0Var;
                        aVar.r = zaVar;
                        aVar.s = z;
                        aVar.u = 2;
                        if (tsVar2.a(next, aVar) == c) {
                            return c;
                        }
                        it = zaVar;
                        tsVar = tsVar2;
                        aVar.p = tsVar;
                        aVar.q = vn0Var;
                        aVar.r = it;
                        aVar.s = z;
                        aVar.u = 1;
                        b = it.b(aVar);
                        if (b == c) {
                        }
                    }
                }
            }
            if (i != 0) {
            }
        } finally {
        }
        aVar = new a(xgVar);
        Object obj2 = aVar.t;
        c = c60.c();
        i = aVar.u;
    }
}
