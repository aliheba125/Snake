package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public abstract class dm extends yy0 {
    public int o;

    public dm(int i) {
        this.o = i;
    }

    public abstract void c(Object obj, Throwable th);

    public abstract xg d();

    public Throwable e(Object obj) {
        nd ndVar = obj instanceof nd ? (nd) obj : null;
        if (ndVar != null) {
            return ndVar.a;
        }
        return null;
    }

    public Object h(Object obj) {
        return obj;
    }

    public final void i(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            pp.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        z50.b(th);
        rh.a(d().b(), new yh("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object j();

    @Override // java.lang.Runnable
    public final void run() {
        Object a;
        Object a2;
        cz0 cz0Var = this.n;
        try {
            xg d = d();
            z50.c(d, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            bm bmVar = (bm) d;
            xg xgVar = bmVar.q;
            Object obj = bmVar.s;
            kh b = xgVar.b();
            Object c = i01.c(b, obj);
            if (c != i01.a) {
                lh.f(xgVar, b, c);
            }
            try {
                kh b2 = xgVar.b();
                Object j = j();
                Throwable e = e(j);
                q60 q60Var = (e == null && em.b(this.o)) ? (q60) b2.d(q60.d) : null;
                if (q60Var != null && !q60Var.c()) {
                    CancellationException w = q60Var.w();
                    c(j, w);
                    np0.a aVar = np0.m;
                    xgVar.n(np0.a(op0.a(w)));
                } else if (e != null) {
                    np0.a aVar2 = np0.m;
                    xgVar.n(np0.a(op0.a(e)));
                } else {
                    np0.a aVar3 = np0.m;
                    xgVar.n(np0.a(h(j)));
                }
                r31 r31Var = r31.a;
                i01.a(b, c);
                try {
                    cz0Var.a();
                    a2 = np0.a(r31.a);
                } catch (Throwable th) {
                    np0.a aVar4 = np0.m;
                    a2 = np0.a(op0.a(th));
                }
                i(null, np0.b(a2));
            } catch (Throwable th2) {
                i01.a(b, c);
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                np0.a aVar5 = np0.m;
                cz0Var.a();
                a = np0.a(r31.a);
            } catch (Throwable th4) {
                np0.a aVar6 = np0.m;
                a = np0.a(op0.a(th4));
            }
            i(th3, np0.b(a));
        }
    }
}
