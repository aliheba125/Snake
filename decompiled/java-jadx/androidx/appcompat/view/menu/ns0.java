package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.i6;

/* loaded from: classes.dex */
public abstract class ns0 {

    public static abstract class a {
        public abstract ns0 a();

        public abstract a b(lo loVar);

        public abstract a c(wo woVar);

        public abstract a d(r11 r11Var);

        public abstract a e(d21 d21Var);

        public abstract a f(String str);
    }

    public static a a() {
        return new i6.b();
    }

    public abstract lo b();

    public abstract wo c();

    public byte[] d() {
        return (byte[]) e().apply(c().b());
    }

    public abstract r11 e();

    public abstract d21 f();

    public abstract String g();
}
