package com.google.firebase.messaging;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.bs;
import androidx.appcompat.view.menu.by0;
import androidx.appcompat.view.menu.bz0;
import androidx.appcompat.view.menu.cd0;
import androidx.appcompat.view.menu.cy0;
import androidx.appcompat.view.menu.e21;
import androidx.appcompat.view.menu.el0;
import androidx.appcompat.view.menu.er;
import androidx.appcompat.view.menu.es;
import androidx.appcompat.view.menu.fr;
import androidx.appcompat.view.menu.gr;
import androidx.appcompat.view.menu.j11;
import androidx.appcompat.view.menu.jz0;
import androidx.appcompat.view.menu.le0;
import androidx.appcompat.view.menu.mg0;
import androidx.appcompat.view.menu.mj0;
import androidx.appcompat.view.menu.ny0;
import androidx.appcompat.view.menu.ol0;
import androidx.appcompat.view.menu.or;
import androidx.appcompat.view.menu.ux;
import androidx.appcompat.view.menu.vo;
import androidx.appcompat.view.menu.wi;
import androidx.appcompat.view.menu.zo;
import androidx.appcompat.view.menu.zy0;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.a;
import com.google.firebase.messaging.b;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FirebaseMessaging {
    public static final long n = TimeUnit.HOURS.toSeconds(8);
    public static b o;
    public static e21 p;
    public static ScheduledExecutorService q;
    public final or a;
    public final bs b;
    public final Context c;
    public final ux d;
    public final com.google.firebase.messaging.a e;
    public final a f;
    public final Executor g;
    public final Executor h;
    public final Executor i;
    public final zy0 j;
    public final cd0 k;
    public boolean l;
    public final Application.ActivityLifecycleCallbacks m;

    public class a {
        public final by0 a;
        public boolean b;
        public zo c;
        public Boolean d;

        public a(by0 by0Var) {
            this.a = by0Var;
        }

        public synchronized void b() {
            try {
                if (this.b) {
                    return;
                }
                Boolean e = e();
                this.d = e;
                if (e == null) {
                    zo zoVar = new zo() { // from class: androidx.appcompat.view.menu.ms
                        @Override // androidx.appcompat.view.menu.zo
                        public final void a(vo voVar) {
                            FirebaseMessaging.a.this.d(voVar);
                        }
                    };
                    this.c = zoVar;
                    this.a.b(wi.class, zoVar);
                }
                this.b = true;
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized boolean c() {
            Boolean bool;
            try {
                b();
                bool = this.d;
            } catch (Throwable th) {
                throw th;
            }
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.a.s();
        }

        public final /* synthetic */ void d(vo voVar) {
            if (c()) {
                FirebaseMessaging.this.D();
            }
        }

        public final Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context j = FirebaseMessaging.this.a.j();
            SharedPreferences sharedPreferences = j.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = j.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(j.getPackageName(), PackageParser.PARSE_IS_PRIVILEGED)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        public synchronized void f(boolean z) {
            try {
                b();
                zo zoVar = this.c;
                if (zoVar != null) {
                    this.a.c(wi.class, zoVar);
                    this.c = null;
                }
                SharedPreferences.Editor edit = FirebaseMessaging.this.a.j().getSharedPreferences("com.google.firebase.messaging", 0).edit();
                edit.putBoolean("auto_init", z);
                edit.apply();
                if (z) {
                    FirebaseMessaging.this.D();
                }
                this.d = Boolean.valueOf(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public FirebaseMessaging(or orVar, es esVar, el0 el0Var, el0 el0Var2, bs bsVar, e21 e21Var, by0 by0Var) {
        this(orVar, esVar, el0Var, el0Var2, bsVar, e21Var, by0Var, new cd0(orVar.j()));
    }

    @Keep
    public static synchronized FirebaseMessaging getInstance(or orVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) orVar.i(FirebaseMessaging.class);
            mj0.j(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    public static synchronized FirebaseMessaging l() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = getInstance(or.k());
        }
        return firebaseMessaging;
    }

    public static synchronized b m(Context context) {
        b bVar;
        synchronized (FirebaseMessaging.class) {
            try {
                if (o == null) {
                    o = new b(context);
                }
                bVar = o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    public static e21 q() {
        return p;
    }

    public void A(boolean z) {
        this.f.f(z);
    }

    public synchronized void B(boolean z) {
        this.l = z;
    }

    public final synchronized void C() {
        if (!this.l) {
            E(0L);
        }
    }

    public final void D() {
        if (F(p())) {
            C();
        }
    }

    public synchronized void E(long j) {
        j(new ny0(this, Math.min(Math.max(30L, 2 * j), n)), j);
        this.l = true;
    }

    public boolean F(b.a aVar) {
        return aVar == null || aVar.b(this.k.a());
    }

    public String i() {
        final b.a p2 = p();
        if (!F(p2)) {
            return p2.a;
        }
        final String c = cd0.c(this.a);
        try {
            return (String) jz0.a(this.e.b(c, new a.InterfaceC0066a() { // from class: androidx.appcompat.view.menu.js
                @Override // com.google.firebase.messaging.a.InterfaceC0066a
                public final zy0 a() {
                    zy0 u;
                    u = FirebaseMessaging.this.u(c, p2);
                    return u;
                }
            }));
        } catch (InterruptedException | ExecutionException e) {
            throw new IOException(e);
        }
    }

    public void j(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (q == null) {
                    q = new ScheduledThreadPoolExecutor(1, new le0("TAG"));
                }
                q.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Context k() {
        return this.c;
    }

    public final String n() {
        return "[DEFAULT]".equals(this.a.l()) ? "" : this.a.n();
    }

    public zy0 o() {
        final bz0 bz0Var = new bz0();
        this.g.execute(new Runnable() { // from class: androidx.appcompat.view.menu.ks
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.w(bz0Var);
            }
        });
        return bz0Var.a();
    }

    public b.a p() {
        return m(this.c).d(n(), cd0.c(this.a));
    }

    public final void r(String str) {
        if ("[DEFAULT]".equals(this.a.l())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invoking onNewToken for app: ");
                sb.append(this.a.l());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new er(this.c).k(intent);
        }
    }

    public boolean s() {
        return this.f.c();
    }

    public boolean t() {
        return this.k.g();
    }

    public final /* synthetic */ zy0 u(final String str, final b.a aVar) {
        return this.d.e().n(this.i, new cy0() { // from class: androidx.appcompat.view.menu.ls
            @Override // androidx.appcompat.view.menu.cy0
            public final zy0 a(Object obj) {
                zy0 v;
                v = FirebaseMessaging.this.v(str, aVar, (String) obj);
                return v;
            }
        });
    }

    public final /* synthetic */ zy0 v(String str, b.a aVar, String str2) {
        m(this.c).f(n(), str, str2, this.k.a());
        if (aVar == null || !str2.equals(aVar.a)) {
            r(str2);
        }
        return jz0.e(str2);
    }

    public final /* synthetic */ void w(bz0 bz0Var) {
        try {
            bz0Var.c(i());
        } catch (Exception e) {
            bz0Var.b(e);
        }
    }

    public final /* synthetic */ void x() {
        if (s()) {
            D();
        }
    }

    public final /* synthetic */ void y(j11 j11Var) {
        if (s()) {
            j11Var.o();
        }
    }

    public final /* synthetic */ void z() {
        ol0.c(this.c);
    }

    public FirebaseMessaging(or orVar, es esVar, el0 el0Var, el0 el0Var2, bs bsVar, e21 e21Var, by0 by0Var, cd0 cd0Var) {
        this(orVar, esVar, bsVar, e21Var, by0Var, cd0Var, new ux(orVar, cd0Var, el0Var, el0Var2, bsVar), fr.f(), fr.c(), fr.b());
    }

    public FirebaseMessaging(or orVar, es esVar, bs bsVar, e21 e21Var, by0 by0Var, cd0 cd0Var, ux uxVar, Executor executor, Executor executor2, Executor executor3) {
        this.l = false;
        p = e21Var;
        this.a = orVar;
        this.b = bsVar;
        this.f = new a(by0Var);
        Context j = orVar.j();
        this.c = j;
        gr grVar = new gr();
        this.m = grVar;
        this.k = cd0Var;
        this.h = executor;
        this.d = uxVar;
        this.e = new com.google.firebase.messaging.a(executor);
        this.g = executor2;
        this.i = executor3;
        Context j2 = orVar.j();
        if (j2 instanceof Application) {
            ((Application) j2).registerActivityLifecycleCallbacks(grVar);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Context ");
            sb.append(j2);
            sb.append(" was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (esVar != null) {
            esVar.a(new es.a() { // from class: androidx.appcompat.view.menu.fs
            });
        }
        executor2.execute(new Runnable() { // from class: androidx.appcompat.view.menu.gs
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.x();
            }
        });
        zy0 e = j11.e(this, cd0Var, uxVar, j, fr.g());
        this.j = e;
        e.e(executor2, new mg0() { // from class: androidx.appcompat.view.menu.hs
            @Override // androidx.appcompat.view.menu.mg0
            public final void a(Object obj) {
                FirebaseMessaging.this.y((j11) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: androidx.appcompat.view.menu.is
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.z();
            }
        });
    }
}
