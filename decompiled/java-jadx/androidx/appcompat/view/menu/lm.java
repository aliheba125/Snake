package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.appcompat.view.menu.ed;
import androidx.appcompat.view.menu.gf0;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class lm {
    public final ExecutorService a;
    public final Context b;
    public final mf0 c;

    public lm(Context context, mf0 mf0Var, ExecutorService executorService) {
        this.a = executorService;
        this.b = context;
        this.c = mf0Var;
    }

    public boolean a() {
        if (this.c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        g40 d = d();
        ed.a e = ed.e(this.b, this.c);
        e(e.a, d);
        c(e);
        return true;
    }

    public final boolean b() {
        if (((KeyguardManager) this.b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!qi0.f()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    public final void c(ed.a aVar) {
        Log.isLoggable("FirebaseMessaging", 3);
        ((NotificationManager) this.b.getSystemService("notification")).notify(aVar.b, aVar.c, aVar.a.b());
    }

    public final g40 d() {
        g40 e = g40.e(this.c.p("gcm.n.image"));
        if (e != null) {
            e.j(this.a);
        }
        return e;
    }

    public final void e(gf0.e eVar, g40 g40Var) {
        if (g40Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) jz0.b(g40Var.h(), 5L, TimeUnit.SECONDS);
            eVar.o(bitmap);
            eVar.x(new gf0.b().i(bitmap).h(null));
        } catch (InterruptedException unused) {
            g40Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to download image: ");
            sb.append(e.getCause());
        } catch (TimeoutException unused2) {
            g40Var.close();
        }
    }
}
