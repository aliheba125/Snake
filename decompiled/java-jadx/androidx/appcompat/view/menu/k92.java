package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class k92 {
    public static volatile rf1 e;
    public static Context g;
    public static final a52 a = new br1(w02.k("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
    public static final a52 b = new fu1(w02.k("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    public static final a52 c = new nw1(w02.k("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
    public static final a52 d = new ry1(w02.k("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
    public static final Object f = new Object();

    public static pf2 a(String str, w02 w02Var, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return f(str, w02Var, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static pf2 b(String str, boolean z, boolean z2, boolean z3) {
        return g(str, z, false, false, true);
    }

    public static /* synthetic */ String c(boolean z, String str, w02 w02Var) {
        String str2 = (z || !f(str, w02Var, true, false).a) ? "not allowed" : "debug cert rejected";
        MessageDigest b2 = i2.b("SHA-256");
        mj0.i(b2);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, gz.a(b2.digest(w02Var.u2())), Boolean.valueOf(z), "12451000.false");
    }

    public static synchronized void d(Context context) {
        synchronized (k92.class) {
            if (g == null) {
                if (context != null) {
                    g = context.getApplicationContext();
                }
            }
        }
    }

    public static boolean e() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            h();
            boolean e2 = e.e();
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return e2;
        } catch (RemoteException | DynamiteModule.a unused) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static pf2 f(final String str, final w02 w02Var, final boolean z, boolean z2) {
        try {
            h();
            mj0.i(g);
            try {
                return e.w0(new oe2(str, w02Var, z, z2), vf0.k(g.getPackageManager())) ? pf2.b() : new ff2(new Callable() { // from class: androidx.appcompat.view.menu.wo1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return k92.c(z, str, w02Var);
                    }
                }, null);
            } catch (RemoteException e2) {
                return pf2.d("module call", e2);
            }
        } catch (DynamiteModule.a e3) {
            return pf2.d("module init: ".concat(String.valueOf(e3.getMessage())), e3);
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [android.os.IBinder, androidx.appcompat.view.menu.b20] */
    public static pf2 g(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        pf2 d2;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            mj0.i(g);
            try {
                h();
                za2 za2Var = new za2(str, z, false, vf0.k(g), false);
                try {
                    md2 Q1 = z4 ? e.Q1(za2Var) : e.j2(za2Var);
                    if (Q1.f()) {
                        d2 = pf2.f(Q1.i());
                    } else {
                        String d3 = Q1.d();
                        PackageManager.NameNotFoundException nameNotFoundException = Q1.k() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (d3 == null) {
                            d3 = "error checking package certificate";
                        }
                        d2 = pf2.g(Q1.i(), Q1.k(), d3, nameNotFoundException);
                    }
                } catch (RemoteException e2) {
                    d2 = pf2.d("module call", e2);
                }
            } catch (DynamiteModule.a e3) {
                d2 = pf2.d("module init: ".concat(String.valueOf(e3.getMessage())), e3);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return d2;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static void h() {
        if (e != null) {
            return;
        }
        mj0.i(g);
        synchronized (f) {
            try {
                if (e == null) {
                    e = of1.j(DynamiteModule.d(g, DynamiteModule.f, "com.google.android.gms.googlecertificates").c("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
