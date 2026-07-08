package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class z7 {
    public c A;
    public IInterface B;
    public final ArrayList C;
    public xo1 D;
    public int E;
    public final a F;
    public final b G;
    public final int H;
    public final String I;
    public volatile String J;
    public ef K;
    public boolean L;
    public volatile x02 M;
    public AtomicInteger N;
    public int l;
    public long m;
    public long n;
    public int o;
    public long p;
    public volatile String q;
    public af2 r;
    public final Context s;
    public final Looper t;
    public final rx u;
    public final yx v;
    public final Handler w;
    public final Object x;
    public final Object y;
    public g10 z;
    public static final hr[] P = new hr[0];
    public static final String[] O = {"service_esmobile", "service_googleme"};

    public interface a {
        void h(int i);

        void k(Bundle bundle);
    }

    public interface b {
        void j(ef efVar);
    }

    public interface c {
        void a(ef efVar);
    }

    public class d implements c {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.z7.c
        public final void a(ef efVar) {
            if (efVar.n()) {
                z7 z7Var = z7.this;
                z7Var.k(null, z7Var.C());
            } else if (z7.this.G != null) {
                z7.this.G.j(efVar);
            }
        }
    }

    public interface e {
        void a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public z7(Context context, Looper looper, int i, a aVar, b bVar, String str) {
        this(context, looper, r3, r4, i, aVar, bVar, str);
        rx b2 = rx.b(context);
        yx f = yx.f();
        mj0.i(aVar);
        mj0.i(bVar);
    }

    public static /* bridge */ /* synthetic */ void c0(z7 z7Var, x02 x02Var) {
        z7Var.M = x02Var;
        if (z7Var.S()) {
            ff ffVar = x02Var.p;
            up0.b().c(ffVar == null ? null : ffVar.p());
        }
    }

    public static /* bridge */ /* synthetic */ void d0(z7 z7Var, int i) {
        int i2;
        int i3;
        synchronized (z7Var.x) {
            i2 = z7Var.E;
        }
        if (i2 == 3) {
            z7Var.L = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = z7Var.w;
        handler.sendMessage(handler.obtainMessage(i3, z7Var.N.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean g0(z7 z7Var, int i, int i2, IInterface iInterface) {
        synchronized (z7Var.x) {
            try {
                if (z7Var.E != i) {
                    return false;
                }
                z7Var.i0(i2, iInterface);
                return true;
            } finally {
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean h0(z7 z7Var) {
        if (z7Var.L || TextUtils.isEmpty(z7Var.E()) || TextUtils.isEmpty(z7Var.B())) {
            return false;
        }
        try {
            Class.forName(z7Var.E());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public Bundle A() {
        return new Bundle();
    }

    public String B() {
        return null;
    }

    public Set C() {
        return Collections.emptySet();
    }

    public final IInterface D() {
        IInterface iInterface;
        synchronized (this.x) {
            try {
                if (this.E == 5) {
                    throw new DeadObjectException();
                }
                r();
                iInterface = this.B;
                mj0.j(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public abstract String E();

    public abstract String F();

    public String G() {
        return "com.google.android.gms";
    }

    public ff H() {
        x02 x02Var = this.M;
        if (x02Var == null) {
            return null;
        }
        return x02Var.p;
    }

    public boolean I() {
        return e() >= 211700000;
    }

    public boolean J() {
        return this.M != null;
    }

    public void K(IInterface iInterface) {
        this.n = System.currentTimeMillis();
    }

    public void L(ef efVar) {
        this.o = efVar.d();
        this.p = System.currentTimeMillis();
    }

    public void M(int i) {
        this.l = i;
        this.m = System.currentTimeMillis();
    }

    public void N(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.w;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new cr1(this, i, iBinder, bundle)));
    }

    public boolean O() {
        return false;
    }

    public void P(String str) {
        this.J = str;
    }

    public void Q(int i) {
        Handler handler = this.w;
        handler.sendMessage(handler.obtainMessage(6, this.N.get(), i));
    }

    public void R(c cVar, int i, PendingIntent pendingIntent) {
        mj0.j(cVar, "Connection progress callbacks cannot be null.");
        this.A = cVar;
        Handler handler = this.w;
        handler.sendMessage(handler.obtainMessage(3, this.N.get(), i, pendingIntent));
    }

    public boolean S() {
        return false;
    }

    public final String X() {
        String str = this.I;
        return str == null ? this.s.getClass().getName() : str;
    }

    public boolean a() {
        boolean z;
        synchronized (this.x) {
            z = this.E == 4;
        }
        return z;
    }

    public void c(String str) {
        this.q = str;
        n();
    }

    public boolean d() {
        return true;
    }

    public abstract int e();

    public final void e0(int i, Bundle bundle, int i2) {
        Handler handler = this.w;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new gu1(this, i, null)));
    }

    public boolean f() {
        boolean z;
        synchronized (this.x) {
            int i = this.E;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    public final hr[] g() {
        x02 x02Var = this.M;
        if (x02Var == null) {
            return null;
        }
        return x02Var.n;
    }

    public String h() {
        af2 af2Var;
        if (!a() || (af2Var = this.r) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return af2Var.b();
    }

    public final void i0(int i, IInterface iInterface) {
        af2 af2Var;
        mj0.a((i == 4) == (iInterface != null));
        synchronized (this.x) {
            try {
                this.E = i;
                this.B = iInterface;
                if (i == 1) {
                    xo1 xo1Var = this.D;
                    if (xo1Var != null) {
                        rx rxVar = this.u;
                        String c2 = this.r.c();
                        mj0.i(c2);
                        rxVar.e(c2, this.r.b(), this.r.a(), xo1Var, X(), this.r.d());
                        this.D = null;
                    }
                } else if (i == 2 || i == 3) {
                    xo1 xo1Var2 = this.D;
                    if (xo1Var2 != null && (af2Var = this.r) != null) {
                        String c3 = af2Var.c();
                        String b2 = af2Var.b();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(c3);
                        sb.append(" on ");
                        sb.append(b2);
                        rx rxVar2 = this.u;
                        String c4 = this.r.c();
                        mj0.i(c4);
                        rxVar2.e(c4, this.r.b(), this.r.a(), xo1Var2, X(), this.r.d());
                        this.N.incrementAndGet();
                    }
                    xo1 xo1Var3 = new xo1(this, this.N.get());
                    this.D = xo1Var3;
                    af2 af2Var2 = (this.E != 3 || B() == null) ? new af2(G(), F(), false, rx.a(), I()) : new af2(y().getPackageName(), B(), true, rx.a(), false);
                    this.r = af2Var2;
                    if (af2Var2.d() && e() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.r.c())));
                    }
                    rx rxVar3 = this.u;
                    String c5 = this.r.c();
                    mj0.i(c5);
                    if (!rxVar3.f(new l92(c5, this.r.b(), this.r.a(), this.r.d()), xo1Var3, X(), w())) {
                        String c6 = this.r.c();
                        String b3 = this.r.b();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unable to connect to service: ");
                        sb2.append(c6);
                        sb2.append(" on ");
                        sb2.append(b3);
                        e0(16, null, this.N.get());
                    }
                } else if (i == 4) {
                    mj0.i(iInterface);
                    K(iInterface);
                }
            } finally {
            }
        }
    }

    public String j() {
        return this.q;
    }

    public void k(mz mzVar, Set set) {
        Bundle A = A();
        int i = this.H;
        String str = this.J;
        int i2 = yx.a;
        Scope[] scopeArr = mx.A;
        Bundle bundle = new Bundle();
        hr[] hrVarArr = mx.B;
        mx mxVar = new mx(6, i, i2, null, null, scopeArr, bundle, null, hrVarArr, hrVarArr, true, 0, false, str);
        mxVar.p = this.s.getPackageName();
        mxVar.s = A;
        if (set != null) {
            mxVar.r = (Scope[]) set.toArray(new Scope[0]);
        }
        if (o()) {
            Account u = u();
            if (u == null) {
                u = new Account("<<default account>>", "com.google");
            }
            mxVar.t = u;
            if (mzVar != null) {
                mxVar.q = mzVar.asBinder();
            }
        } else if (O()) {
            mxVar.t = u();
        }
        mxVar.u = P;
        mxVar.v = v();
        if (S()) {
            mxVar.y = true;
        }
        try {
            try {
                synchronized (this.y) {
                    try {
                        g10 g10Var = this.z;
                        if (g10Var != null) {
                            g10Var.Q(new um1(this, this.N.get()), mxVar);
                        }
                    } finally {
                    }
                }
            } catch (RemoteException | RuntimeException unused) {
                N(8, null, null, this.N.get());
            }
        } catch (DeadObjectException unused2) {
            Q(3);
        } catch (SecurityException e2) {
            throw e2;
        }
    }

    public void l(e eVar) {
        eVar.a();
    }

    public void m(c cVar) {
        mj0.j(cVar, "Connection progress callbacks cannot be null.");
        this.A = cVar;
        i0(2, null);
    }

    public void n() {
        this.N.incrementAndGet();
        synchronized (this.C) {
            try {
                int size = this.C.size();
                for (int i = 0; i < size; i++) {
                    ((kk1) this.C.get(i)).d();
                }
                this.C.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.y) {
            this.z = null;
        }
        i0(1, null);
    }

    public boolean o() {
        return false;
    }

    public void q() {
        int h = this.v.h(this.s, e());
        if (h == 0) {
            m(new d());
        } else {
            i0(1, null);
            R(new d(), h, null);
        }
    }

    public final void r() {
        if (!a()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public abstract IInterface s(IBinder iBinder);

    public boolean t() {
        return false;
    }

    public Account u() {
        return null;
    }

    public hr[] v() {
        return P;
    }

    public Executor w() {
        return null;
    }

    public Bundle x() {
        return null;
    }

    public final Context y() {
        return this.s;
    }

    public int z() {
        return this.H;
    }

    public z7(Context context, Looper looper, rx rxVar, yx yxVar, int i, a aVar, b bVar, String str) {
        this.q = null;
        this.x = new Object();
        this.y = new Object();
        this.C = new ArrayList();
        this.E = 1;
        this.K = null;
        this.L = false;
        this.M = null;
        this.N = new AtomicInteger(0);
        mj0.j(context, "Context must not be null");
        this.s = context;
        mj0.j(looper, "Looper must not be null");
        this.t = looper;
        mj0.j(rxVar, "Supervisor must not be null");
        this.u = rxVar;
        mj0.j(yxVar, "API availability must not be null");
        this.v = yxVar;
        this.w = new wh1(this, looper);
        this.H = i;
        this.F = aVar;
        this.G = bVar;
        this.I = str;
    }
}
