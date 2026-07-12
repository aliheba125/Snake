package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class us1 {
    public static final Object h = new Object();
    public final String a;
    public final cs1 b;
    public final Object c;
    public final Object d;
    public final Object e;
    public volatile Object f;
    public volatile Object g;

    public final Object a(Object obj) {
        List<us1> list;
        synchronized (this.e) {
        }
        if (obj != null) {
            return obj;
        }
        if (as1.a == null) {
            return this.c;
        }
        synchronized (h) {
            try {
                if (mf1.a()) {
                    return this.g == null ? this.c : this.g;
                }
                try {
                    list = si1.a;
                    for (us1 us1Var : list) {
                        if (mf1.a()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object obj2 = null;
                        try {
                            cs1 cs1Var = us1Var.b;
                            if (cs1Var != null) {
                                obj2 = cs1Var.a();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (h) {
                            us1Var.g = obj2;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                cs1 cs1Var2 = this.b;
                if (cs1Var2 == null) {
                    return this.c;
                }
                try {
                    return cs1Var2.a();
                } catch (IllegalStateException unused3) {
                    return this.c;
                } catch (SecurityException unused4) {
                    return this.c;
                }
            } finally {
            }
        }
    }

    public final String b() {
        return this.a;
    }

    public us1(String str, Object obj, Object obj2, cs1 cs1Var) {
        this.e = new Object();
        this.f = null;
        this.g = null;
        this.a = str;
        this.c = obj;
        this.d = obj2;
        this.b = cs1Var;
    }
}
