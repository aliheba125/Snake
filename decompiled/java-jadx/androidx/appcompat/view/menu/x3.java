package androidx.appcompat.view.menu;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.IBinder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class x3 {
    public static final x3 c = new x3();
    public final Map a = new HashMap();
    public final Handler b = yu0.h().n();

    public static x3 c() {
        return c;
    }

    public static /* synthetic */ void e(ct0 ct0Var) {
        ct0Var.f().onDestroy();
    }

    public final ct0 b(Intent intent) {
        return (ct0) this.a.get(new Intent.FilterComparison(intent));
    }

    public final Service d(rl0 rl0Var) {
        Intent intent = rl0Var.a;
        ServiceInfo serviceInfo = rl0Var.b;
        IBinder iBinder = rl0Var.c;
        ct0 b = b(intent);
        if (b != null && b.f() != null) {
            return b.f();
        }
        Service A2 = jv0.B2().A2(serviceInfo, iBinder);
        if (A2 == null) {
            return null;
        }
        ct0 ct0Var = new ct0();
        ct0Var.l(A2);
        this.a.put(new Intent.FilterComparison(intent), ct0Var);
        return A2;
    }

    public IBinder f(Intent intent) {
        Service d;
        rl0 a = rl0.a(intent);
        Intent intent2 = a.a;
        ServiceInfo serviceInfo = a.b;
        if (intent2 == null || serviceInfo == null || (d = d(a)) == null) {
            return null;
        }
        intent2.setExtrasClassLoader(d.getClassLoader());
        ct0 b = b(intent2);
        b.i(intent2);
        if (b.h(intent2)) {
            if (b.j()) {
                d.onRebind(intent2);
                b.k(false);
            }
            return b.d(intent2);
        }
        try {
            IBinder onBind = d.onBind(intent2);
            b.b(intent2, onBind);
            return onBind;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void g(Configuration configuration) {
        if (this.a.size() > 0) {
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                try {
                    ((ct0) it.next()).f().onConfigurationChanged(configuration);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void h() {
        if (this.a.size() > 0) {
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                try {
                    ((ct0) it.next()).f().onDestroy();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        this.a.clear();
    }

    public void i() {
        if (this.a.size() > 0) {
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                try {
                    ((ct0) it.next()).f().onLowMemory();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void j(Intent intent) {
        Service d;
        rl0 a = rl0.a(intent);
        if (a.a == null || a.b == null || (d = d(a)) == null) {
            return;
        }
        a.a.setExtrasClassLoader(d.getClassLoader());
        b(a.a).m(a.e);
    }

    public void k(int i) {
        if (this.a.size() > 0) {
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                try {
                    ((ct0) it.next()).f().onTrimMemory(i);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        r3.onDestroy();
        androidx.appcompat.view.menu.yu0.j().v(r7, androidx.appcompat.view.menu.jv0.N2());
        r6.a.remove(new android.content.Intent.FilterComparison(r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void l(Intent intent) {
        Service d;
        rl0 a = rl0.a(intent);
        Intent intent2 = a.a;
        if (intent2 == null || a.b == null) {
            return;
        }
        try {
            i31 w = yu0.j().w(intent, jv0.N2());
            if (w == null || (d = d(a)) == null) {
                return;
            }
            a.a.setExtrasClassLoader(d.getClassLoader());
            ct0 b = b(intent2);
            boolean z = w.a() == 0;
            if (!z && !b.c(intent2)) {
                return;
            }
            b.k(true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public IBinder m(Intent intent) {
        ct0 b = b(intent);
        if (b == null) {
            return null;
        }
        return b.d(intent);
    }

    public void n(Intent intent) {
        final ct0 b;
        if (intent == null || (b = b(intent)) == null || b.f() == null || b.g() <= 0) {
            return;
        }
        try {
            this.b.post(new Runnable() { // from class: androidx.appcompat.view.menu.w3
                @Override // java.lang.Runnable
                public final void run() {
                    x3.e(ct0.this);
                }
            });
            yu0.j().v(intent, jv0.N2());
            this.a.remove(new Intent.FilterComparison(intent));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
