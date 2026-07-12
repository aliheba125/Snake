package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class r32 extends cp1 {
    public volatile t32 c;
    public volatile t32 d;
    public t32 e;
    public final Map f;
    public Activity g;
    public volatile boolean h;
    public volatile t32 i;
    public t32 j;
    public boolean k;
    public final Object l;

    public r32(cx1 cx1Var) {
        super(cx1Var);
        this.l = new Object();
        this.f = new ConcurrentHashMap();
    }

    public static /* synthetic */ void J(r32 r32Var, Bundle bundle, t32 t32Var, t32 t32Var2, long j) {
        if (bundle != null) {
            bundle.remove("screen_name");
            bundle.remove("screen_class");
        }
        r32Var.N(t32Var, t32Var2, j, true, r32Var.j().E(null, "screen_view", bundle, null, false));
    }

    @Override // androidx.appcompat.view.menu.cp1
    public final boolean A() {
        return false;
    }

    public final t32 C(boolean z) {
        v();
        n();
        if (!z) {
            return this.e;
        }
        t32 t32Var = this.e;
        return t32Var != null ? t32Var : this.j;
    }

    public final String D(Class cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return str;
        }
        String[] split = canonicalName.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        return str2.length() > e().t(null) ? str2.substring(0, e().t(null)) : str2;
    }

    public final void E(Activity activity) {
        synchronized (this.l) {
            try {
                if (activity == this.g) {
                    this.g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (e().Q()) {
            this.f.remove(activity);
        }
    }

    public final void F(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!e().Q() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f.put(activity, new t32(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void G(Activity activity, t32 t32Var, boolean z) {
        t32 t32Var2;
        t32 t32Var3 = this.c == null ? this.d : this.c;
        if (t32Var.b == null) {
            t32Var2 = new t32(t32Var.a, activity != null ? D(activity.getClass(), "Activity") : null, t32Var.c, t32Var.e, t32Var.f);
        } else {
            t32Var2 = t32Var;
        }
        this.d = this.c;
        this.c = t32Var2;
        h().D(new b42(this, t32Var2, t32Var3, b().b(), z));
    }

    public final void H(Activity activity, String str, String str2) {
        if (!e().Q()) {
            l().M().a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        t32 t32Var = this.c;
        if (t32Var == null) {
            l().M().a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.f.get(activity) == null) {
            l().M().a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = D(activity.getClass(), "Activity");
        }
        boolean a = x32.a(t32Var.b, str2);
        boolean a2 = x32.a(t32Var.a, str);
        if (a && a2) {
            l().M().a("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > e().t(null))) {
            l().M().b("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > e().t(null))) {
            l().M().b("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        l().K().c("Setting current screen to name, class", str == null ? "null" : str, str2);
        t32 t32Var2 = new t32(str, str2, j().P0());
        this.f.put(activity, t32Var2);
        G(activity, t32Var2, true);
    }

    public final void I(Bundle bundle, long j) {
        String str;
        synchronized (this.l) {
            try {
                if (!this.k) {
                    l().M().a("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String str2 = null;
                if (bundle != null) {
                    String string = bundle.getString("screen_name");
                    if (string != null && (string.length() <= 0 || string.length() > e().t(null))) {
                        l().M().b("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                        return;
                    }
                    String string2 = bundle.getString("screen_class");
                    if (string2 != null && (string2.length() <= 0 || string2.length() > e().t(null))) {
                        l().M().b("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                        return;
                    } else {
                        str2 = string2;
                        str = string;
                    }
                } else {
                    str = null;
                }
                if (str2 == null) {
                    Activity activity = this.g;
                    str2 = activity != null ? D(activity.getClass(), "Activity") : "Activity";
                }
                String str3 = str2;
                t32 t32Var = this.c;
                if (this.h && t32Var != null) {
                    this.h = false;
                    boolean a = x32.a(t32Var.b, str3);
                    boolean a2 = x32.a(t32Var.a, str);
                    if (a && a2) {
                        l().M().a("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                l().K().c("Logging screen view with name, class", str == null ? "null" : str, str3 == null ? "null" : str3);
                t32 t32Var2 = this.c == null ? this.d : this.c;
                t32 t32Var3 = new t32(str, str3, j().P0(), true, j);
                this.c = t32Var3;
                this.d = t32Var2;
                this.i = t32Var3;
                h().D(new v32(this, bundle, t32Var3, t32Var2, b().b()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void N(t32 t32Var, t32 t32Var2, long j, boolean z, Bundle bundle) {
        long j2;
        n();
        boolean z2 = false;
        boolean z3 = (t32Var2 != null && t32Var2.c == t32Var.c && x32.a(t32Var2.b, t32Var.b) && x32.a(t32Var2.a, t32Var.a)) ? false : true;
        if (z && this.e != null) {
            z2 = true;
        }
        if (z3) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            x92.W(t32Var, bundle2, true);
            if (t32Var2 != null) {
                String str = t32Var2.a;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = t32Var2.b;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", t32Var2.c);
            }
            if (z2) {
                long a = u().f.a(j);
                if (a > 0) {
                    j().L(bundle2, a);
                }
            }
            if (!e().Q()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = t32Var.e ? "app" : "auto";
            long a2 = b().a();
            if (t32Var.e) {
                long j3 = t32Var.f;
                if (j3 != 0) {
                    j2 = j3;
                    r().U(str3, "_vs", j2, bundle2);
                }
            }
            j2 = a2;
            r().U(str3, "_vs", j2, bundle2);
        }
        if (z2) {
            O(this.e, true, j);
        }
        this.e = t32Var;
        if (t32Var.e) {
            this.j = t32Var;
        }
        t().L(t32Var);
    }

    public final void O(t32 t32Var, boolean z, long j) {
        o().v(b().b());
        if (!u().E(t32Var != null && t32Var.d, z, j) || t32Var == null) {
            return;
        }
        t32Var.d = false;
    }

    public final t32 P() {
        return this.c;
    }

    public final void Q(Activity activity) {
        synchronized (this.l) {
            this.k = false;
            this.h = true;
        }
        long b = b().b();
        if (!e().Q()) {
            this.c = null;
            h().D(new f42(this, b));
        } else {
            t32 T = T(activity);
            this.d = this.c;
            this.c = null;
            h().D(new d42(this, T, b));
        }
    }

    public final void R(Activity activity, Bundle bundle) {
        t32 t32Var;
        if (!e().Q() || bundle == null || (t32Var = (t32) this.f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", t32Var.c);
        bundle2.putString("name", t32Var.a);
        bundle2.putString("referrer_name", t32Var.b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    public final void S(Activity activity) {
        synchronized (this.l) {
            this.k = true;
            if (activity != this.g) {
                synchronized (this.l) {
                    this.g = activity;
                    this.h = false;
                }
                if (e().Q()) {
                    this.i = null;
                    h().D(new j42(this));
                }
            }
        }
        if (!e().Q()) {
            this.c = this.i;
            h().D(new z32(this));
        } else {
            G(activity, T(activity), false);
            oh1 o = o();
            o.h().D(new ck1(o, o.b().b()));
        }
    }

    public final t32 T(Activity activity) {
        mj0.i(activity);
        t32 t32Var = (t32) this.f.get(activity);
        if (t32Var == null) {
            t32 t32Var2 = new t32(null, D(activity.getClass(), "Activity"), j().P0());
            this.f.put(activity, t32Var2);
            t32Var = t32Var2;
        }
        return this.i != null ? this.i : t32Var;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ oh1 o() {
        return super.o();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ zs1 p() {
        return super.p();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ ft1 q() {
        return super.q();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ d02 r() {
        return super.r();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ r32 s() {
        return super.s();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ h42 t() {
        return super.t();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ y62 u() {
        return super.u();
    }
}
