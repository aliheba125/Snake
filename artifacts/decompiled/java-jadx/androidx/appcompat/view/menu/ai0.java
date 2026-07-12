package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.e6;
import androidx.appcompat.view.menu.zh0;

/* loaded from: classes.dex */
public abstract class ai0 {
    public static ai0 a = a().a();

    public static abstract class a {
        public abstract ai0 a();

        public abstract a b(String str);

        public abstract a c(long j);

        public abstract a d(String str);

        public abstract a e(String str);

        public abstract a f(String str);

        public abstract a g(zh0.a aVar);

        public abstract a h(long j);
    }

    public static a a() {
        return new e6.b().h(0L).g(zh0.a.ATTEMPT_MIGRATION).c(0L);
    }

    public abstract String b();

    public abstract long c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract zh0.a g();

    public abstract long h();

    public boolean i() {
        return g() == zh0.a.REGISTER_ERROR;
    }

    public boolean j() {
        return g() == zh0.a.NOT_GENERATED || g() == zh0.a.ATTEMPT_MIGRATION;
    }

    public boolean k() {
        return g() == zh0.a.REGISTERED;
    }

    public boolean l() {
        return g() == zh0.a.UNREGISTERED;
    }

    public boolean m() {
        return g() == zh0.a.ATTEMPT_MIGRATION;
    }

    public abstract a n();

    public ai0 o(String str, long j, long j2) {
        return n().b(str).c(j).h(j2).a();
    }

    public ai0 p() {
        return n().b(null).a();
    }

    public ai0 q(String str) {
        return n().e(str).g(zh0.a.REGISTER_ERROR).a();
    }

    public ai0 r() {
        return n().g(zh0.a.NOT_GENERATED).a();
    }

    public ai0 s(String str, String str2, long j, String str3, long j2) {
        return n().d(str).g(zh0.a.REGISTERED).b(str3).f(str2).c(j2).h(j).a();
    }

    public ai0 t(String str) {
        return n().d(str).g(zh0.a.UNREGISTERED).a();
    }
}
