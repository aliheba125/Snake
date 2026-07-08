package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class ba {
    public static final void a(xg xgVar, Throwable th) {
        np0.a aVar = np0.m;
        xgVar.n(np0.a(op0.a(th)));
        throw th;
    }

    public static final void b(xg xgVar, xg xgVar2) {
        xg b;
        try {
            b = b60.b(xgVar);
            np0.a aVar = np0.m;
            cm.c(b, np0.a(r31.a), null, 2, null);
        } catch (Throwable th) {
            a(xgVar2, th);
        }
    }

    public static final void c(tw twVar, Object obj, xg xgVar, fw fwVar) {
        xg a;
        xg b;
        try {
            a = b60.a(twVar, obj, xgVar);
            b = b60.b(a);
            np0.a aVar = np0.m;
            cm.b(b, np0.a(r31.a), fwVar);
        } catch (Throwable th) {
            a(xgVar, th);
        }
    }

    public static /* synthetic */ void d(tw twVar, Object obj, xg xgVar, fw fwVar, int i, Object obj2) {
        if ((i & 4) != 0) {
            fwVar = null;
        }
        c(twVar, obj, xgVar, fwVar);
    }
}
