package androidx.appcompat.view.menu;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.appcompat.view.menu.ga0;
import androidx.appcompat.view.menu.py0;
import androidx.appcompat.view.menu.t7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class i41 {
    public final Context a;
    public final r7 b;
    public final gp c;
    public final pa1 d;
    public final Executor e;
    public final py0 f;
    public final ec g;
    public final ec h;
    public final xb i;

    public i41(Context context, r7 r7Var, gp gpVar, pa1 pa1Var, Executor executor, py0 py0Var, ec ecVar, ec ecVar2, xb xbVar) {
        this.a = context;
        this.b = r7Var;
        this.c = gpVar;
        this.d = pa1Var;
        this.e = executor;
        this.f = py0Var;
        this.g = ecVar;
        this.h = ecVar2;
        this.i = xbVar;
    }

    public ap j(c21 c21Var) {
        py0 py0Var = this.f;
        final xb xbVar = this.i;
        Objects.requireNonNull(xbVar);
        return c21Var.a(ap.a().i(this.g.a()).k(this.h.a()).j("GDT_CLIENT_METRICS").h(new jo(lo.b("proto"), ((zb) py0Var.d(new py0.a() { // from class: androidx.appcompat.view.menu.y31
            @Override // androidx.appcompat.view.menu.py0.a
            public final Object a() {
                return xb.this.c();
            }
        })).f())).d());
    }

    public boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final /* synthetic */ Boolean l(d21 d21Var) {
        return Boolean.valueOf(this.c.v(d21Var));
    }

    public final /* synthetic */ Iterable m(d21 d21Var) {
        return this.c.l(d21Var);
    }

    public final /* synthetic */ Object n(Iterable iterable, d21 d21Var, long j) {
        this.c.y(iterable);
        this.c.n(d21Var, this.g.a() + j);
        return null;
    }

    public final /* synthetic */ Object o(Iterable iterable) {
        this.c.f(iterable);
        return null;
    }

    public final /* synthetic */ Object p() {
        this.i.e();
        return null;
    }

    public final /* synthetic */ Object q(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            this.i.a(((Integer) r0.getValue()).intValue(), ga0.b.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
        }
        return null;
    }

    public final /* synthetic */ Object r(d21 d21Var, long j) {
        this.c.n(d21Var, this.g.a() + j);
        return null;
    }

    public final /* synthetic */ Object s(d21 d21Var, int i) {
        this.d.a(d21Var, i + 1);
        return null;
    }

    public final /* synthetic */ void t(final d21 d21Var, final int i, Runnable runnable) {
        try {
            try {
                py0 py0Var = this.f;
                final gp gpVar = this.c;
                Objects.requireNonNull(gpVar);
                py0Var.d(new py0.a() { // from class: androidx.appcompat.view.menu.z31
                    @Override // androidx.appcompat.view.menu.py0.a
                    public final Object a() {
                        return Integer.valueOf(gp.this.b());
                    }
                });
                if (k()) {
                    u(d21Var, i);
                } else {
                    this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.a41
                        @Override // androidx.appcompat.view.menu.py0.a
                        public final Object a() {
                            Object s;
                            s = i41.this.s(d21Var, i);
                            return s;
                        }
                    });
                }
            } catch (oy0 unused) {
                this.d.a(d21Var, i + 1);
            }
            runnable.run();
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }

    public t7 u(final d21 d21Var, int i) {
        t7 b;
        c21 a = this.b.a(d21Var.b());
        long j = 0;
        t7 e = t7.e(0L);
        while (true) {
            final long j2 = j;
            while (((Boolean) this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.b41
                @Override // androidx.appcompat.view.menu.py0.a
                public final Object a() {
                    Boolean l;
                    l = i41.this.l(d21Var);
                    return l;
                }
            })).booleanValue()) {
                final Iterable iterable = (Iterable) this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.c41
                    @Override // androidx.appcompat.view.menu.py0.a
                    public final Object a() {
                        Iterable m;
                        m = i41.this.m(d21Var);
                        return m;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return e;
                }
                if (a == null) {
                    ma0.a("Uploader", "Unknown backend for %s, deleting event batch for it...", d21Var);
                    b = t7.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((yh0) it.next()).b());
                    }
                    if (d21Var.e()) {
                        arrayList.add(j(a));
                    }
                    b = a.b(s7.a().b(arrayList).c(d21Var.c()).a());
                }
                e = b;
                if (e.c() == t7.a.TRANSIENT_ERROR) {
                    this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.d41
                        @Override // androidx.appcompat.view.menu.py0.a
                        public final Object a() {
                            Object n;
                            n = i41.this.n(iterable, d21Var, j2);
                            return n;
                        }
                    });
                    this.d.b(d21Var, i + 1, true);
                    return e;
                }
                this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.e41
                    @Override // androidx.appcompat.view.menu.py0.a
                    public final Object a() {
                        Object o;
                        o = i41.this.o(iterable);
                        return o;
                    }
                });
                if (e.c() == t7.a.OK) {
                    j = Math.max(j2, e.b());
                    if (d21Var.e()) {
                        this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.f41
                            @Override // androidx.appcompat.view.menu.py0.a
                            public final Object a() {
                                Object p;
                                p = i41.this.p();
                                return p;
                            }
                        });
                    }
                } else if (e.c() == t7.a.INVALID_PAYLOAD) {
                    final HashMap hashMap = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String j3 = ((yh0) it2.next()).b().j();
                        if (hashMap.containsKey(j3)) {
                            hashMap.put(j3, Integer.valueOf(((Integer) hashMap.get(j3)).intValue() + 1));
                        } else {
                            hashMap.put(j3, 1);
                        }
                    }
                    this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.g41
                        @Override // androidx.appcompat.view.menu.py0.a
                        public final Object a() {
                            Object q;
                            q = i41.this.q(hashMap);
                            return q;
                        }
                    });
                }
            }
            this.f.d(new py0.a() { // from class: androidx.appcompat.view.menu.h41
                @Override // androidx.appcompat.view.menu.py0.a
                public final Object a() {
                    Object r;
                    r = i41.this.r(d21Var, j2);
                    return r;
                }
            });
            return e;
        }
    }

    public void v(final d21 d21Var, final int i, final Runnable runnable) {
        this.e.execute(new Runnable() { // from class: androidx.appcompat.view.menu.x31
            @Override // java.lang.Runnable
            public final void run() {
                i41.this.t(d21Var, i, runnable);
            }
        });
    }
}
