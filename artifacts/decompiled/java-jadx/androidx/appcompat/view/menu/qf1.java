package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class qf1 extends fz1 {
    public Boolean b;
    public wf1 c;
    public Boolean d;

    public qf1(cx1 cx1Var) {
        super(cx1Var);
        this.c = new wf1() { // from class: androidx.appcompat.view.menu.zf1
            @Override // androidx.appcompat.view.menu.wf1
            public final String c(String str, String str2) {
                return null;
            }
        };
    }

    public static long G() {
        return ((Long) si1.f.a(null)).longValue();
    }

    public static long M() {
        return ((Long) si1.F.a(null)).longValue();
    }

    private final String c(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
            mj0.i(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            l().G().b("Could not find SystemProperties class", e);
            return str2;
        } catch (IllegalAccessException e2) {
            l().G().b("Could not access SystemProperties.get()", e2);
            return str2;
        } catch (NoSuchMethodException e3) {
            l().G().b("Could not find SystemProperties.get() method", e3);
            return str2;
        } catch (InvocationTargetException e4) {
            l().G().b("SystemProperties.get() threw an exception", e4);
            return str2;
        }
    }

    public final int A(String str) {
        return u(str, si1.q);
    }

    public final boolean B(String str, us1 us1Var) {
        return D(str, us1Var);
    }

    public final long C(String str) {
        return x(str, si1.c);
    }

    public final boolean D(String str, us1 us1Var) {
        if (str == null) {
            return ((Boolean) us1Var.a(null)).booleanValue();
        }
        String c = this.c.c(str, us1Var.b());
        return TextUtils.isEmpty(c) ? ((Boolean) us1Var.a(null)).booleanValue() : ((Boolean) us1Var.a(Boolean.valueOf("1".equals(c)))).booleanValue();
    }

    public final int E() {
        return j().b0(201500000, true) ? 100 : 25;
    }

    public final Boolean F(String str) {
        mj0.e(str);
        Bundle U = U();
        if (U == null) {
            l().G().a("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (U.containsKey(str)) {
            return Boolean.valueOf(U.getBoolean(str));
        }
        return null;
    }

    public final String H(String str) {
        return z(str, si1.N);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List I(String str) {
        Integer valueOf;
        mj0.e(str);
        Bundle U = U();
        if (U == null) {
            l().G().a("Failed to load metadata: Metadata bundle is null");
        } else if (U.containsKey(str)) {
            valueOf = Integer.valueOf(U.getInt(str));
            if (valueOf != null) {
                return null;
            }
            try {
                String[] stringArray = a().getResources().getStringArray(valueOf.intValue());
                if (stringArray == null) {
                    return null;
                }
                return Arrays.asList(stringArray);
            } catch (Resources.NotFoundException e) {
                l().G().b("Failed to load string array from metadata: resource not found", e);
                return null;
            }
        }
        valueOf = null;
        if (valueOf != null) {
        }
    }

    public final boolean J(String str) {
        return D(str, si1.M);
    }

    public final boolean K(String str) {
        return "1".equals(this.c.c(str, "gaia_collection_enabled"));
    }

    public final boolean L(String str) {
        return "1".equals(this.c.c(str, "measurement.event_sampling_enabled"));
    }

    public final String N() {
        return c("debug.firebase.analytics.app", "");
    }

    public final String O() {
        return c("debug.deferred.deeplink", "");
    }

    public final boolean P() {
        Boolean F = F("google_analytics_adid_collection_enabled");
        return F == null || F.booleanValue();
    }

    public final boolean Q() {
        Boolean F = F("google_analytics_automatic_screen_reporting_enabled");
        return F == null || F.booleanValue();
    }

    public final boolean R() {
        Boolean F = F("firebase_analytics_collection_deactivated");
        return F != null && F.booleanValue();
    }

    public final boolean S() {
        if (this.b == null) {
            Boolean F = F("app_measurement_lite");
            this.b = F;
            if (F == null) {
                this.b = Boolean.FALSE;
            }
        }
        return this.b.booleanValue() || !this.a.t();
    }

    public final boolean T() {
        if (this.d == null) {
            synchronized (this) {
                try {
                    if (this.d == null) {
                        ApplicationInfo applicationInfo = a().getApplicationInfo();
                        String a = dk0.a();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            this.d = Boolean.valueOf(str != null && str.equals(a));
                        }
                        if (this.d == null) {
                            this.d = Boolean.TRUE;
                            l().G().a("My process not in the list of running processes");
                        }
                    }
                } finally {
                }
            }
        }
        return this.d.booleanValue();
    }

    public final Bundle U() {
        try {
            if (a().getPackageManager() == null) {
                l().G().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo c = sa1.a(a()).c(a().getPackageName(), PackageParser.PARSE_IS_PRIVILEGED);
            if (c != null) {
                return c.metaData;
            }
            l().G().a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            l().G().b("Failed to load metadata: Package name not found", e);
            return null;
        }
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

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    public final double o(String str, us1 us1Var) {
        if (str == null) {
            return ((Double) us1Var.a(null)).doubleValue();
        }
        String c = this.c.c(str, us1Var.b());
        if (TextUtils.isEmpty(c)) {
            return ((Double) us1Var.a(null)).doubleValue();
        }
        try {
            return ((Double) us1Var.a(Double.valueOf(Double.parseDouble(c)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) us1Var.a(null)).doubleValue();
        }
    }

    public final int p(String str) {
        return q(str, si1.J, 500, 2000);
    }

    public final int q(String str, us1 us1Var, int i, int i2) {
        return Math.max(Math.min(u(str, us1Var), i2), i);
    }

    public final void r(wf1 wf1Var) {
        this.c = wf1Var;
    }

    public final boolean s(us1 us1Var) {
        return D(null, us1Var);
    }

    public final int t(String str) {
        return (tb2.a() && e().D(null, si1.b1)) ? 500 : 100;
    }

    public final int u(String str, us1 us1Var) {
        if (str == null) {
            return ((Integer) us1Var.a(null)).intValue();
        }
        String c = this.c.c(str, us1Var.b());
        if (TextUtils.isEmpty(c)) {
            return ((Integer) us1Var.a(null)).intValue();
        }
        try {
            return ((Integer) us1Var.a(Integer.valueOf(Integer.parseInt(c)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) us1Var.a(null)).intValue();
        }
    }

    public final int v() {
        return (yb2.a() && e().D(null, si1.I0) && j().b0(231100000, true)) ? 35 : 0;
    }

    public final int w(String str) {
        return Math.max(t(str), PackageParser.PARSE_COLLECT_CERTIFICATES);
    }

    public final long x(String str, us1 us1Var) {
        if (str == null) {
            return ((Long) us1Var.a(null)).longValue();
        }
        String c = this.c.c(str, us1Var.b());
        if (TextUtils.isEmpty(c)) {
            return ((Long) us1Var.a(null)).longValue();
        }
        try {
            return ((Long) us1Var.a(Long.valueOf(Long.parseLong(c)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) us1Var.a(null)).longValue();
        }
    }

    public final int y(String str) {
        return q(str, si1.K, 25, 100);
    }

    public final String z(String str, us1 us1Var) {
        return str == null ? (String) us1Var.a(null) : (String) us1Var.a(this.c.c(str, us1Var.b()));
    }
}
