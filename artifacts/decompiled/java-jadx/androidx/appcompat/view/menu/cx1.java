package androidx.appcompat.view.menu;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.appcompat.view.menu.lz1;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class cx1 implements iz1 {
    public static volatile cx1 I;
    public volatile Boolean A;
    public Boolean B;
    public Boolean C;
    public volatile boolean D;
    public int E;
    public int F;
    public final long H;
    public final Context a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final mf1 f;
    public final qf1 g;
    public final tu1 h;
    public final pt1 i;
    public final jw1 j;
    public final y62 k;
    public final x92 l;
    public final mt1 m;
    public final cc n;
    public final r32 o;
    public final d02 p;
    public final oh1 q;
    public final h32 r;
    public final String s;
    public ft1 t;
    public h42 u;
    public ci1 v;
    public zs1 w;
    public Boolean y;
    public long z;
    public boolean x = false;
    public AtomicInteger G = new AtomicInteger(0);

    public cx1(yz1 yz1Var) {
        Bundle bundle;
        boolean z = false;
        mj0.i(yz1Var);
        mf1 mf1Var = new mf1(yz1Var.a);
        this.f = mf1Var;
        as1.a = mf1Var;
        Context context = yz1Var.a;
        this.a = context;
        this.b = yz1Var.b;
        this.c = yz1Var.c;
        this.d = yz1Var.d;
        this.e = yz1Var.h;
        this.A = yz1Var.e;
        this.s = yz1Var.j;
        this.D = true;
        jn1 jn1Var = yz1Var.g;
        if (jn1Var != null && (bundle = jn1Var.s) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.B = (Boolean) obj;
            }
            Object obj2 = jn1Var.s.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.C = (Boolean) obj2;
            }
        }
        ov1.l(context);
        cc d = kj.d();
        this.n = d;
        Long l = yz1Var.i;
        this.H = l != null ? l.longValue() : d.a();
        this.g = new qf1(this);
        tu1 tu1Var = new tu1(this);
        tu1Var.p();
        this.h = tu1Var;
        pt1 pt1Var = new pt1(this);
        pt1Var.p();
        this.i = pt1Var;
        x92 x92Var = new x92(this);
        x92Var.p();
        this.l = x92Var;
        this.m = new mt1(new wz1(yz1Var, this));
        this.q = new oh1(this);
        r32 r32Var = new r32(this);
        r32Var.w();
        this.o = r32Var;
        d02 d02Var = new d02(this);
        d02Var.w();
        this.p = d02Var;
        y62 y62Var = new y62(this);
        y62Var.w();
        this.k = y62Var;
        h32 h32Var = new h32(this);
        h32Var.p();
        this.r = h32Var;
        jw1 jw1Var = new jw1(this);
        jw1Var.p();
        this.j = jw1Var;
        jn1 jn1Var2 = yz1Var.g;
        if (jn1Var2 != null && jn1Var2.n != 0) {
            z = true;
        }
        boolean z2 = !z;
        if (context.getApplicationContext() instanceof Application) {
            d02 H = H();
            if (H.a().getApplicationContext() instanceof Application) {
                Application application = (Application) H.a().getApplicationContext();
                if (H.c == null) {
                    H.c = new r22(H);
                }
                if (z2) {
                    application.unregisterActivityLifecycleCallbacks(H.c);
                    application.registerActivityLifecycleCallbacks(H.c);
                    H.l().K().a("Registered activity lifecycle callback");
                }
            }
        } else {
            l().L().a("Application context is not an Application");
        }
        jw1Var.D(new ex1(this, yz1Var));
    }

    public static cx1 c(Context context, jn1 jn1Var, Long l) {
        Bundle bundle;
        if (jn1Var != null && (jn1Var.q == null || jn1Var.r == null)) {
            jn1Var = new jn1(jn1Var.m, jn1Var.n, jn1Var.o, jn1Var.p, null, null, jn1Var.s, null);
        }
        mj0.i(context);
        mj0.i(context.getApplicationContext());
        if (I == null) {
            synchronized (cx1.class) {
                try {
                    if (I == null) {
                        I = new cx1(new yz1(context, jn1Var, l));
                    }
                } finally {
                }
            }
        } else if (jn1Var != null && (bundle = jn1Var.s) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            mj0.i(I);
            I.m(jn1Var.s.getBoolean("dataCollectionDefaultEnabled"));
        }
        mj0.i(I);
        return I;
    }

    public static void f(cp1 cp1Var) {
        if (cp1Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (cp1Var.z()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(cp1Var.getClass()));
    }

    public static /* synthetic */ void g(cx1 cx1Var, yz1 yz1Var) {
        cx1Var.h().n();
        ci1 ci1Var = new ci1(cx1Var);
        ci1Var.p();
        cx1Var.v = ci1Var;
        zs1 zs1Var = new zs1(cx1Var, yz1Var.f);
        zs1Var.w();
        cx1Var.w = zs1Var;
        ft1 ft1Var = new ft1(cx1Var);
        ft1Var.w();
        cx1Var.t = ft1Var;
        h42 h42Var = new h42(cx1Var);
        h42Var.w();
        cx1Var.u = h42Var;
        cx1Var.l.q();
        cx1Var.h.q();
        cx1Var.w.x();
        cx1Var.l().J().b("App measurement initialized, version", 82001L);
        cx1Var.l().J().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String F = zs1Var.F();
        if (TextUtils.isEmpty(cx1Var.b)) {
            if (cx1Var.L().F0(F)) {
                cx1Var.l().J().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                cx1Var.l().J().a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + F);
            }
        }
        cx1Var.l().F().a("Debug-level message logging enabled");
        if (cx1Var.E != cx1Var.G.get()) {
            cx1Var.l().G().c("Not all components initialized", Integer.valueOf(cx1Var.E), Integer.valueOf(cx1Var.G.get()));
        }
        cx1Var.x = true;
    }

    public static void i(dz1 dz1Var) {
        if (dz1Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (dz1Var.r()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(dz1Var.getClass()));
    }

    public static void j(fz1 fz1Var) {
        if (fz1Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public final ci1 A() {
        i(this.v);
        return this.v;
    }

    public final zs1 B() {
        f(this.w);
        return this.w;
    }

    public final ft1 C() {
        f(this.t);
        return this.t;
    }

    public final mt1 D() {
        return this.m;
    }

    public final pt1 E() {
        pt1 pt1Var = this.i;
        if (pt1Var == null || !pt1Var.r()) {
            return null;
        }
        return this.i;
    }

    public final tu1 F() {
        j(this.h);
        return this.h;
    }

    public final jw1 G() {
        return this.j;
    }

    public final d02 H() {
        f(this.p);
        return this.p;
    }

    public final r32 I() {
        f(this.o);
        return this.o;
    }

    public final h42 J() {
        f(this.u);
        return this.u;
    }

    public final y62 K() {
        f(this.k);
        return this.k;
    }

    public final x92 L() {
        j(this.l);
        return this.l;
    }

    public final String M() {
        return this.b;
    }

    public final String N() {
        return this.c;
    }

    public final String O() {
        return this.d;
    }

    public final String P() {
        return this.s;
    }

    public final void Q() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    public final void R() {
        this.G.incrementAndGet();
    }

    @Override // androidx.appcompat.view.menu.iz1
    public final Context a() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.iz1
    public final cc b() {
        return this.n;
    }

    @Override // androidx.appcompat.view.menu.iz1
    public final mf1 d() {
        return this.f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x00d8, code lost:
    
        if (r1.z() != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(jn1 jn1Var) {
        lz1 lz1Var;
        Boolean d;
        h().n();
        if (sc2.a() && this.g.s(si1.M0) && L().V0()) {
            x92 L = L();
            L.n();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            lg.l(L.a(), new jc2(L.a), intentFilter, 2);
            L.l().F().a("Registered app receiver");
        }
        lz1 J = F().J();
        int b = J.b();
        Boolean F = this.g.F("google_analytics_default_allow_ad_storage");
        Boolean F2 = this.g.F("google_analytics_default_allow_analytics_storage");
        if (!(F == null && F2 == null) && F().x(-10)) {
            lz1Var = new lz1(F, F2, -10);
        } else {
            if (!TextUtils.isEmpty(B().G()) && (b == 0 || b == 30 || b == 10 || b == 30 || b == 30 || b == 40)) {
                H().K(new lz1(null, null, -10), this.H);
            } else if (TextUtils.isEmpty(B().G()) && jn1Var != null && jn1Var.s != null && F().x(30)) {
                lz1Var = lz1.c(jn1Var.s, 30);
            }
            lz1Var = null;
        }
        if (lz1Var != null) {
            H().K(lz1Var, this.H);
            J = lz1Var;
        }
        H().J(J);
        if (na2.a() && this.g.s(si1.S0)) {
            int a = F().I().a();
            Boolean F3 = this.g.F("google_analytics_default_allow_ad_user_data");
            if (F3 != null && lz1.k(-10, a)) {
                H().I(new fh1(F3, -10));
            } else if (TextUtils.isEmpty(B().G()) || !(a == 0 || a == 30)) {
                if (TextUtils.isEmpty(B().G()) && jn1Var != null && jn1Var.s != null && lz1.k(30, a)) {
                    fh1 b2 = fh1.b(jn1Var.s, 30);
                    if (b2.j()) {
                        H().I(b2);
                    }
                }
                if (TextUtils.isEmpty(B().G()) && jn1Var != null && jn1Var.s != null && F().m.a() == null && (d = fh1.d(jn1Var.s)) != null) {
                    H().b0(jn1Var.q, "allow_personalized_ads", d.toString(), false);
                }
            } else {
                H().I(new fh1((Boolean) null, -10));
            }
        }
        if (F().e.a() == 0) {
            l().K().b("Persisting first open", Long.valueOf(this.H));
            F().e.b(this.H);
        }
        H().n.c();
        if (s()) {
            if (!TextUtils.isEmpty(B().G()) || !TextUtils.isEmpty(B().E())) {
                L();
                if (x92.l0(B().G(), F().P(), B().E(), F().O())) {
                    l().J().a("Rechecking which service to use due to a GMP App Id change");
                    F().Q();
                    C().H();
                    this.u.Z();
                    this.u.Y();
                    F().e.b(this.H);
                    F().g.b(null);
                }
                F().G(B().G());
                F().D(B().E());
            }
            if (!F().J().l(lz1.a.ANALYTICS_STORAGE)) {
                F().g.b(null);
            }
            H().T(F().g.a());
            if (ta2.a() && this.g.s(si1.p0) && !L().W0() && !TextUtils.isEmpty(F().v.a())) {
                l().L().a("Remote config removed with active feature rollouts");
                F().v.b(null);
            }
            if (!TextUtils.isEmpty(B().G()) || !TextUtils.isEmpty(B().E())) {
                boolean p = p();
                if (!F().B() && !this.g.R()) {
                    F().E(!p);
                }
                if (p) {
                    H().n0();
                }
                K().e.a();
                J().Q(new AtomicReference());
                J().C(F().y.a());
            }
        } else if (p()) {
            if (!L().E0("android.permission.INTERNET")) {
                l().G().a("App is missing INTERNET permission");
            }
            if (!L().E0("android.permission.ACCESS_NETWORK_STATE")) {
                l().G().a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!sa1.a(this.a).f() && !this.g.S()) {
                if (!x92.c0(this.a)) {
                    l().G().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!x92.d0(this.a, false)) {
                    l().G().a("AppMeasurementService not registered/enabled");
                }
            }
            l().G().a("Uploading is not possible. App measurement disabled");
        }
        if (sc2.a() && this.g.s(si1.M0) && L().V0()) {
            final d02 H = H();
            H.getClass();
            new Thread(new Runnable() { // from class: androidx.appcompat.view.menu.bx1
                @Override // java.lang.Runnable
                public final void run() {
                    d02.this.p0();
                }
            }).start();
        }
        F().o.a(true);
    }

    @Override // androidx.appcompat.view.menu.iz1
    public final jw1 h() {
        i(this.j);
        return this.j;
    }

    public final /* synthetic */ void k(String str, int i, Throwable th, byte[] bArr, Map map) {
        if ((i != 200 && i != 204 && i != 304) || th != null) {
            l().L().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        F().t.a(true);
        if (bArr == null || bArr.length == 0) {
            l().F().a("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            String optString3 = jSONObject.optString("gbraid", "");
            double optDouble = jSONObject.optDouble("timestamp", 0.0d);
            if (TextUtils.isEmpty(optString)) {
                l().F().a("Deferred Deep Link is empty.");
                return;
            }
            Bundle bundle = new Bundle();
            if (nb2.a() && this.g.s(si1.Z0)) {
                if (!L().K0(optString)) {
                    l().L().d("Deferred Deep Link validation failed. gclid, gbraid, deep link", optString2, optString3, optString);
                    return;
                }
                bundle.putString("gbraid", optString3);
            } else if (!L().K0(optString)) {
                l().L().c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.p.z0("auto", "_cmp", bundle);
            x92 L = L();
            if (TextUtils.isEmpty(optString) || !L.h0(optString, optDouble)) {
                return;
            }
            L.a().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
        } catch (JSONException e) {
            l().G().b("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    @Override // androidx.appcompat.view.menu.iz1
    public final pt1 l() {
        i(this.i);
        return this.i;
    }

    public final void m(boolean z) {
        this.A = Boolean.valueOf(z);
    }

    public final void n() {
        this.E++;
    }

    public final boolean o() {
        return this.A != null && this.A.booleanValue();
    }

    public final boolean p() {
        return x() == 0;
    }

    public final boolean q() {
        h().n();
        return this.D;
    }

    public final boolean r() {
        return TextUtils.isEmpty(this.b);
    }

    public final boolean s() {
        if (!this.x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        h().n();
        Boolean bool = this.y;
        if (bool == null || this.z == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.n.b() - this.z) > 1000)) {
            this.z = this.n.b();
            boolean z = true;
            Boolean valueOf = Boolean.valueOf(L().E0("android.permission.INTERNET") && L().E0("android.permission.ACCESS_NETWORK_STATE") && (sa1.a(this.a).f() || this.g.S() || (x92.c0(this.a) && x92.d0(this.a, false))));
            this.y = valueOf;
            if (valueOf.booleanValue()) {
                if (!L().j0(B().G(), B().E()) && TextUtils.isEmpty(B().E())) {
                    z = false;
                }
                this.y = Boolean.valueOf(z);
            }
        }
        return this.y.booleanValue();
    }

    public final boolean t() {
        return this.e;
    }

    public final boolean u() {
        h().n();
        i(v());
        String F = B().F();
        Pair u = F().u(F);
        if (!this.g.P() || ((Boolean) u.second).booleanValue() || TextUtils.isEmpty((CharSequence) u.first)) {
            l().F().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        if (!v().w()) {
            l().L().a("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        if (na2.a() && this.g.s(si1.U0)) {
            d02 H = H();
            H.n();
            hg1 V = H.t().V();
            Bundle bundle = V != null ? V.m : null;
            if (bundle == null) {
                int i = this.F;
                this.F = i + 1;
                boolean z = i < 10;
                l().F().b("Failed to retrieve DMA consent from the service, " + (z ? "Retrying." : "Skipping.") + " retryCount", Integer.valueOf(this.F));
                return z;
            }
            lz1 c = lz1.c(bundle, 100);
            sb.append("&gcs=");
            sb.append(c.w());
            fh1 b = fh1.b(bundle, 100);
            sb.append("&dma=");
            sb.append(b.g() == Boolean.FALSE ? 0 : 1);
            if (!TextUtils.isEmpty(b.h())) {
                sb.append("&dma_cps=");
                sb.append(b.h());
            }
            int i2 = fh1.d(bundle) == Boolean.TRUE ? 0 : 1;
            sb.append("&npa=");
            sb.append(i2);
            l().K().b("Consent query parameters to Bow", sb);
        }
        x92 L = L();
        B();
        URL J = L.J(82001L, F, (String) u.first, F().u.a() - 1, sb.toString());
        if (J != null) {
            h32 v = v();
            f32 f32Var = new f32() { // from class: androidx.appcompat.view.menu.gx1
                @Override // androidx.appcompat.view.menu.f32
                public final void a(String str, int i3, Throwable th, byte[] bArr, Map map) {
                    cx1.this.k(str, i3, th, bArr, map);
                }
            };
            v.n();
            v.o();
            mj0.i(J);
            mj0.i(f32Var);
            v.h().z(new l32(v, F, J, null, null, f32Var));
        }
        return false;
    }

    public final h32 v() {
        i(this.r);
        return this.r;
    }

    public final void w(boolean z) {
        h().n();
        this.D = z;
    }

    public final int x() {
        h().n();
        if (this.g.R()) {
            return 1;
        }
        Boolean bool = this.C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (!q()) {
            return 8;
        }
        Boolean M = F().M();
        if (M != null) {
            return M.booleanValue() ? 0 : 3;
        }
        Boolean F = this.g.F("firebase_analytics_collection_enabled");
        if (F != null) {
            return F.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.B;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.A == null || this.A.booleanValue()) ? 0 : 7;
    }

    public final oh1 y() {
        oh1 oh1Var = this.q;
        if (oh1Var != null) {
            return oh1Var;
        }
        throw new IllegalStateException("Component not created");
    }

    public final qf1 z() {
        return this.g;
    }
}
