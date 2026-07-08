package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class wa {
    public static final Object b(kh khVar, Object obj, Object obj2, tw twVar, xg xgVar) {
        Object c;
        Object c2 = i01.c(khVar, obj2);
        try {
            Object h = ((tw) q21.a(twVar, 2)).h(obj, new lw0(xgVar, khVar));
            i01.a(khVar, c2);
            c = c60.c();
            if (h == c) {
                gj.c(xgVar);
            }
            return h;
        } catch (Throwable th) {
            i01.a(khVar, c2);
            throw th;
        }
    }

    public static /* synthetic */ Object c(kh khVar, Object obj, Object obj2, tw twVar, xg xgVar, int i, Object obj3) {
        if ((i & 4) != 0) {
            obj2 = i01.b(khVar);
        }
        return b(khVar, obj, obj2, twVar, xgVar);
    }

    public static final ts d(ts tsVar, kh khVar) {
        return tsVar instanceof os0 ? tsVar : new l31(tsVar, khVar);
    }
}
