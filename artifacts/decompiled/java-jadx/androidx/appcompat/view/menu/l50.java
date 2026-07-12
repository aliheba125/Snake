package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.w5;

/* loaded from: classes.dex */
public abstract class l50 {

    public static abstract class a {
        public abstract l50 a();

        public abstract a b(a11 a11Var);

        public abstract a c(String str);

        public abstract a d(String str);

        public abstract a e(b bVar);

        public abstract a f(String str);
    }

    public enum b {
        OK,
        BAD_CONFIG
    }

    public static a a() {
        return new w5.b();
    }

    public abstract a11 b();

    public abstract String c();

    public abstract String d();

    public abstract b e();

    public abstract String f();
}
