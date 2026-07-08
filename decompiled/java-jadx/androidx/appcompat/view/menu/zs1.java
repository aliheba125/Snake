package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.text.TextUtils;
import androidx.appcompat.view.menu.lz1;
import androidx.appcompat.view.menu.q02;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zs1 extends cp1 {
    public String c;
    public String d;
    public int e;
    public String f;
    public String g;
    public long h;
    public long i;
    public List j;
    public String k;
    public int l;
    public String m;
    public String n;
    public String o;
    public long p;
    public String q;

    public zs1(cx1 cx1Var, long j) {
        super(cx1Var);
        this.p = 0L;
        this.q = null;
        this.i = j;
    }

    private final String J() {
        if (xd2.a() && e().s(si1.n0)) {
            l().K().a("Disabled IID for tests.");
            return null;
        }
        try {
            Class<?> loadClass = a().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, a());
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception unused) {
                    l().M().a("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                l().N().a("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
        }
    }

    @Override // androidx.appcompat.view.menu.cp1
    public final boolean A() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final cb2 B(String str) {
        String str2;
        int i;
        long j;
        List list;
        String str3;
        long j2;
        String str4;
        int i2;
        n();
        lz1 J = i().J();
        if (na2.a() && e().s(si1.S0)) {
            str2 = i().I().i();
            i = J.b();
        } else {
            str2 = "";
            i = 100;
        }
        String str5 = str2;
        int i3 = i;
        String F = F();
        String G = G();
        v();
        String str6 = this.d;
        long D = D();
        v();
        mj0.i(this.f);
        String str7 = this.f;
        v();
        n();
        if (this.h == 0) {
            this.h = this.a.L().z(a(), a().getPackageName());
        }
        long j3 = this.h;
        boolean p = this.a.p();
        boolean z = !i().r;
        n();
        String J2 = !this.a.p() ? null : J();
        cx1 cx1Var = this.a;
        long a = cx1Var.F().e.a();
        long min = a == 0 ? cx1Var.H : Math.min(cx1Var.H, a);
        int C = C();
        boolean P = e().P();
        tu1 i4 = i();
        i4.n();
        boolean z2 = i4.F().getBoolean("deferred_analytics_collection", false);
        String E = E();
        Boolean valueOf = e().F("google_analytics_default_allow_ad_personalization_signals") == null ? null : Boolean.valueOf(!r11.booleanValue());
        long j4 = this.i;
        List list2 = this.j;
        String v = J.v();
        if (this.k == null) {
            this.k = j().S0();
        }
        String str8 = this.k;
        if (ed2.a()) {
            j = j3;
            if (e().s(si1.x0)) {
                n();
                j2 = 0;
                if (this.p != 0) {
                    list = list2;
                    str3 = str8;
                    long a2 = b().a() - this.p;
                    if (this.o != null && a2 > 86400000 && this.q == null) {
                        I();
                    }
                } else {
                    list = list2;
                    str3 = str8;
                }
                if (this.o == null) {
                    I();
                }
                str4 = this.o;
                Boolean F2 = e().F("google_analytics_sgtm_upload_enabled");
                boolean booleanValue = F2 != null ? false : F2.booleanValue();
                long z0 = j().z0(F());
                if (sc2.a() || !e().s(si1.M0)) {
                    i2 = 0;
                } else {
                    j();
                    i2 = x92.y0();
                }
                return new cb2(F, G, str6, D, str7, 82001L, j, str, p, z, J2, 0L, min, C, P, z2, E, valueOf, j4, list, (String) null, v, str3, str4, booleanValue, z0, i3, str5, i2, (sc2.a() || !e().s(si1.M0)) ? j2 : j().I0());
            }
        } else {
            j = j3;
        }
        list = list2;
        str3 = str8;
        j2 = 0;
        str4 = null;
        Boolean F22 = e().F("google_analytics_sgtm_upload_enabled");
        if (F22 != null) {
        }
        long z02 = j().z0(F());
        if (sc2.a()) {
        }
        i2 = 0;
        if (sc2.a()) {
        }
        return new cb2(F, G, str6, D, str7, 82001L, j, str, p, z, J2, 0L, min, C, P, z2, E, valueOf, j4, list, (String) null, v, str3, str4, booleanValue, z02, i3, str5, i2, (sc2.a() || !e().s(si1.M0)) ? j2 : j().I0());
    }

    public final int C() {
        v();
        return this.l;
    }

    public final int D() {
        v();
        return this.e;
    }

    public final String E() {
        v();
        return this.n;
    }

    public final String F() {
        v();
        mj0.i(this.c);
        return this.c;
    }

    public final String G() {
        n();
        v();
        mj0.i(this.m);
        return this.m;
    }

    public final List H() {
        return this.j;
    }

    public final void I() {
        String format;
        n();
        if (i().J().l(lz1.a.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            j().U0().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            l().F().a("Analytics Storage consent is not granted");
            format = null;
        }
        st1 F = l().F();
        Object[] objArr = new Object[1];
        objArr[0] = format == null ? "null" : "not null";
        F.a(String.format("Resetting session stitching token to %s", objArr));
        this.o = format;
        this.p = b().a();
    }

    public final boolean K(String str) {
        String str2 = this.q;
        boolean z = (str2 == null || str2.equals(str)) ? false : true;
        this.q = str;
        return z;
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

    /* JADX WARN: Can't wrap try/catch for region: R(22:0|1|(1:3)(6:66|67|(1:69)(2:84|(1:86))|70|71|(21:73|(1:75)(1:82)|77|78|5|(1:65)(1:9)|10|11|(1:14)|15|(1:17)|18|19|(1:21)(1:52)|22|(1:24)|(3:26|(1:28)(1:31)|29)|32|(3:34|(1:36)(3:43|(3:46|(1:48)(1:49)|44)|50)|(2:38|39)(2:41|42))|51|(0)(0)))|4|5|(1:7)|65|10|11|(0)|15|(0)|18|19|(0)(0)|22|(0)|(0)|32|(0)|51|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01ac, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01cd, code lost:
    
        l().G().c("Fetching Google App Id failed with exception. appId", androidx.appcompat.view.menu.pt1.v(r0), r3);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0194 A[Catch: IllegalStateException -> 0x01ac, TryCatch #3 {IllegalStateException -> 0x01ac, blocks: (B:19:0x016f, B:22:0x018c, B:24:0x0194, B:26:0x01b0, B:28:0x01c4, B:29:0x01c9, B:31:0x01c7), top: B:18:0x016f }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01b0 A[Catch: IllegalStateException -> 0x01ac, TryCatch #3 {IllegalStateException -> 0x01ac, blocks: (B:19:0x016f, B:22:0x018c, B:24:0x0194, B:26:0x01b0, B:28:0x01c4, B:29:0x01c9, B:31:0x01c7), top: B:18:0x016f }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00a9  */
    @Override // androidx.appcompat.view.menu.cp1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y() {
        String str;
        String str2;
        PackageInfo packageInfo;
        Object[] objArr;
        int x;
        boolean z;
        List I;
        String b;
        String packageName = a().getPackageName();
        PackageManager packageManager = a().getPackageManager();
        String str3 = "";
        String str4 = "unknown";
        String str5 = "Unknown";
        int i = Integer.MIN_VALUE;
        if (packageManager == null) {
            l().G().b("PackageManager is null, app identity information might be inaccurate. appId", pt1.v(packageName));
        } else {
            try {
                str4 = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                l().G().b("Error retrieving app installer package name. appId", pt1.v(packageName));
            }
            if (str4 == null) {
                str4 = "manual_install";
            } else if ("com.android.vending".equals(str4)) {
                str4 = "";
            }
            try {
                packageInfo = packageManager.getPackageInfo(a().getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                str = "Unknown";
            }
            if (packageInfo != null) {
                CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                str2 = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                try {
                    str5 = packageInfo.versionName;
                    i = packageInfo.versionCode;
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = str5;
                    str5 = str2;
                    l().G().c("Error retrieving package info. appId, appName", pt1.v(packageName), str5);
                    str2 = str5;
                    str5 = str;
                    this.c = packageName;
                    this.f = str4;
                    this.d = str5;
                    this.e = i;
                    this.g = str2;
                    this.h = 0L;
                    if (TextUtils.isEmpty(this.a.M())) {
                    }
                    x = this.a.x();
                    switch (x) {
                    }
                    if (x == 0) {
                    }
                    this.m = "";
                    this.n = "";
                    if (objArr != false) {
                    }
                    b = new lw1(a(), this.a.P()).b("google_app_id");
                    if (!TextUtils.isEmpty(b)) {
                    }
                    this.m = str3;
                    if (!TextUtils.isEmpty(b)) {
                    }
                    if (z) {
                    }
                    this.j = null;
                    I = e().I("analytics.safelisted_events");
                    if (I != null) {
                    }
                    this.j = I;
                    if (packageManager == null) {
                    }
                }
                this.c = packageName;
                this.f = str4;
                this.d = str5;
                this.e = i;
                this.g = str2;
                this.h = 0L;
                objArr = TextUtils.isEmpty(this.a.M()) && "am".equals(this.a.N());
                x = this.a.x();
                switch (x) {
                    case 0:
                        l().K().a("App measurement collection enabled");
                        break;
                    case 1:
                        l().J().a("App measurement deactivated via the manifest");
                        break;
                    case 2:
                        l().K().a("App measurement deactivated via the init parameters");
                        break;
                    case q02.c.c /* 3 */:
                        l().J().a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                        break;
                    case 4:
                        l().J().a("App measurement disabled via the manifest");
                        break;
                    case q02.c.e /* 5 */:
                        l().K().a("App measurement disabled via the init parameters");
                        break;
                    case q02.c.f /* 6 */:
                        l().M().a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                        break;
                    case q02.c.g /* 7 */:
                        l().J().a("App measurement disabled via the global data collection setting");
                        break;
                    case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                        l().J().a("App measurement disabled due to denied storage consent");
                        break;
                    default:
                        l().J().a("App measurement disabled");
                        l().I().a("Invalid scion state in identity");
                        break;
                }
                z = x == 0;
                this.m = "";
                this.n = "";
                if (objArr != false) {
                    this.n = this.a.M();
                }
                b = new lw1(a(), this.a.P()).b("google_app_id");
                if (!TextUtils.isEmpty(b)) {
                    str3 = b;
                }
                this.m = str3;
                if (!TextUtils.isEmpty(b)) {
                    this.n = new lw1(a(), this.a.P()).b("admob_app_id");
                }
                if (z) {
                    l().K().c("App measurement enabled for app package, google app id", this.c, TextUtils.isEmpty(this.m) ? this.n : this.m);
                }
                this.j = null;
                I = e().I("analytics.safelisted_events");
                if (I != null) {
                    if (I.isEmpty()) {
                        l().M().a("Safelisted event list is empty. Ignoring");
                    } else {
                        Iterator it = I.iterator();
                        while (it.hasNext()) {
                            if (!j().w0("safelisted event", (String) it.next())) {
                            }
                        }
                    }
                    if (packageManager == null) {
                        this.l = p50.a(a()) ? 1 : 0;
                        return;
                    } else {
                        this.l = 0;
                        return;
                    }
                }
                this.j = I;
                if (packageManager == null) {
                }
            }
        }
        str2 = "Unknown";
        this.c = packageName;
        this.f = str4;
        this.d = str5;
        this.e = i;
        this.g = str2;
        this.h = 0L;
        if (TextUtils.isEmpty(this.a.M())) {
        }
        x = this.a.x();
        switch (x) {
        }
        if (x == 0) {
        }
        this.m = "";
        this.n = "";
        if (objArr != false) {
        }
        b = new lw1(a(), this.a.P()).b("google_app_id");
        if (!TextUtils.isEmpty(b)) {
        }
        this.m = str3;
        if (!TextUtils.isEmpty(b)) {
        }
        if (z) {
        }
        this.j = null;
        I = e().I("analytics.safelisted_events");
        if (I != null) {
        }
        this.j = I;
        if (packageManager == null) {
        }
    }
}
