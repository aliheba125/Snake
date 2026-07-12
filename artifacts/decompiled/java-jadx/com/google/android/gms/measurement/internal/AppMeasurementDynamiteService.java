package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.appcompat.view.menu.a32;
import androidx.appcompat.view.menu.b20;
import androidx.appcompat.view.menu.cx1;
import androidx.appcompat.view.menu.d02;
import androidx.appcompat.view.menu.d22;
import androidx.appcompat.view.menu.d52;
import androidx.appcompat.view.menu.dm1;
import androidx.appcompat.view.menu.dn1;
import androidx.appcompat.view.menu.e12;
import androidx.appcompat.view.menu.ei1;
import androidx.appcompat.view.menu.fn1;
import androidx.appcompat.view.menu.hm1;
import androidx.appcompat.view.menu.i12;
import androidx.appcompat.view.menu.jn1;
import androidx.appcompat.view.menu.mj0;
import androidx.appcompat.view.menu.o4;
import androidx.appcompat.view.menu.o92;
import androidx.appcompat.view.menu.oi1;
import androidx.appcompat.view.menu.r22;
import androidx.appcompat.view.menu.sz1;
import androidx.appcompat.view.menu.u12;
import androidx.appcompat.view.menu.uz1;
import androidx.appcompat.view.menu.vf0;
import androidx.appcompat.view.menu.wy1;
import androidx.appcompat.view.menu.x92;
import androidx.appcompat.view.menu.z02;
import com.google.android.gms.common.util.DynamiteApi;
import java.util.Map;

@DynamiteApi
/* loaded from: classes.dex */
public class AppMeasurementDynamiteService extends dm1 {
    public cx1 l = null;
    public final Map m = new o4();

    public class a implements uz1 {
        public dn1 a;

        public a(dn1 dn1Var) {
            this.a = dn1Var;
        }

        @Override // androidx.appcompat.view.menu.uz1
        public final void a(String str, String str2, Bundle bundle, long j) {
            try {
                this.a.U(str, str2, bundle, j);
            } catch (RemoteException e) {
                cx1 cx1Var = AppMeasurementDynamiteService.this.l;
                if (cx1Var != null) {
                    cx1Var.l().L().b("Event interceptor threw exception", e);
                }
            }
        }
    }

    public class b implements sz1 {
        public dn1 a;

        public b(dn1 dn1Var) {
            this.a = dn1Var;
        }

        @Override // androidx.appcompat.view.menu.sz1
        public final void a(String str, String str2, Bundle bundle, long j) {
            try {
                this.a.U(str, str2, bundle, j);
            } catch (RemoteException e) {
                cx1 cx1Var = AppMeasurementDynamiteService.this.l;
                if (cx1Var != null) {
                    cx1Var.l().L().b("Event listener threw exception", e);
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void beginAdUnitExposure(String str, long j) {
        j();
        this.l.y().z(str, j);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        j();
        this.l.H().X(str, str2, bundle);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void clearMeasurementEnabled(long j) {
        j();
        this.l.H().R(null);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void endAdUnitExposure(String str, long j) {
        j();
        this.l.y().D(str, j);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void generateEventId(hm1 hm1Var) {
        j();
        long P0 = this.l.L().P0();
        j();
        this.l.L().P(hm1Var, P0);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getAppInstanceId(hm1 hm1Var) {
        j();
        this.l.h().D(new wy1(this, hm1Var));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getCachedAppInstanceId(hm1 hm1Var) {
        j();
        k(hm1Var, this.l.H().i0());
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getConditionalUserProperties(String str, String str2, hm1 hm1Var) {
        j();
        this.l.h().D(new d52(this, hm1Var, str, str2));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getCurrentScreenClass(hm1 hm1Var) {
        j();
        k(hm1Var, this.l.H().j0());
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getCurrentScreenName(hm1 hm1Var) {
        j();
        k(hm1Var, this.l.H().k0());
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getGmpAppId(hm1 hm1Var) {
        j();
        k(hm1Var, this.l.H().l0());
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getMaxUserProperties(String str, hm1 hm1Var) {
        j();
        this.l.H();
        mj0.e(str);
        j();
        this.l.L().O(hm1Var, 25);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getSessionId(hm1 hm1Var) {
        j();
        d02 H = this.l.H();
        H.h().D(new d22(H, hm1Var));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getTestFlag(hm1 hm1Var, int i) {
        j();
        if (i == 0) {
            this.l.L().R(hm1Var, this.l.H().m0());
            return;
        }
        if (i == 1) {
            this.l.L().P(hm1Var, this.l.H().h0().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.l.L().O(hm1Var, this.l.H().g0().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.l.L().T(hm1Var, this.l.H().e0().booleanValue());
                return;
            }
        }
        x92 L = this.l.L();
        double doubleValue = this.l.H().f0().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", doubleValue);
        try {
            hm1Var.f(bundle);
        } catch (RemoteException e) {
            L.a.l().L().b("Error returning double value to wrapper", e);
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void getUserProperties(String str, String str2, boolean z, hm1 hm1Var) {
        j();
        this.l.h().D(new z02(this, hm1Var, str, str2, z));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void initForTests(Map map) {
        j();
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void initialize(b20 b20Var, jn1 jn1Var, long j) {
        cx1 cx1Var = this.l;
        if (cx1Var == null) {
            this.l = cx1.c((Context) mj0.i((Context) vf0.j(b20Var)), jn1Var, Long.valueOf(j));
        } else {
            cx1Var.l().L().a("Attempting to initialize multiple times");
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void isDataCollectionEnabled(hm1 hm1Var) {
        j();
        this.l.h().D(new o92(this, hm1Var));
    }

    public final void j() {
        if (this.l == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    public final void k(hm1 hm1Var, String str) {
        j();
        this.l.L().R(hm1Var, str);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        j();
        this.l.H().Z(str, str2, bundle, z, z2, j);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void logEventAndBundle(String str, String str2, Bundle bundle, hm1 hm1Var, long j) {
        j();
        mj0.e(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.l.h().D(new a32(this, hm1Var, new oi1(str2, new ei1(bundle), "app", j), str));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void logHealthData(int i, String str, b20 b20Var, b20 b20Var2, b20 b20Var3) {
        j();
        this.l.l().z(i, true, false, str, b20Var == null ? null : vf0.j(b20Var), b20Var2 == null ? null : vf0.j(b20Var2), b20Var3 != null ? vf0.j(b20Var3) : null);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivityCreated(b20 b20Var, Bundle bundle, long j) {
        j();
        r22 r22Var = this.l.H().c;
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivityCreated((Activity) vf0.j(b20Var), bundle);
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivityDestroyed(b20 b20Var, long j) {
        j();
        r22 r22Var = this.l.H().c;
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivityDestroyed((Activity) vf0.j(b20Var));
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivityPaused(b20 b20Var, long j) {
        j();
        r22 r22Var = this.l.H().c;
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivityPaused((Activity) vf0.j(b20Var));
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivityResumed(b20 b20Var, long j) {
        j();
        r22 r22Var = this.l.H().c;
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivityResumed((Activity) vf0.j(b20Var));
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivitySaveInstanceState(b20 b20Var, hm1 hm1Var, long j) {
        j();
        r22 r22Var = this.l.H().c;
        Bundle bundle = new Bundle();
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivitySaveInstanceState((Activity) vf0.j(b20Var), bundle);
        }
        try {
            hm1Var.f(bundle);
        } catch (RemoteException e) {
            this.l.l().L().b("Error returning bundle value to wrapper", e);
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivityStarted(b20 b20Var, long j) {
        j();
        r22 r22Var = this.l.H().c;
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivityStarted((Activity) vf0.j(b20Var));
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void onActivityStopped(b20 b20Var, long j) {
        j();
        r22 r22Var = this.l.H().c;
        if (r22Var != null) {
            this.l.H().o0();
            r22Var.onActivityStopped((Activity) vf0.j(b20Var));
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void performAction(Bundle bundle, hm1 hm1Var, long j) {
        j();
        hm1Var.f(null);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void registerOnMeasurementEventListener(dn1 dn1Var) {
        sz1 sz1Var;
        j();
        synchronized (this.m) {
            try {
                sz1Var = (sz1) this.m.get(Integer.valueOf(dn1Var.a()));
                if (sz1Var == null) {
                    sz1Var = new b(dn1Var);
                    this.m.put(Integer.valueOf(dn1Var.a()), sz1Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.l.H().L(sz1Var);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void resetAnalyticsData(long j) {
        j();
        d02 H = this.l.H();
        H.T(null);
        H.h().D(new u12(H, j));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setConditionalUserProperty(Bundle bundle, long j) {
        j();
        if (bundle == null) {
            this.l.l().G().a("Conditional user property must not be null");
        } else {
            this.l.H().H(bundle, j);
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setConsent(final Bundle bundle, final long j) {
        j();
        final d02 H = this.l.H();
        H.h().G(new Runnable() { // from class: androidx.appcompat.view.menu.p02
            @Override // java.lang.Runnable
            public final void run() {
                d02 d02Var = d02.this;
                Bundle bundle2 = bundle;
                long j2 = j;
                if (TextUtils.isEmpty(d02Var.p().G())) {
                    d02Var.G(bundle2, 0, j2);
                } else {
                    d02Var.l().M().a("Using developer consent only; google app id found");
                }
            }
        });
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setConsentThirdParty(Bundle bundle, long j) {
        j();
        this.l.H().G(bundle, -20, j);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setCurrentScreen(b20 b20Var, String str, String str2, long j) {
        j();
        this.l.I().H((Activity) vf0.j(b20Var), str, str2);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setDataCollectionEnabled(boolean z) {
        j();
        d02 H = this.l.H();
        H.v();
        H.h().D(new e12(H, z));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setDefaultEventParameters(Bundle bundle) {
        j();
        final d02 H = this.l.H();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        H.h().D(new Runnable() { // from class: androidx.appcompat.view.menu.j02
            @Override // java.lang.Runnable
            public final void run() {
                d02.this.F(bundle2);
            }
        });
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setEventInterceptor(dn1 dn1Var) {
        j();
        a aVar = new a(dn1Var);
        if (this.l.h().J()) {
            this.l.H().M(aVar);
        } else {
            this.l.h().D(new com.google.android.gms.measurement.internal.a(this, aVar));
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setInstanceIdProvider(fn1 fn1Var) {
        j();
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setMeasurementEnabled(boolean z, long j) {
        j();
        this.l.H().R(Boolean.valueOf(z));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setMinimumSessionDuration(long j) {
        j();
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setSessionTimeoutDuration(long j) {
        j();
        d02 H = this.l.H();
        H.h().D(new i12(H, j));
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setUserId(final String str, long j) {
        j();
        final d02 H = this.l.H();
        if (str != null && TextUtils.isEmpty(str)) {
            H.a.l().L().a("User ID must be non-empty or null");
        } else {
            H.h().D(new Runnable() { // from class: androidx.appcompat.view.menu.s02
                @Override // java.lang.Runnable
                public final void run() {
                    d02 d02Var = d02.this;
                    if (d02Var.p().K(str)) {
                        d02Var.p().I();
                    }
                }
            });
            H.c0(null, "_id", str, true, j);
        }
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void setUserProperty(String str, String str2, b20 b20Var, boolean z, long j) {
        j();
        this.l.H().c0(str, str2, vf0.j(b20Var), z, j);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public void unregisterOnMeasurementEventListener(dn1 dn1Var) {
        sz1 sz1Var;
        j();
        synchronized (this.m) {
            sz1Var = (sz1) this.m.remove(Integer.valueOf(dn1Var.a()));
        }
        if (sz1Var == null) {
            sz1Var = new b(dn1Var);
        }
        this.l.H().v0(sz1Var);
    }
}
