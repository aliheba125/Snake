package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class n31 {
    public static final void a(tw twVar, Object obj, xg xgVar) {
        Object c;
        xg a = gj.a(xgVar);
        try {
            kh b = xgVar.b();
            Object c2 = i01.c(b, null);
            try {
                Object h = ((tw) q21.a(twVar, 2)).h(obj, a);
                c = c60.c();
                if (h != c) {
                    a.n(np0.a(h));
                }
            } finally {
                i01.a(b, c2);
            }
        } catch (Throwable th) {
            np0.a aVar = np0.m;
            a.n(np0.a(op0.a(th)));
        }
    }

    public static final Object b(is0 is0Var, Object obj, tw twVar) {
        Object ndVar;
        Object c;
        Object c2;
        Object c3;
        try {
            ndVar = ((tw) q21.a(twVar, 2)).h(obj, is0Var);
        } catch (Throwable th) {
            ndVar = new nd(th, false, 2, null);
        }
        c = c60.c();
        if (ndVar == c) {
            c3 = c60.c();
            return c3;
        }
        Object k0 = is0Var.k0(ndVar);
        if (k0 == c70.b) {
            c2 = c60.c();
            return c2;
        }
        if (k0 instanceof nd) {
            throw ((nd) k0).a;
        }
        return c70.h(k0);
    }
}
