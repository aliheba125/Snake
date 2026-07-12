package androidx.appcompat.view.menu;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageParser;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.appcompat.view.menu.q02;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ay implements Handler.Callback {
    public static final Status C = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status D = new Status(4, "The user must be signed in to make this API call.");
    public static final Object E = new Object();
    public static ay F;
    public final Handler A;
    public volatile boolean B;
    public lz0 p;
    public nz0 q;
    public final Context r;
    public final xx s;
    public final od1 t;
    public long l = 5000;
    public long m = 120000;
    public long n = 10000;
    public boolean o = false;
    public final AtomicInteger u = new AtomicInteger(1);
    public final AtomicInteger v = new AtomicInteger(0);
    public final Map w = new ConcurrentHashMap(5, 0.75f, 1);
    public hb1 x = null;
    public final Set y = new q4();
    public final Set z = new q4();

    public ay(Context context, Looper looper, xx xxVar) {
        this.B = true;
        this.r = context;
        zd1 zd1Var = new zd1(looper, this);
        this.A = zd1Var;
        this.s = xxVar;
        this.t = new od1(xxVar);
        if (rl.a(context)) {
            this.B = false;
        }
        zd1Var.sendMessage(zd1Var.obtainMessage(6));
    }

    public static Status h(r2 r2Var, ef efVar) {
        String b = r2Var.b();
        String valueOf = String.valueOf(efVar);
        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 63 + valueOf.length());
        sb.append("API: ");
        sb.append(b);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(efVar, sb.toString());
    }

    public static ay x(Context context) {
        ay ayVar;
        synchronized (E) {
            try {
                if (F == null) {
                    F = new ay(context.getApplicationContext(), rx.c().getLooper(), xx.m());
                }
                ayVar = F;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ayVar;
    }

    public final void D(wx wxVar, int i, az0 az0Var, bz0 bz0Var, bx0 bx0Var) {
        l(bz0Var, az0Var.d(), wxVar);
        cd1 cd1Var = new cd1(i, az0Var, bz0Var, bx0Var);
        Handler handler = this.A;
        handler.sendMessage(handler.obtainMessage(4, new ic1(cd1Var, this.v.get(), wxVar)));
    }

    public final void E(nd0 nd0Var, int i, long j, int i2) {
        Handler handler = this.A;
        handler.sendMessage(handler.obtainMessage(18, new hc1(nd0Var, i, j, i2)));
    }

    public final void F(ef efVar, int i) {
        if (g(efVar, i)) {
            return;
        }
        Handler handler = this.A;
        handler.sendMessage(handler.obtainMessage(5, i, 0, efVar));
    }

    public final void a() {
        Handler handler = this.A;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void b(wx wxVar) {
        Handler handler = this.A;
        handler.sendMessage(handler.obtainMessage(7, wxVar));
    }

    public final void c(hb1 hb1Var) {
        synchronized (E) {
            try {
                if (this.x != hb1Var) {
                    this.x = hb1Var;
                    this.y.clear();
                }
                this.y.addAll(hb1Var.t());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(hb1 hb1Var) {
        synchronized (E) {
            try {
                if (this.x == hb1Var) {
                    this.x = null;
                    this.y.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean f() {
        if (this.o) {
            return false;
        }
        vp0 a = up0.b().a();
        if (a != null && !a.i()) {
            return false;
        }
        int a2 = this.t.a(this.r, 203400000);
        return a2 == -1 || a2 == 0;
    }

    public final boolean g(ef efVar, int i) {
        return this.s.w(this.r, efVar, i);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        r2 r2Var;
        r2 r2Var2;
        r2 r2Var3;
        r2 r2Var4;
        r2 r2Var5;
        int i = message.what;
        tb1 tb1Var = null;
        switch (i) {
            case 1:
                this.n = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.A.removeMessages(12);
                for (r2 r2Var6 : this.w.keySet()) {
                    Handler handler = this.A;
                    handler.sendMessageDelayed(handler.obtainMessage(12, r2Var6), this.n);
                }
                return true;
            case 2:
                jy0.a(message.obj);
                throw null;
            case q02.c.c /* 3 */:
                for (tb1 tb1Var2 : this.w.values()) {
                    tb1Var2.C();
                    tb1Var2.D();
                }
                return true;
            case 4:
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
            case 13:
                ic1 ic1Var = (ic1) message.obj;
                tb1 tb1Var3 = (tb1) this.w.get(ic1Var.c.d());
                if (tb1Var3 == null) {
                    tb1Var3 = i(ic1Var.c);
                }
                if (!tb1Var3.L() || this.v.get() == ic1Var.b) {
                    tb1Var3.E(ic1Var.a);
                } else {
                    ic1Var.a.a(C);
                    tb1Var3.J();
                }
                return true;
            case q02.c.e /* 5 */:
                int i2 = message.arg1;
                ef efVar = (ef) message.obj;
                Iterator it = this.w.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        tb1 tb1Var4 = (tb1) it.next();
                        if (tb1Var4.r() == i2) {
                            tb1Var = tb1Var4;
                        }
                    }
                }
                if (tb1Var == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i2);
                    sb.append(" while trying to fail enqueued calls.");
                    new Exception();
                } else if (efVar.d() == 13) {
                    String e = this.s.e(efVar.d());
                    String f = efVar.f();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(e).length() + 69 + String.valueOf(f).length());
                    sb2.append("Error resolution was canceled by the user, original error message: ");
                    sb2.append(e);
                    sb2.append(": ");
                    sb2.append(f);
                    tb1Var.d(new Status(17, sb2.toString()));
                } else {
                    r2Var = tb1Var.n;
                    tb1Var.d(h(r2Var, efVar));
                }
                return true;
            case q02.c.f /* 6 */:
                if (this.r.getApplicationContext() instanceof Application) {
                    v7.c((Application) this.r.getApplicationContext());
                    v7.b().a(new ob1(this));
                    if (!v7.b().e(true)) {
                        this.n = 300000L;
                    }
                }
                return true;
            case q02.c.g /* 7 */:
                i((wx) message.obj);
                return true;
            case 9:
                if (this.w.containsKey(message.obj)) {
                    ((tb1) this.w.get(message.obj)).I();
                }
                return true;
            case 10:
                Iterator it2 = this.z.iterator();
                while (it2.hasNext()) {
                    tb1 tb1Var5 = (tb1) this.w.remove((r2) it2.next());
                    if (tb1Var5 != null) {
                        tb1Var5.J();
                    }
                }
                this.z.clear();
                return true;
            case 11:
                if (this.w.containsKey(message.obj)) {
                    ((tb1) this.w.get(message.obj)).K();
                }
                return true;
            case 12:
                if (this.w.containsKey(message.obj)) {
                    ((tb1) this.w.get(message.obj)).a();
                }
                return true;
            case 14:
                jy0.a(message.obj);
                throw null;
            case 15:
                vb1 vb1Var = (vb1) message.obj;
                Map map = this.w;
                r2Var2 = vb1Var.a;
                if (map.containsKey(r2Var2)) {
                    Map map2 = this.w;
                    r2Var3 = vb1Var.a;
                    tb1.A((tb1) map2.get(r2Var3), vb1Var);
                }
                return true;
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                vb1 vb1Var2 = (vb1) message.obj;
                Map map3 = this.w;
                r2Var4 = vb1Var2.a;
                if (map3.containsKey(r2Var4)) {
                    Map map4 = this.w;
                    r2Var5 = vb1Var2.a;
                    tb1.B((tb1) map4.get(r2Var5), vb1Var2);
                }
                return true;
            case 17:
                k();
                return true;
            case 18:
                hc1 hc1Var = (hc1) message.obj;
                if (hc1Var.c == 0) {
                    j().a(new lz0(hc1Var.b, Arrays.asList(hc1Var.a)));
                } else {
                    lz0 lz0Var = this.p;
                    if (lz0Var != null) {
                        List f2 = lz0Var.f();
                        if (lz0Var.d() != hc1Var.b || (f2 != null && f2.size() >= hc1Var.d)) {
                            this.A.removeMessages(17);
                            k();
                        } else {
                            this.p.i(hc1Var.a);
                        }
                    }
                    if (this.p == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(hc1Var.a);
                        this.p = new lz0(hc1Var.b, arrayList);
                        Handler handler2 = this.A;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), hc1Var.c);
                    }
                }
                return true;
            case 19:
                this.o = false;
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i);
                return false;
        }
    }

    public final tb1 i(wx wxVar) {
        r2 d = wxVar.d();
        tb1 tb1Var = (tb1) this.w.get(d);
        if (tb1Var == null) {
            tb1Var = new tb1(this, wxVar);
            this.w.put(d, tb1Var);
        }
        if (tb1Var.L()) {
            this.z.add(d);
        }
        tb1Var.D();
        return tb1Var;
    }

    public final nz0 j() {
        if (this.q == null) {
            this.q = mz0.a(this.r);
        }
        return this.q;
    }

    public final void k() {
        lz0 lz0Var = this.p;
        if (lz0Var != null) {
            if (lz0Var.d() > 0 || f()) {
                j().a(lz0Var);
            }
            this.p = null;
        }
    }

    public final void l(bz0 bz0Var, int i, wx wxVar) {
        gc1 b;
        if (i == 0 || (b = gc1.b(this, i, wxVar.d())) == null) {
            return;
        }
        zy0 a = bz0Var.a();
        final Handler handler = this.A;
        handler.getClass();
        a.c(new Executor() { // from class: androidx.appcompat.view.menu.nb1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, b);
    }

    public final int m() {
        return this.u.getAndIncrement();
    }

    public final tb1 w(r2 r2Var) {
        return (tb1) this.w.get(r2Var);
    }
}
