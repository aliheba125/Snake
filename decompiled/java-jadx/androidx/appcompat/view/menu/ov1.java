package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.appcompat.view.menu.fv1;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class ov1 {
    public static volatile cw1 h;
    public final ew1 a;
    public final String b;
    public final Object c;
    public volatile int d;
    public volatile Object e;
    public final boolean f;
    public static final Object g = new Object();
    public static final AtomicReference i = new AtomicReference();
    public static kw1 j = new kw1(new ww1() { // from class: androidx.appcompat.view.menu.qv1
        @Override // androidx.appcompat.view.menu.ww1
        public final boolean a() {
            return ov1.n();
        }
    });
    public static final AtomicInteger k = new AtomicInteger();

    public static /* synthetic */ ov1 b(ew1 ew1Var, String str, Boolean bool, boolean z) {
        return new uv1(ew1Var, str, bool, true);
    }

    public static /* synthetic */ ov1 c(ew1 ew1Var, String str, Double d, boolean z) {
        return new aw1(ew1Var, str, d, true);
    }

    public static /* synthetic */ ov1 d(ew1 ew1Var, String str, Long l, boolean z) {
        return new wv1(ew1Var, str, l, true);
    }

    public static /* synthetic */ ov1 e(ew1 ew1Var, String str, String str2, boolean z) {
        return new yv1(ew1Var, str, str2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004b, code lost:
    
        throw r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void l(final Context context) {
        if (h != null || context == null) {
            return;
        }
        Object obj = g;
        synchronized (obj) {
            try {
                if (h == null) {
                    synchronized (obj) {
                        cw1 cw1Var = h;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (cw1Var != null) {
                            if (cw1Var.a() != context) {
                            }
                        }
                        du1.d();
                        gw1.c();
                        av1.b();
                        h = new xt1(context, gy0.a(new ey0() { // from class: androidx.appcompat.view.menu.sv1
                            @Override // androidx.appcompat.view.menu.ey0
                            public final Object get() {
                                rg0 a;
                                a = fv1.a.a(context);
                                return a;
                            }
                        }));
                        k.incrementAndGet();
                    }
                }
            } finally {
            }
        }
    }

    public static void m() {
        k.incrementAndGet();
    }

    public static /* synthetic */ boolean n() {
        return true;
    }

    public final Object f() {
        Object j2;
        if (!this.f) {
            nj0.n(j.a(this.b), "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i2 = k.get();
        if (this.d < i2) {
            synchronized (this) {
                try {
                    if (this.d < i2) {
                        cw1 cw1Var = h;
                        rg0 a = rg0.a();
                        String str = null;
                        if (cw1Var != null) {
                            a = (rg0) cw1Var.b().get();
                            if (a.c()) {
                                cv1 cv1Var = (cv1) a.b();
                                ew1 ew1Var = this.a;
                                str = cv1Var.a(ew1Var.b, ew1Var.a, ew1Var.d, this.b);
                            }
                        }
                        nj0.n(cw1Var != null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                        if (!this.a.f ? (j2 = j(cw1Var)) == null && (j2 = g(cw1Var)) == null : (j2 = g(cw1Var)) == null && (j2 = j(cw1Var)) == null) {
                            j2 = this.c;
                        }
                        if (a.c()) {
                            j2 = str == null ? this.c : h(str);
                        }
                        this.e = j2;
                        this.d = i2;
                    }
                } finally {
                }
            }
        }
        return this.e;
    }

    public final Object g(cw1 cw1Var) {
        pw pwVar;
        ew1 ew1Var = this.a;
        if (!ew1Var.e && ((pwVar = ew1Var.i) == null || ((Boolean) pwVar.apply(cw1Var.a())).booleanValue())) {
            av1 a = av1.a(cw1Var.a());
            ew1 ew1Var2 = this.a;
            Object h2 = a.h(ew1Var2.e ? null : i(ew1Var2.c));
            if (h2 != null) {
                return h(h2);
            }
        }
        return null;
    }

    public abstract Object h(Object obj);

    public final String i(String str) {
        if (str != null && str.isEmpty()) {
            return this.b;
        }
        return str + this.b;
    }

    public final Object j(cw1 cw1Var) {
        Object h2;
        qu1 a = this.a.b != null ? kv1.b(cw1Var.a(), this.a.b) ? this.a.h ? du1.a(cw1Var.a().getContentResolver(), iv1.a(iv1.b(cw1Var.a(), this.a.b.getLastPathSegment())), new Runnable() { // from class: androidx.appcompat.view.menu.mv1
            @Override // java.lang.Runnable
            public final void run() {
                ov1.m();
            }
        }) : du1.a(cw1Var.a().getContentResolver(), this.a.b, new Runnable() { // from class: androidx.appcompat.view.menu.mv1
            @Override // java.lang.Runnable
            public final void run() {
                ov1.m();
            }
        }) : null : gw1.b(cw1Var.a(), this.a.a, new Runnable() { // from class: androidx.appcompat.view.menu.mv1
            @Override // java.lang.Runnable
            public final void run() {
                ov1.m();
            }
        });
        if (a == null || (h2 = a.h(k())) == null) {
            return null;
        }
        return h(h2);
    }

    public final String k() {
        return i(this.a.d);
    }

    public ov1(ew1 ew1Var, String str, Object obj, boolean z) {
        this.d = -1;
        String str2 = ew1Var.a;
        if (str2 == null && ew1Var.b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && ew1Var.b != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.a = ew1Var;
        this.b = str;
        this.c = obj;
        this.f = z;
    }
}
