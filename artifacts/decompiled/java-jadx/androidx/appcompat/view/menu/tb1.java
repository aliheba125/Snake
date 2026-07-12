package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import androidx.appcompat.view.menu.m2;
import androidx.appcompat.view.menu.zx;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/* loaded from: classes.dex */
public final class tb1 implements zx.a, zx.b {
    public final m2.f m;
    public final r2 n;
    public final gb1 o;
    public final int r;
    public final mc1 s;
    public boolean t;
    public final /* synthetic */ ay x;
    public final Queue l = new LinkedList();
    public final Set p = new HashSet();
    public final Map q = new HashMap();
    public final List u = new ArrayList();
    public ef v = null;
    public int w = 0;

    public tb1(ay ayVar, wx wxVar) {
        this.x = ayVar;
        m2.f g = wxVar.g(ayVar.A.getLooper(), this);
        this.m = g;
        this.n = wxVar.d();
        this.o = new gb1();
        this.r = wxVar.f();
        if (g.o()) {
            this.s = wxVar.h(ayVar.r, ayVar.A);
        } else {
            this.s = null;
        }
    }

    public static /* bridge */ /* synthetic */ void A(tb1 tb1Var, vb1 vb1Var) {
        if (tb1Var.u.contains(vb1Var) && !tb1Var.t) {
            if (tb1Var.m.a()) {
                tb1Var.f();
            } else {
                tb1Var.D();
            }
        }
    }

    public static /* bridge */ /* synthetic */ void B(tb1 tb1Var, vb1 vb1Var) {
        hr hrVar;
        hr[] g;
        if (tb1Var.u.remove(vb1Var)) {
            tb1Var.x.A.removeMessages(15, vb1Var);
            tb1Var.x.A.removeMessages(16, vb1Var);
            hrVar = vb1Var.b;
            ArrayList arrayList = new ArrayList(tb1Var.l.size());
            for (jd1 jd1Var : tb1Var.l) {
                if ((jd1Var instanceof bc1) && (g = ((bc1) jd1Var).g(tb1Var)) != null && s4.b(g, hrVar)) {
                    arrayList.add(jd1Var);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                jd1 jd1Var2 = (jd1) arrayList.get(i);
                tb1Var.l.remove(jd1Var2);
                jd1Var2.b(new w31(hrVar));
            }
        }
    }

    public final void C() {
        mj0.c(this.x.A);
        this.v = null;
    }

    public final void D() {
        mj0.c(this.x.A);
        if (this.m.a() || this.m.f()) {
            return;
        }
        try {
            ay ayVar = this.x;
            int b = ayVar.t.b(ayVar.r, this.m);
            if (b != 0) {
                ef efVar = new ef(b, null);
                String name = this.m.getClass().getName();
                String obj = efVar.toString();
                StringBuilder sb = new StringBuilder(name.length() + 35 + obj.length());
                sb.append("The service for ");
                sb.append(name);
                sb.append(" is not available: ");
                sb.append(obj);
                G(efVar, null);
                return;
            }
            ay ayVar2 = this.x;
            m2.f fVar = this.m;
            xb1 xb1Var = new xb1(ayVar2, fVar, this.n);
            if (fVar.o()) {
                ((mc1) mj0.i(this.s)).x2(xb1Var);
            }
            try {
                this.m.m(xb1Var);
            } catch (SecurityException e) {
                G(new ef(10), e);
            }
        } catch (IllegalStateException e2) {
            G(new ef(10), e2);
        }
    }

    public final void E(jd1 jd1Var) {
        mj0.c(this.x.A);
        if (this.m.a()) {
            if (o(jd1Var)) {
                l();
                return;
            } else {
                this.l.add(jd1Var);
                return;
            }
        }
        this.l.add(jd1Var);
        ef efVar = this.v;
        if (efVar == null || !efVar.k()) {
            D();
        } else {
            G(this.v, null);
        }
    }

    public final void F() {
        this.w++;
    }

    public final void G(ef efVar, Exception exc) {
        mj0.c(this.x.A);
        mc1 mc1Var = this.s;
        if (mc1Var != null) {
            mc1Var.y2();
        }
        C();
        this.x.t.c();
        c(efVar);
        if ((this.m instanceof xd1) && efVar.d() != 24) {
            this.x.o = true;
            ay ayVar = this.x;
            ayVar.A.sendMessageDelayed(ayVar.A.obtainMessage(19), 300000L);
        }
        if (efVar.d() == 4) {
            d(ay.D);
            return;
        }
        if (this.l.isEmpty()) {
            this.v = efVar;
            return;
        }
        if (exc != null) {
            mj0.c(this.x.A);
            e(null, exc, false);
            return;
        }
        if (!this.x.B) {
            d(ay.h(this.n, efVar));
            return;
        }
        e(ay.h(this.n, efVar), null, true);
        if (this.l.isEmpty() || p(efVar) || this.x.g(efVar, this.r)) {
            return;
        }
        if (efVar.d() == 18) {
            this.t = true;
        }
        if (!this.t) {
            d(ay.h(this.n, efVar));
        } else {
            ay ayVar2 = this.x;
            ayVar2.A.sendMessageDelayed(Message.obtain(ayVar2.A, 9, this.n), this.x.l);
        }
    }

    public final void H(ef efVar) {
        mj0.c(this.x.A);
        m2.f fVar = this.m;
        String name = fVar.getClass().getName();
        String valueOf = String.valueOf(efVar);
        StringBuilder sb = new StringBuilder(name.length() + 25 + valueOf.length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(valueOf);
        fVar.c(sb.toString());
        G(efVar, null);
    }

    public final void I() {
        mj0.c(this.x.A);
        if (this.t) {
            D();
        }
    }

    public final void J() {
        mj0.c(this.x.A);
        d(ay.C);
        this.o.d();
        for (k90 k90Var : (k90[]) this.q.keySet().toArray(new k90[0])) {
            E(new fd1(null, new bz0()));
        }
        c(new ef(4));
        if (this.m.a()) {
            this.m.l(new sb1(this));
        }
    }

    public final void K() {
        mj0.c(this.x.A);
        if (this.t) {
            n();
            ay ayVar = this.x;
            d(ayVar.s.g(ayVar.r) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.m.c("Timing out connection while resuming.");
        }
    }

    public final boolean L() {
        return this.m.o();
    }

    public final boolean a() {
        return q(true);
    }

    public final hr b(hr[] hrVarArr) {
        if (hrVarArr != null && hrVarArr.length != 0) {
            hr[] g = this.m.g();
            if (g == null) {
                g = new hr[0];
            }
            o4 o4Var = new o4(g.length);
            for (hr hrVar : g) {
                o4Var.put(hrVar.d(), Long.valueOf(hrVar.f()));
            }
            for (hr hrVar2 : hrVarArr) {
                Long l = (Long) o4Var.get(hrVar2.d());
                if (l == null || l.longValue() < hrVar2.f()) {
                    return hrVar2;
                }
            }
        }
        return null;
    }

    public final void c(ef efVar) {
        Iterator it = this.p.iterator();
        if (!it.hasNext()) {
            this.p.clear();
            return;
        }
        jy0.a(it.next());
        if (wf0.a(efVar, ef.q)) {
            this.m.h();
        }
        throw null;
    }

    public final void d(Status status) {
        mj0.c(this.x.A);
        e(status, null, false);
    }

    public final void e(Status status, Exception exc, boolean z) {
        mj0.c(this.x.A);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            jd1 jd1Var = (jd1) it.next();
            if (!z || jd1Var.a == 2) {
                if (status != null) {
                    jd1Var.a(status);
                } else {
                    jd1Var.b(exc);
                }
                it.remove();
            }
        }
    }

    public final void f() {
        ArrayList arrayList = new ArrayList(this.l);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            jd1 jd1Var = (jd1) arrayList.get(i);
            if (!this.m.a()) {
                return;
            }
            if (o(jd1Var)) {
                this.l.remove(jd1Var);
            }
        }
    }

    public final void g() {
        C();
        c(ef.q);
        n();
        Iterator it = this.q.values().iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            throw null;
        }
        f();
        l();
    }

    @Override // androidx.appcompat.view.menu.df
    public final void h(int i) {
        if (Looper.myLooper() == this.x.A.getLooper()) {
            i(i);
        } else {
            this.x.A.post(new qb1(this, i));
        }
    }

    public final void i(int i) {
        C();
        this.t = true;
        this.o.c(i, this.m.j());
        ay ayVar = this.x;
        ayVar.A.sendMessageDelayed(Message.obtain(ayVar.A, 9, this.n), this.x.l);
        ay ayVar2 = this.x;
        ayVar2.A.sendMessageDelayed(Message.obtain(ayVar2.A, 11, this.n), this.x.m);
        this.x.t.c();
        Iterator it = this.q.values().iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            throw null;
        }
    }

    @Override // androidx.appcompat.view.menu.hg0
    public final void j(ef efVar) {
        G(efVar, null);
    }

    @Override // androidx.appcompat.view.menu.df
    public final void k(Bundle bundle) {
        if (Looper.myLooper() == this.x.A.getLooper()) {
            g();
        } else {
            this.x.A.post(new pb1(this));
        }
    }

    public final void l() {
        this.x.A.removeMessages(12, this.n);
        ay ayVar = this.x;
        ayVar.A.sendMessageDelayed(ayVar.A.obtainMessage(12, this.n), this.x.n);
    }

    public final void m(jd1 jd1Var) {
        jd1Var.d(this.o, L());
        try {
            jd1Var.c(this);
        } catch (DeadObjectException unused) {
            h(1);
            this.m.c("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    public final void n() {
        if (this.t) {
            this.x.A.removeMessages(11, this.n);
            this.x.A.removeMessages(9, this.n);
            this.t = false;
        }
    }

    public final boolean o(jd1 jd1Var) {
        if (!(jd1Var instanceof bc1)) {
            m(jd1Var);
            return true;
        }
        bc1 bc1Var = (bc1) jd1Var;
        hr b = b(bc1Var.g(this));
        if (b == null) {
            m(jd1Var);
            return true;
        }
        String name = this.m.getClass().getName();
        String d = b.d();
        long f = b.f();
        StringBuilder sb = new StringBuilder(name.length() + 77 + String.valueOf(d).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(d);
        sb.append(", ");
        sb.append(f);
        sb.append(").");
        if (!this.x.B || !bc1Var.f(this)) {
            bc1Var.b(new w31(b));
            return true;
        }
        vb1 vb1Var = new vb1(this.n, b, null);
        int indexOf = this.u.indexOf(vb1Var);
        if (indexOf >= 0) {
            vb1 vb1Var2 = (vb1) this.u.get(indexOf);
            this.x.A.removeMessages(15, vb1Var2);
            ay ayVar = this.x;
            ayVar.A.sendMessageDelayed(Message.obtain(ayVar.A, 15, vb1Var2), this.x.l);
            return false;
        }
        this.u.add(vb1Var);
        ay ayVar2 = this.x;
        ayVar2.A.sendMessageDelayed(Message.obtain(ayVar2.A, 15, vb1Var), this.x.l);
        ay ayVar3 = this.x;
        ayVar3.A.sendMessageDelayed(Message.obtain(ayVar3.A, 16, vb1Var), this.x.m);
        ef efVar = new ef(2, null);
        if (p(efVar)) {
            return false;
        }
        this.x.g(efVar, this.r);
        return false;
    }

    public final boolean p(ef efVar) {
        synchronized (ay.E) {
            try {
                ay ayVar = this.x;
                if (ayVar.x == null || !ayVar.y.contains(this.n)) {
                    return false;
                }
                this.x.x.s(efVar, this.r);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean q(boolean z) {
        mj0.c(this.x.A);
        if (!this.m.a() || this.q.size() != 0) {
            return false;
        }
        if (!this.o.e()) {
            this.m.c("Timing out service connection.");
            return true;
        }
        if (z) {
            l();
        }
        return false;
    }

    public final int r() {
        return this.r;
    }

    public final int s() {
        return this.w;
    }

    public final m2.f u() {
        return this.m;
    }

    public final Map w() {
        return this.q;
    }
}
