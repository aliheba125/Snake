package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class h42 extends cp1 {
    public final d62 c;
    public xs1 d;
    public volatile Boolean e;
    public final bh1 f;
    public final a82 g;
    public final List h;
    public final bh1 i;

    public h42(cx1 cx1Var) {
        super(cx1Var);
        this.h = new ArrayList();
        this.g = new a82(cx1Var.b());
        this.c = new d62(this);
        this.f = new m42(this, cx1Var);
        this.i = new i52(this, cx1Var);
    }

    public static /* synthetic */ void M(h42 h42Var, ComponentName componentName) {
        h42Var.n();
        if (h42Var.d != null) {
            h42Var.d = null;
            h42Var.l().K().b("Disconnected from device MeasurementService", componentName);
            h42Var.n();
            h42Var.Y();
        }
    }

    private final void P(Runnable runnable) {
        n();
        if (c0()) {
            runnable.run();
        } else {
            if (this.h.size() >= 1000) {
                l().G().a("Discarding data. Max runnable queue size reached");
                return;
            }
            this.h.add(runnable);
            this.i.b(60000L);
            Y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0() {
        n();
        l().K().b("Processing queued up service tasks", Integer.valueOf(this.h.size()));
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e) {
                l().G().b("Task exception while flushing queue", e);
            }
        }
        this.h.clear();
        this.i.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        n();
        this.g.c();
        this.f.b(((Long) si1.L.a(null)).longValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
    
        if (r0 == null) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean h0() {
        boolean z;
        n();
        v();
        if (this.e == null) {
            n();
            v();
            Boolean K = i().K();
            boolean z2 = true;
            if (K == null || !K.booleanValue()) {
                if (p().C() != 1) {
                    l().K().a("Checking service availability");
                    int u = j().u(fy.a);
                    if (u != 0) {
                        z = false;
                        if (u != 1) {
                            if (u == 2) {
                                l().F().a("Service container out of date");
                                if (j().G0() >= 17443) {
                                }
                            } else if (u == 3) {
                                l().L().a("Service disabled");
                            } else if (u == 9) {
                                l().L().a("Service invalid");
                            } else if (u != 18) {
                                l().L().b("Unexpected service status", Integer.valueOf(u));
                            } else {
                                l().L().a("Service updating");
                            }
                            z2 = false;
                            if (z2 && e().S()) {
                                l().G().a("No way to upload. Consider using the full version of Analytics");
                            } else if (z) {
                                i().w(z2);
                            }
                        } else {
                            l().K().a("Service missing");
                        }
                        z = true;
                        z2 = false;
                        if (z2) {
                        }
                        if (z) {
                        }
                    } else {
                        l().K().a("Service available");
                    }
                }
                z = true;
                if (z2) {
                }
                if (z) {
                }
            }
            this.e = Boolean.valueOf(z2);
        }
        return this.e.booleanValue();
    }

    public static /* synthetic */ void l0(h42 h42Var) {
        h42Var.n();
        if (h42Var.c0()) {
            h42Var.l().K().a("Inactivity, disconnecting from the service");
            h42Var.Z();
        }
    }

    @Override // androidx.appcompat.view.menu.cp1
    public final boolean A() {
        return false;
    }

    public final void C(Bundle bundle) {
        n();
        v();
        P(new k52(this, j0(false), bundle));
    }

    public final void D(if1 if1Var) {
        mj0.i(if1Var);
        n();
        v();
        P(new v52(this, true, j0(true), q().E(if1Var), new if1(if1Var), if1Var));
    }

    public final void E(oi1 oi1Var, String str) {
        mj0.i(oi1Var);
        n();
        v();
        P(new p52(this, true, j0(true), q().F(oi1Var), oi1Var, str));
    }

    public final void F(hm1 hm1Var) {
        n();
        v();
        P(new u42(this, j0(false), hm1Var));
    }

    public final void G(hm1 hm1Var, oi1 oi1Var, String str) {
        n();
        v();
        if (j().u(fy.a) == 0) {
            P(new n52(this, oi1Var, str, hm1Var));
        } else {
            l().L().a("Not bundling data. Service unavailable or out of date");
            j().U(hm1Var, new byte[0]);
        }
    }

    public final void H(hm1 hm1Var, String str, String str2) {
        n();
        v();
        P(new z52(this, str, str2, j0(false), hm1Var));
    }

    public final void I(hm1 hm1Var, String str, String str2, boolean z) {
        n();
        v();
        P(new k42(this, str, str2, j0(false), z, hm1Var));
    }

    public final void J(xs1 xs1Var) {
        n();
        mj0.i(xs1Var);
        this.d = xs1Var;
        g0();
        f0();
    }

    public final void K(xs1 xs1Var, r rVar, cb2 cb2Var) {
        int i;
        n();
        v();
        int i2 = 100;
        int i3 = 0;
        while (i3 < 1001 && i2 == 100) {
            ArrayList arrayList = new ArrayList();
            List C = q().C(100);
            if (C != null) {
                arrayList.addAll(C);
                i = C.size();
            } else {
                i = 0;
            }
            if (rVar != null && i < 100) {
                arrayList.add(rVar);
            }
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                r rVar2 = (r) obj;
                if (rVar2 instanceof oi1) {
                    try {
                        xs1Var.g0((oi1) rVar2, cb2Var);
                    } catch (RemoteException e) {
                        l().G().b("Failed to send event to the service", e);
                    }
                } else if (rVar2 instanceof v92) {
                    try {
                        xs1Var.L0((v92) rVar2, cb2Var);
                    } catch (RemoteException e2) {
                        l().G().b("Failed to send user property to the service", e2);
                    }
                } else if (rVar2 instanceof if1) {
                    try {
                        xs1Var.o((if1) rVar2, cb2Var);
                    } catch (RemoteException e3) {
                        l().G().b("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    l().G().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i3++;
            i2 = i;
        }
    }

    public final void L(t32 t32Var) {
        n();
        v();
        P(new y42(this, t32Var));
    }

    public final void O(v92 v92Var) {
        n();
        v();
        P(new s42(this, j0(true), q().G(v92Var), v92Var));
    }

    public final void Q(AtomicReference atomicReference) {
        n();
        v();
        P(new w42(this, atomicReference, j0(false)));
    }

    public final void R(AtomicReference atomicReference, Bundle bundle) {
        n();
        v();
        P(new n42(this, atomicReference, j0(false), bundle));
    }

    public final void S(AtomicReference atomicReference, String str, String str2, String str3) {
        n();
        v();
        P(new t52(this, atomicReference, str, str2, str3, j0(false)));
    }

    public final void T(AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        n();
        v();
        P(new x52(this, atomicReference, str, str2, str3, j0(false), z));
    }

    public final void U(boolean z) {
        n();
        v();
        if (z) {
            q().H();
        }
        if (e0()) {
            P(new r52(this, j0(false)));
        }
    }

    public final hg1 V() {
        n();
        v();
        xs1 xs1Var = this.d;
        if (xs1Var == null) {
            Y();
            l().F().a("Failed to get consents; not connected to service yet.");
            return null;
        }
        cb2 j0 = j0(false);
        mj0.i(j0);
        try {
            hg1 Q0 = xs1Var.Q0(j0);
            g0();
            return Q0;
        } catch (RemoteException e) {
            l().G().b("Failed to get consents; remote exception", e);
            return null;
        }
    }

    public final Boolean W() {
        return this.e;
    }

    public final void X() {
        n();
        v();
        cb2 j0 = j0(true);
        q().I();
        P(new g52(this, j0));
    }

    public final void Y() {
        n();
        v();
        if (c0()) {
            return;
        }
        if (h0()) {
            this.c.a();
            return;
        }
        if (e().S()) {
            return;
        }
        List<ResolveInfo> queryIntentServices = a().getPackageManager().queryIntentServices(new Intent().setClassName(a(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            l().G().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(a(), "com.google.android.gms.measurement.AppMeasurementService"));
        this.c.b(intent);
    }

    public final void Z() {
        n();
        v();
        this.c.d();
        try {
            hf.b().c(a(), this.c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    public final void a0() {
        n();
        v();
        cb2 j0 = j0(false);
        q().H();
        P(new q42(this, j0));
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    public final void b0() {
        n();
        v();
        P(new l52(this, j0(true)));
    }

    public final boolean c0() {
        n();
        v();
        return this.d != null;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    public final boolean d0() {
        n();
        v();
        return !h0() || j().G0() >= 200900;
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    public final boolean e0() {
        n();
        v();
        return !h0() || j().G0() >= ((Integer) si1.r0.a(null)).intValue();
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

    public final cb2 j0(boolean z) {
        return p().B(z ? l().O() : null);
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
