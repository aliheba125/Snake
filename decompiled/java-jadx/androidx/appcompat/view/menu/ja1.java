package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.appcompat.view.menu.ja1;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ja1 implements ServiceConnection {
    public final Context l;
    public final Intent m;
    public final ScheduledExecutorService n;
    public final Queue o;
    public ga1 p;
    public boolean q;

    public static class a {
        public final Intent a;
        public final bz0 b = new bz0();

        public a(Intent intent) {
            this.a = intent;
        }

        public void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable() { // from class: androidx.appcompat.view.menu.ha1
                @Override // java.lang.Runnable
                public final void run() {
                    ja1.a.this.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().c(scheduledExecutorService, new gg0() { // from class: androidx.appcompat.view.menu.ia1
                @Override // androidx.appcompat.view.menu.gg0
                public final void a(zy0 zy0Var) {
                    schedule.cancel(false);
                }
            });
        }

        public void d() {
            this.b.e(null);
        }

        public zy0 e() {
            return this.b.a();
        }

        public final /* synthetic */ void f() {
            StringBuilder sb = new StringBuilder();
            sb.append("Service took too long to process intent: ");
            sb.append(this.a.getAction());
            sb.append(" finishing.");
            d();
        }
    }

    public ja1(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new le0("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    public final void a() {
        while (!this.o.isEmpty()) {
            ((a) this.o.poll()).d();
        }
    }

    public final synchronized void b() {
        try {
            Log.isLoggable("FirebaseMessaging", 3);
            while (!this.o.isEmpty()) {
                Log.isLoggable("FirebaseMessaging", 3);
                ga1 ga1Var = this.p;
                if (ga1Var == null || !ga1Var.isBinderAlive()) {
                    d();
                    return;
                } else {
                    Log.isLoggable("FirebaseMessaging", 3);
                    this.p.c((a) this.o.poll());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized zy0 c(Intent intent) {
        a aVar;
        Log.isLoggable("FirebaseMessaging", 3);
        aVar = new a(intent);
        aVar.c(this.n);
        this.o.add(aVar);
        b();
        return aVar.e();
    }

    public final void d() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("binder is dead. start connection? ");
            sb.append(!this.q);
        }
        if (this.q) {
            return;
        }
        this.q = true;
        try {
            if (hf.b().a(this.l, this.m, this, 65)) {
                return;
            }
        } catch (SecurityException unused) {
        }
        this.q = false;
        a();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("onServiceConnected: ");
                sb.append(componentName);
            }
            this.q = false;
            if (iBinder instanceof ga1) {
                this.p = (ga1) iBinder;
                b();
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invalid service connection: ");
                sb2.append(iBinder);
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("onServiceDisconnected: ");
            sb.append(componentName);
        }
        b();
    }

    public ja1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.o = new ArrayDeque();
        this.q = false;
        Context applicationContext = context.getApplicationContext();
        this.l = applicationContext;
        this.m = new Intent(str).setPackage(applicationContext.getPackageName());
        this.n = scheduledExecutorService;
    }
}
