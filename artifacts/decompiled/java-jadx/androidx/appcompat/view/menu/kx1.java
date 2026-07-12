package androidx.appcompat.view.menu;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class kx1 extends vs1 {
    public final o82 l;
    public Boolean m;
    public String n;

    public kx1(o82 o82Var) {
        this(o82Var, null);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void A(oi1 oi1Var, String str, String str2) {
        mj0.i(oi1Var);
        mj0.e(str);
        v2(str, true);
        k(new jy1(this, oi1Var, str));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void C1(cb2 cb2Var) {
        x2(cb2Var, false);
        k(new nx1(this, cb2Var));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final byte[] E1(oi1 oi1Var, String str) {
        mj0.e(str);
        mj0.i(oi1Var);
        v2(str, true);
        this.l.l().F().b("Log and bundle. event", this.l.f0().c(oi1Var.m));
        long c = this.l.b().c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.l.h().B(new py1(this, oi1Var, str)).get();
            if (bArr == null) {
                this.l.l().G().b("Log and bundle returned null. appId", pt1.v(str));
                bArr = new byte[0];
            }
            this.l.l().F().d("Log and bundle processed. event, size, time_ms", this.l.f0().c(oi1Var.m), Integer.valueOf(bArr.length), Long.valueOf((this.l.b().c() / 1000000) - c));
            return bArr;
        } catch (InterruptedException e) {
            e = e;
            this.l.l().G().d("Failed to log and bundle. appId, event, error", pt1.v(str), this.l.f0().c(oi1Var.m), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            this.l.l().G().d("Failed to log and bundle. appId, event, error", pt1.v(str), this.l.f0().c(oi1Var.m), e);
            return null;
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void F0(cb2 cb2Var) {
        mj0.e(cb2Var.m);
        mj0.i(cb2Var.H);
        hy1 hy1Var = new hy1(this, cb2Var);
        mj0.i(hy1Var);
        if (this.l.h().J()) {
            hy1Var.run();
        } else {
            this.l.h().G(hy1Var);
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void G0(final Bundle bundle, cb2 cb2Var) {
        x2(cb2Var, false);
        final String str = cb2Var.m;
        mj0.i(str);
        k(new Runnable() { // from class: androidx.appcompat.view.menu.ix1
            @Override // java.lang.Runnable
            public final void run() {
                kx1.this.u2(str, bundle);
            }
        });
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void I(if1 if1Var) {
        mj0.i(if1Var);
        mj0.i(if1Var.o);
        mj0.e(if1Var.m);
        v2(if1Var.m, true);
        k(new vx1(this, new if1(if1Var)));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void L0(v92 v92Var, cb2 cb2Var) {
        mj0.i(v92Var);
        x2(cb2Var, false);
        k(new ny1(this, v92Var, cb2Var));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final String P1(cb2 cb2Var) {
        x2(cb2Var, false);
        return this.l.R(cb2Var);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final hg1 Q0(cb2 cb2Var) {
        x2(cb2Var, false);
        mj0.e(cb2Var.m);
        if (!na2.a()) {
            return new hg1(null);
        }
        try {
            return (hg1) this.l.h().B(new fy1(this, cb2Var)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.l.l().G().c("Failed to get consent. appId", pt1.v(cb2Var.m), e);
            return new hg1(null);
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void S(cb2 cb2Var) {
        mj0.e(cb2Var.m);
        v2(cb2Var.m, false);
        k(new by1(this, cb2Var));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List T(cb2 cb2Var, boolean z) {
        x2(cb2Var, false);
        String str = cb2Var.m;
        mj0.i(str);
        try {
            List<z92> list = (List) this.l.h().w(new zy1(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (z92 z92Var : list) {
                if (!z && x92.H0(z92Var.c)) {
                }
                arrayList.add(new v92(z92Var));
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.l.l().G().c("Failed to get user properties. appId", pt1.v(cb2Var.m), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            this.l.l().G().c("Failed to get user properties. appId", pt1.v(cb2Var.m), e);
            return null;
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void V1(long j, String str, String str2, String str3) {
        k(new rx1(this, str2, str3, str, j));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List Z1(String str, String str2, String str3) {
        v2(str, true);
        try {
            return (List) this.l.h().w(new dy1(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.l.l().G().b("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void g0(oi1 oi1Var, cb2 cb2Var) {
        mj0.i(oi1Var);
        x2(cb2Var, false);
        k(new ly1(this, oi1Var, cb2Var));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void i2(cb2 cb2Var) {
        x2(cb2Var, false);
        k(new mx1(this, cb2Var));
    }

    public final void k(Runnable runnable) {
        mj0.i(runnable);
        if (this.l.h().J()) {
            runnable.run();
        } else {
            this.l.h().D(runnable);
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List m1(String str, String str2, boolean z, cb2 cb2Var) {
        x2(cb2Var, false);
        String str3 = cb2Var.m;
        mj0.i(str3);
        try {
            List<z92> list = (List) this.l.h().w(new tx1(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (z92 z92Var : list) {
                if (!z && x92.H0(z92Var.c)) {
                }
                arrayList.add(new v92(z92Var));
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.l.l().G().c("Failed to query user properties. appId", pt1.v(cb2Var.m), e);
            return Collections.emptyList();
        } catch (ExecutionException e2) {
            e = e2;
            this.l.l().G().c("Failed to query user properties. appId", pt1.v(cb2Var.m), e);
            return Collections.emptyList();
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void o(if1 if1Var, cb2 cb2Var) {
        mj0.i(if1Var);
        mj0.i(if1Var.o);
        x2(cb2Var, false);
        if1 if1Var2 = new if1(if1Var);
        if1Var2.m = cb2Var.m;
        k(new px1(this, if1Var2, cb2Var));
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List o0(String str, String str2, cb2 cb2Var) {
        x2(cb2Var, false);
        String str3 = cb2Var.m;
        mj0.i(str3);
        try {
            return (List) this.l.h().w(new xx1(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.l.l().G().b("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List r0(String str, String str2, String str3, boolean z) {
        v2(str, true);
        try {
            List<z92> list = (List) this.l.h().w(new zx1(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (z92 z92Var : list) {
                if (!z && x92.H0(z92Var.c)) {
                }
                arrayList.add(new v92(z92Var));
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.l.l().G().c("Failed to get user properties as. appId", pt1.v(str), e);
            return Collections.emptyList();
        } catch (ExecutionException e2) {
            e = e2;
            this.l.l().G().c("Failed to get user properties as. appId", pt1.v(str), e);
            return Collections.emptyList();
        }
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List s(cb2 cb2Var, Bundle bundle) {
        x2(cb2Var, false);
        mj0.i(cb2Var.m);
        try {
            return (List) this.l.h().w(new bz1(this, cb2Var, bundle)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.l.l().G().c("Failed to get trigger URIs. appId", pt1.v(cb2Var.m), e);
            return Collections.emptyList();
        }
    }

    public final /* synthetic */ void u2(String str, Bundle bundle) {
        this.l.e0().h0(str, bundle);
    }

    public final void v2(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            this.l.l().G().a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.m == null) {
                    if (!"com.google.android.gms".equals(this.n) && !h31.a(this.l.a(), Binder.getCallingUid()) && !gy.a(this.l.a()).c(Binder.getCallingUid())) {
                        z2 = false;
                        this.m = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.m = Boolean.valueOf(z2);
                }
                if (this.m.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.l.l().G().b("Measurement Service called with invalid calling package. appId", pt1.v(str));
                throw e;
            }
        }
        if (this.n == null && fy.i(this.l.a(), Binder.getCallingUid(), str)) {
            this.n = str;
        }
        if (str.equals(this.n)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    public final oi1 w2(oi1 oi1Var, cb2 cb2Var) {
        ei1 ei1Var;
        if ("_cmp".equals(oi1Var.m) && (ei1Var = oi1Var.n) != null && ei1Var.d() != 0) {
            String r = oi1Var.n.r("_cis");
            if ("referrer broadcast".equals(r) || "referrer API".equals(r)) {
                this.l.l().J().b("Event has been filtered ", oi1Var.toString());
                return new oi1("_cmpx", oi1Var.n, oi1Var.o, oi1Var.p);
            }
        }
        return oi1Var;
    }

    public final void x2(cb2 cb2Var, boolean z) {
        mj0.i(cb2Var);
        mj0.e(cb2Var.m);
        v2(cb2Var.m, false);
        this.l.n0().j0(cb2Var.n, cb2Var.C);
    }

    public final void y2(oi1 oi1Var, cb2 cb2Var) {
        if (!this.l.h0().W(cb2Var.m)) {
            z2(oi1Var, cb2Var);
            return;
        }
        this.l.l().K().b("EES config found for", cb2Var.m);
        rv1 h0 = this.l.h0();
        String str = cb2Var.m;
        lh1 lh1Var = TextUtils.isEmpty(str) ? null : (lh1) h0.j.c(str);
        if (lh1Var == null) {
            this.l.l().K().b("EES not loaded for", cb2Var.m);
            z2(oi1Var, cb2Var);
            return;
        }
        try {
            Map O = this.l.m0().O(oi1Var.n.k(), true);
            String a = nz1.a(oi1Var.m);
            if (a == null) {
                a = oi1Var.m;
            }
            if (lh1Var.d(new hf1(a, oi1Var.p, O))) {
                if (lh1Var.g()) {
                    this.l.l().K().b("EES edited event", oi1Var.m);
                    z2(this.l.m0().D(lh1Var.a().d()), cb2Var);
                } else {
                    z2(oi1Var, cb2Var);
                }
                if (lh1Var.f()) {
                    for (hf1 hf1Var : lh1Var.a().f()) {
                        this.l.l().K().b("EES logging created event", hf1Var.e());
                        z2(this.l.m0().D(hf1Var), cb2Var);
                    }
                    return;
                }
                return;
            }
        } catch (pk1 unused) {
            this.l.l().G().c("EES error. appId, eventName", cb2Var.n, oi1Var.m);
        }
        this.l.l().K().b("EES was not applied to event", oi1Var.m);
        z2(oi1Var, cb2Var);
    }

    public final void z2(oi1 oi1Var, cb2 cb2Var) {
        this.l.o0();
        this.l.q(oi1Var, cb2Var);
    }

    public kx1(o82 o82Var, String str) {
        mj0.i(o82Var);
        this.l = o82Var;
        this.n = null;
    }
}
