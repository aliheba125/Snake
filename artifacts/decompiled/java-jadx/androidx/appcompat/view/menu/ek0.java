package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class ek0 {

    public static final class a extends zg {
        public Object p;
        public Object q;
        public /* synthetic */ Object r;
        public int s;

        public a(xg xgVar) {
            super(xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            this.r = obj;
            this.s |= Integer.MIN_VALUE;
            return ek0.a(null, null, this);
        }
    }

    public static final class b extends g80 implements fw {
        public final /* synthetic */ x9 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(x9 x9Var) {
            super(1);
            this.n = x9Var;
        }

        public final void a(Throwable th) {
            x9 x9Var = this.n;
            np0.a aVar = np0.m;
            x9Var.n(np0.a(r31.a));
        }

        @Override // androidx.appcompat.view.menu.fw
        public /* bridge */ /* synthetic */ Object i(Object obj) {
            a((Throwable) obj);
            return r31.a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(gk0 gk0Var, dw dwVar, xg xgVar) {
        a aVar;
        Object c;
        int i;
        xg b2;
        Object c2;
        try {
            if (xgVar instanceof a) {
                aVar = (a) xgVar;
                int i2 = aVar.s;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    aVar.s = i2 - Integer.MIN_VALUE;
                    Object obj = aVar.r;
                    c = c60.c();
                    i = aVar.s;
                    if (i != 0) {
                        op0.b(obj);
                        if (aVar.b().d(q60.d) != gk0Var) {
                            throw new IllegalStateException("awaitClose() can only be invoked from the producer context".toString());
                        }
                        aVar.p = gk0Var;
                        aVar.q = dwVar;
                        aVar.s = 1;
                        b2 = b60.b(aVar);
                        y9 y9Var = new y9(b2, 1);
                        y9Var.z();
                        gk0Var.v(new b(y9Var));
                        Object w = y9Var.w();
                        c2 = c60.c();
                        if (w == c2) {
                            gj.c(aVar);
                        }
                        if (w == c) {
                            return c;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        dwVar = (dw) aVar.q;
                        op0.b(obj);
                    }
                    dwVar.d();
                    return r31.a;
                }
            }
            if (i != 0) {
            }
            dwVar.d();
            return r31.a;
        } catch (Throwable th) {
            dwVar.d();
            throw th;
        }
        aVar = new a(xgVar);
        Object obj2 = aVar.r;
        c = c60.c();
        i = aVar.s;
    }

    public static final vn0 b(th thVar, kh khVar, int i, u8 u8Var, xh xhVar, fw fwVar, tw twVar) {
        fk0 fk0Var = new fk0(lh.d(thVar, khVar), ab.b(i, u8Var, null, 4, null));
        if (fwVar != null) {
            fk0Var.h(fwVar);
        }
        fk0Var.K0(xhVar, fk0Var, twVar);
        return fk0Var;
    }

    public static /* synthetic */ vn0 c(th thVar, kh khVar, int i, u8 u8Var, xh xhVar, fw fwVar, tw twVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            khVar = bo.m;
        }
        kh khVar2 = khVar;
        if ((i2 & 2) != 0) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            u8Var = u8.SUSPEND;
        }
        u8 u8Var2 = u8Var;
        if ((i2 & 8) != 0) {
            xhVar = xh.DEFAULT;
        }
        xh xhVar2 = xhVar;
        if ((i2 & 16) != 0) {
            fwVar = null;
        }
        return b(thVar, khVar2, i3, u8Var2, xhVar2, fwVar, twVar);
    }
}
