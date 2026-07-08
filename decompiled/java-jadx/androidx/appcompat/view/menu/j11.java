package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.Log;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class j11 {
    public static final long i = TimeUnit.HOURS.toSeconds(8);
    public final Context a;
    public final cd0 b;
    public final ux c;
    public final FirebaseMessaging d;
    public final ScheduledExecutorService f;
    public final h11 h;
    public final Map e = new o4();
    public boolean g = false;

    public j11(FirebaseMessaging firebaseMessaging, cd0 cd0Var, h11 h11Var, ux uxVar, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.d = firebaseMessaging;
        this.b = cd0Var;
        this.h = h11Var;
        this.c = uxVar;
        this.a = context;
        this.f = scheduledExecutorService;
    }

    public static void b(zy0 zy0Var) {
        try {
            jz0.b(zy0Var, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            e = e;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e3) {
            e = e3;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    public static zy0 e(final FirebaseMessaging firebaseMessaging, final cd0 cd0Var, final ux uxVar, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return jz0.c(scheduledExecutorService, new Callable() { // from class: androidx.appcompat.view.menu.i11
            @Override // java.util.concurrent.Callable
            public final Object call() {
                j11 i2;
                i2 = j11.i(context, scheduledExecutorService, firebaseMessaging, cd0Var, uxVar);
                return i2;
            }
        });
    }

    public static boolean g() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    public static /* synthetic */ j11 i(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, cd0 cd0Var, ux uxVar) {
        return new j11(firebaseMessaging, cd0Var, h11.a(context, scheduledExecutorService), uxVar, context, scheduledExecutorService);
    }

    public final void c(String str) {
        b(this.c.k(this.d.i(), str));
    }

    public final void d(String str) {
        b(this.c.l(this.d.i(), str));
    }

    public boolean f() {
        return this.h.b() != null;
    }

    public synchronized boolean h() {
        return this.g;
    }

    public final void j(g11 g11Var) {
        synchronized (this.e) {
            try {
                String e = g11Var.e();
                if (this.e.containsKey(e)) {
                    ArrayDeque arrayDeque = (ArrayDeque) this.e.get(e);
                    bz0 bz0Var = (bz0) arrayDeque.poll();
                    if (bz0Var != null) {
                        bz0Var.c(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.e.remove(e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b A[Catch: IOException -> 0x001d, TryCatch #0 {IOException -> 0x001d, blocks: (B:3:0x0001, B:12:0x0030, B:14:0x0036, B:17:0x0049, B:19:0x0056, B:20:0x006b, B:22:0x0078, B:23:0x0013, B:26:0x001f), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean k(g11 g11Var) {
        char c;
        try {
            String b = g11Var.b();
            int hashCode = b.hashCode();
            if (hashCode == 83) {
                if (b.equals("S")) {
                    c = 0;
                    if (c != 0) {
                    }
                    return true;
                }
                c = 65535;
                if (c != 0) {
                }
                return true;
            }
            if (hashCode == 85 && b.equals("U")) {
                c = 1;
                if (c != 0) {
                    c(g11Var.c());
                    if (g()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Subscribe to topic: ");
                        sb.append(g11Var.c());
                        sb.append(" succeeded.");
                    }
                } else if (c == 1) {
                    d(g11Var.c());
                    if (g()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Unsubscribe from topic: ");
                        sb2.append(g11Var.c());
                        sb2.append(" succeeded.");
                    }
                } else if (g()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Unknown topic operation");
                    sb3.append(g11Var);
                    sb3.append(".");
                }
                return true;
            }
            c = 65535;
            if (c != 0) {
            }
            return true;
        } catch (IOException e) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e.getMessage())) {
                if (e.getMessage() == null) {
                    return false;
                }
                throw e;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Topic operation failed: ");
            sb4.append(e.getMessage());
            sb4.append(". Will retry Topic operation.");
            return false;
        }
    }

    public void l(Runnable runnable, long j) {
        this.f.schedule(runnable, j, TimeUnit.SECONDS);
    }

    public synchronized void m(boolean z) {
        this.g = z;
    }

    public final void n() {
        if (h()) {
            return;
        }
        q(0L);
    }

    public void o() {
        if (f()) {
            n();
        }
    }

    public boolean p() {
        while (true) {
            synchronized (this) {
                try {
                    g11 b = this.h.b();
                    if (b == null) {
                        g();
                        return true;
                    }
                    if (!k(b)) {
                        return false;
                    }
                    this.h.d(b);
                    j(b);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void q(long j) {
        l(new k11(this, this.a, this.b, Math.min(Math.max(30L, 2 * j), i)), j);
        m(true);
    }
}
