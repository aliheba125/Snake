package androidx.appcompat.view.menu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ny0 implements Runnable {
    public final long m;
    public final PowerManager.WakeLock n;
    public final FirebaseMessaging o;
    public ExecutorService p = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new le0("firebase-iid-executor"));

    public static class a extends BroadcastReceiver {
        public ny0 a;

        public a(ny0 ny0Var) {
            this.a = ny0Var;
        }

        public void a() {
            ny0.c();
            this.a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ny0 ny0Var = this.a;
            if (ny0Var != null && ny0Var.d()) {
                ny0.c();
                this.a.o.j(this.a, 0L);
                this.a.b().unregisterReceiver(this);
                this.a = null;
            }
        }
    }

    public ny0(FirebaseMessaging firebaseMessaging, long j) {
        this.o = firebaseMessaging;
        this.m = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.n = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    public static boolean c() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    public Context b() {
        return this.o.k();
    }

    public boolean d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) b().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public boolean e() {
        try {
            if (this.o.i() == null) {
                return false;
            }
            Log.isLoggable("FirebaseMessaging", 3);
            return true;
        } catch (IOException e) {
            if (!ux.g(e.getMessage())) {
                if (e.getMessage() == null) {
                    return false;
                }
                throw e;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Token retrieval failed: ");
            sb.append(e.getMessage());
            sb.append(". Will retry token retrieval");
            return false;
        } catch (SecurityException unused) {
            return false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (dt0.b().e(b())) {
            this.n.acquire();
        }
        try {
            try {
                this.o.B(true);
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(e.getMessage());
                sb.append(". Won't retry the operation.");
                this.o.B(false);
                if (!dt0.b().e(b())) {
                    return;
                }
            }
            if (!this.o.t()) {
                this.o.B(false);
                if (dt0.b().e(b())) {
                    this.n.release();
                    return;
                }
                return;
            }
            if (dt0.b().d(b()) && !d()) {
                new a(this).a();
                if (dt0.b().e(b())) {
                    this.n.release();
                    return;
                }
                return;
            }
            if (e()) {
                this.o.B(false);
            } else {
                this.o.E(this.m);
            }
            if (!dt0.b().e(b())) {
                return;
            }
            this.n.release();
        } catch (Throwable th) {
            if (dt0.b().e(b())) {
                this.n.release();
            }
            throw th;
        }
    }
}
