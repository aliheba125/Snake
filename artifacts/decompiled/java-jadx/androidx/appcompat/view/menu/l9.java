package androidx.appcompat.view.menu;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class l9 implements j70, Serializable {
    public static final Object s = a.m;
    public transient j70 m;
    public final Object n;
    public final Class o;
    public final String p;
    public final String q;
    public final boolean r;

    public static class a implements Serializable {
        public static final a m = new a();
    }

    public l9(Object obj, Class cls, String str, String str2, boolean z) {
        this.n = obj;
        this.o = cls;
        this.p = str;
        this.q = str2;
        this.r = z;
    }

    public j70 a() {
        j70 j70Var = this.m;
        if (j70Var != null) {
            return j70Var;
        }
        j70 b = b();
        this.m = b;
        return b;
    }

    public abstract j70 b();

    public Object c() {
        return this.n;
    }

    public String f() {
        return this.p;
    }

    public m70 g() {
        Class cls = this.o;
        if (cls == null) {
            return null;
        }
        return this.r ? do0.c(cls) : do0.b(cls);
    }

    public String j() {
        return this.q;
    }
}
