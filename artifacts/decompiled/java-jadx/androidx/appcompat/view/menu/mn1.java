package androidx.appcompat.view.menu;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class mn1 {
    public static volatile mn1 j;
    public final String a;
    public final cc b;
    public final ExecutorService c;
    public final t3 d;
    public final List e;
    public int f;
    public boolean g;
    public String h;
    public volatile fm1 i;

    public abstract class a implements Runnable {
        public final long m;
        public final long n;
        public final boolean o;

        public a(mn1 mn1Var) {
            this(true);
        }

        public abstract void a();

        public void b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (mn1.this.g) {
                b();
                return;
            }
            try {
                a();
            } catch (Exception e) {
                mn1.this.p(e, false, this.o);
                b();
            }
        }

        public a(boolean z) {
            this.m = mn1.this.b.a();
            this.n = mn1.this.b.b();
            this.o = z;
        }
    }

    public class b implements Application.ActivityLifecycleCallbacks {
        public b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            mn1.this.l(new zp1(this, bundle, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            mn1.this.l(new jq1(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            mn1.this.l(new hq1(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            mn1.this.l(new bq1(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            bm1 bm1Var = new bm1();
            mn1.this.l(new lq1(this, activity, bm1Var));
            Bundle j = bm1Var.j(50L);
            if (j != null) {
                bundle.putAll(j);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            mn1.this.l(new dq1(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            mn1.this.l(new fq1(this, activity));
        }
    }

    public mn1(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !B(str2, str3)) {
            this.a = "FA";
        } else {
            this.a = str;
        }
        this.b = kj.d();
        this.c = gl1.a().a(new go1(this), yl1.a);
        this.d = new t3(this);
        this.e = new ArrayList();
        if (y(context) && !G()) {
            this.h = null;
            this.g = true;
            return;
        }
        if (B(str2, str3)) {
            this.h = str2;
        } else {
            this.h = "fa";
        }
        l(new tn1(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new b());
    }

    public static mn1 e(Context context) {
        return f(context, null, null, null, null);
    }

    public static mn1 f(Context context, String str, String str2, String str3, Bundle bundle) {
        mj0.i(context);
        if (j == null) {
            synchronized (mn1.class) {
                try {
                    if (j == null) {
                        j = new mn1(context, str, str2, str3, bundle);
                    }
                } finally {
                }
            }
        }
        return j;
    }

    public static boolean y(Context context) {
        return new lw1(context, lw1.a(context)).b("google_app_id") != null;
    }

    public final boolean B(String str, String str2) {
        return (str2 == null || str == null || G()) ? false : true;
    }

    public final String C() {
        bm1 bm1Var = new bm1();
        l(new no1(this, bm1Var));
        return bm1Var.v2(50L);
    }

    public final String D() {
        bm1 bm1Var = new bm1();
        l(new gp1(this, bm1Var));
        return bm1Var.v2(500L);
    }

    public final String E() {
        bm1 bm1Var = new bm1();
        l(new ro1(this, bm1Var));
        return bm1Var.v2(500L);
    }

    public final String F() {
        bm1 bm1Var = new bm1();
        l(new po1(this, bm1Var));
        return bm1Var.v2(500L);
    }

    public final boolean G() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, getClass().getClassLoader());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final int a(String str) {
        bm1 bm1Var = new bm1();
        l(new lp1(this, str, bm1Var));
        Integer num = (Integer) bm1.k(bm1Var.j(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final long b() {
        bm1 bm1Var = new bm1();
        l(new to1(this, bm1Var));
        Long u2 = bm1Var.u2(500L);
        if (u2 != null) {
            return u2.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.b.a()).nextLong();
        int i = this.f + 1;
        this.f = i;
        return nextLong + i;
    }

    public final fm1 c(Context context, boolean z) {
        try {
            return dm1.asInterface(DynamiteModule.d(context, DynamiteModule.e, ModuleDescriptor.MODULE_ID).c("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.a e) {
            p(e, true, false);
            return null;
        }
    }

    public final List g(String str, String str2) {
        bm1 bm1Var = new bm1();
        l(new vn1(this, str, str2, bm1Var));
        List list = (List) bm1.k(bm1Var.j(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final Map h(String str, String str2, boolean z) {
        bm1 bm1Var = new bm1();
        l(new vo1(this, str, str2, z, bm1Var));
        Bundle j2 = bm1Var.j(5000L);
        if (j2 == null || j2.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(j2.size());
        for (String str3 : j2.keySet()) {
            Object obj = j2.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void i(int i, String str, Object obj, Object obj2, Object obj3) {
        l(new jp1(this, false, 5, str, obj, null, null));
    }

    public final void j(Activity activity, String str, String str2) {
        l(new zn1(this, activity, str, str2));
    }

    public final void k(Bundle bundle) {
        l(new rn1(this, bundle));
    }

    public final void l(a aVar) {
        this.c.execute(aVar);
    }

    public final void p(Exception exc, boolean z, boolean z2) {
        this.g |= z;
        if (!z && z2) {
            i(5, "Error with data collection. Data lost.", exc, null, null);
        }
    }

    public final void q(String str, String str2, Bundle bundle) {
        l(new xn1(this, str, str2, bundle));
    }

    public final void r(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        l(new up1(this, l, str, str2, bundle, z, z2));
    }

    public final void s(String str, String str2, Object obj, boolean z) {
        l(new xp1(this, str, str2, obj, z));
    }

    public final t3 u() {
        return this.d;
    }

    public final void w(String str) {
        l(new lo1(this, str));
    }

    public final void x(String str, String str2, Bundle bundle) {
        r(str, str2, bundle, true, true, null);
    }

    public final void z(String str) {
        l(new jo1(this, str));
    }
}
