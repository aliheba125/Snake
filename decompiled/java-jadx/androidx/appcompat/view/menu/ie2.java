package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ie2 extends rx {
    public final HashMap f = new HashMap();
    public final Context g;
    public volatile Handler h;
    public final nd2 i;
    public final hf j;
    public final long k;
    public final long l;

    public ie2(Context context, Looper looper) {
        nd2 nd2Var = new nd2(this, null);
        this.i = nd2Var;
        this.g = context.getApplicationContext();
        this.h = new ty1(looper, nd2Var);
        this.j = hf.b();
        this.k = 5000L;
        this.l = 300000L;
    }

    @Override // androidx.appcompat.view.menu.rx
    public final void d(l92 l92Var, ServiceConnection serviceConnection, String str) {
        mj0.j(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f) {
            try {
                ab2 ab2Var = (ab2) this.f.get(l92Var);
                if (ab2Var == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: " + l92Var.toString());
                }
                if (!ab2Var.h(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + l92Var.toString());
                }
                ab2Var.f(serviceConnection, str);
                if (ab2Var.i()) {
                    this.h.sendMessageDelayed(this.h.obtainMessage(0, l92Var), this.k);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.rx
    public final boolean f(l92 l92Var, ServiceConnection serviceConnection, String str, Executor executor) {
        boolean j;
        mj0.j(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f) {
            try {
                ab2 ab2Var = (ab2) this.f.get(l92Var);
                if (ab2Var == null) {
                    ab2Var = new ab2(this, l92Var);
                    ab2Var.d(serviceConnection, serviceConnection, str);
                    ab2Var.e(str, executor);
                    this.f.put(l92Var, ab2Var);
                } else {
                    this.h.removeMessages(0, l92Var);
                    if (ab2Var.h(serviceConnection)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + l92Var.toString());
                    }
                    ab2Var.d(serviceConnection, serviceConnection, str);
                    int a = ab2Var.a();
                    if (a == 1) {
                        serviceConnection.onServiceConnected(ab2Var.b(), ab2Var.c());
                    } else if (a == 2) {
                        ab2Var.e(str, executor);
                    }
                }
                j = ab2Var.j();
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }
}
