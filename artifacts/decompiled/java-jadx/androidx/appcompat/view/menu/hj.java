package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class hj {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(xg xgVar) {
        Object a;
        if (xgVar instanceof bm) {
            return xgVar.toString();
        }
        try {
            np0.a aVar = np0.m;
            a = np0.a(xgVar + '@' + b(xgVar));
        } catch (Throwable th) {
            np0.a aVar2 = np0.m;
            a = np0.a(op0.a(th));
        }
        if (np0.b(a) != null) {
            a = xgVar.getClass().getName() + '@' + b(xgVar);
        }
        return (String) a;
    }
}
