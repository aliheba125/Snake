package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;

/* loaded from: classes.dex */
public final class sa0 {
    public static final sa0 a;
    public static final boolean b = false;
    public static final qa0 c;

    static {
        sa0 sa0Var = new sa0();
        a = sa0Var;
        ty0.f("kotlinx.coroutines.fast.service.loader", true);
        c = sa0Var.a();
    }

    public final qa0 a() {
        ps0 a2;
        List d;
        Object next;
        qa0 e;
        try {
            if (b) {
                d = yq.a.c();
            } else {
                a2 = ts0.a(ServiceLoader.load(ra0.class, ra0.class.getClassLoader()).iterator());
                d = vs0.d(a2);
            }
            Iterator it = d.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int c2 = ((ra0) next).c();
                    do {
                        Object next2 = it.next();
                        int c3 = ((ra0) next2).c();
                        if (c2 < c3) {
                            next = next2;
                            c2 = c3;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            ra0 ra0Var = (ra0) next;
            return (ra0Var == null || (e = ta0.e(ra0Var, d)) == null) ? ta0.b(null, null, 3, null) : e;
        } catch (Throwable th) {
            return ta0.b(th, null, 2, null);
        }
    }
}
