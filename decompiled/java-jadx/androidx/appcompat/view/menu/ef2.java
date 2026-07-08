package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class ef2 {
    public static ef2 e;
    public final Context a;
    public final ScheduledExecutorService b;
    public q92 c = new q92(this, null);
    public int d = 1;

    public ef2(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.b = scheduledExecutorService;
        this.a = context.getApplicationContext();
    }

    public static synchronized ef2 b(Context context) {
        ef2 ef2Var;
        synchronized (ef2.class) {
            try {
                if (e == null) {
                    zo1.a();
                    e = new ef2(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new le0("MessengerIpcClient"))));
                }
                ef2Var = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ef2Var;
    }

    public final zy0 c(int i, Bundle bundle) {
        return g(new sd2(f(), i, bundle));
    }

    public final zy0 d(int i, Bundle bundle) {
        return g(new ye2(f(), 1, bundle));
    }

    public final synchronized int f() {
        int i;
        i = this.d;
        this.d = i + 1;
        return i;
    }

    public final synchronized zy0 g(ne2 ne2Var) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                "Queueing ".concat(ne2Var.toString());
            }
            if (!this.c.g(ne2Var)) {
                q92 q92Var = new q92(this, null);
                this.c = q92Var;
                q92Var.g(ne2Var);
            }
        } catch (Throwable th) {
            throw th;
        }
        return ne2Var.b.a();
    }
}
