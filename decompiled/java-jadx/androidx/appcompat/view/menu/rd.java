package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class rd {
    public static final Object a(Object obj, xg xgVar) {
        if (!(obj instanceof nd)) {
            return np0.a(obj);
        }
        np0.a aVar = np0.m;
        return np0.a(op0.a(((nd) obj).a));
    }

    public static final Object b(Object obj, x9 x9Var) {
        Throwable b = np0.b(obj);
        return b == null ? obj : new nd(b, false, 2, null);
    }

    public static final Object c(Object obj, fw fwVar) {
        Throwable b = np0.b(obj);
        return b == null ? fwVar != null ? new od(obj, fwVar) : obj : new nd(b, false, 2, null);
    }

    public static /* synthetic */ Object d(Object obj, fw fwVar, int i, Object obj2) {
        if ((i & 1) != 0) {
            fwVar = null;
        }
        return c(obj, fwVar);
    }
}
