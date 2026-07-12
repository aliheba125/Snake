package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class em {
    public static final void a(dm dmVar, int i) {
        xg d = dmVar.d();
        boolean z = i == 4;
        if (z || !(d instanceof bm) || b(i) != b(dmVar.o)) {
            d(dmVar, d, z);
            return;
        }
        nh nhVar = ((bm) d).p;
        kh b = d.b();
        if (nhVar.D(b)) {
            nhVar.A(b, dmVar);
        } else {
            e(dmVar);
        }
    }

    public static final boolean b(int i) {
        return i == 1 || i == 2;
    }

    public static final boolean c(int i) {
        return i == 2;
    }

    public static final void d(dm dmVar, xg xgVar, boolean z) {
        Object h;
        Object j = dmVar.j();
        Throwable e = dmVar.e(j);
        if (e != null) {
            np0.a aVar = np0.m;
            h = op0.a(e);
        } else {
            np0.a aVar2 = np0.m;
            h = dmVar.h(j);
        }
        Object a = np0.a(h);
        if (!z) {
            xgVar.n(a);
            return;
        }
        z50.c(xgVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        bm bmVar = (bm) xgVar;
        xg xgVar2 = bmVar.q;
        Object obj = bmVar.s;
        kh b = xgVar2.b();
        Object c = i01.c(b, obj);
        if (c != i01.a) {
            lh.f(xgVar2, b, c);
        }
        try {
            bmVar.q.n(a);
            r31 r31Var = r31.a;
        } finally {
            i01.a(b, c);
        }
    }

    public static final void e(dm dmVar) {
        bp a = j01.a.a();
        if (a.L()) {
            a.H(dmVar);
            return;
        }
        a.J(true);
        try {
            d(dmVar, dmVar.d(), true);
            do {
            } while (a.N());
        } finally {
            try {
            } finally {
            }
        }
    }
}
