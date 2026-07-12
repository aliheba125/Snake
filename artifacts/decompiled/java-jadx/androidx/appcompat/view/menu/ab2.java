package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ab2 implements ServiceConnection, pe2 {
    public final Map l = new HashMap();
    public int m = 2;
    public boolean n;
    public IBinder o;
    public final l92 p;
    public ComponentName q;
    public final /* synthetic */ ie2 r;

    public ab2(ie2 ie2Var, l92 l92Var) {
        this.r = ie2Var;
        this.p = l92Var;
    }

    public final int a() {
        return this.m;
    }

    public final ComponentName b() {
        return this.q;
    }

    public final IBinder c() {
        return this.o;
    }

    public final void d(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.l.put(serviceConnection, serviceConnection2);
    }

    public final void e(String str, Executor executor) {
        hf hfVar;
        Context context;
        Context context2;
        hf hfVar2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        StrictMode.VmPolicy.Builder permitUnsafeIntentLaunch;
        this.m = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (qi0.l()) {
            permitUnsafeIntentLaunch = new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch();
            StrictMode.setVmPolicy(permitUnsafeIntentLaunch.build());
        }
        try {
            ie2 ie2Var = this.r;
            hfVar = ie2Var.j;
            context = ie2Var.g;
            l92 l92Var = this.p;
            context2 = ie2Var.g;
            boolean d = hfVar.d(context, str, l92Var.c(context2), this, this.p.a(), executor);
            this.n = d;
            if (d) {
                handler = this.r.h;
                Message obtainMessage = handler.obtainMessage(1, this.p);
                handler2 = this.r.h;
                j = this.r.l;
                handler2.sendMessageDelayed(obtainMessage, j);
            } else {
                this.m = 2;
                try {
                    ie2 ie2Var2 = this.r;
                    hfVar2 = ie2Var2.j;
                    context3 = ie2Var2.g;
                    hfVar2.c(context3, this);
                } catch (IllegalArgumentException unused) {
                }
            }
            StrictMode.setVmPolicy(vmPolicy);
        } catch (Throwable th) {
            StrictMode.setVmPolicy(vmPolicy);
            throw th;
        }
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.l.remove(serviceConnection);
    }

    public final void g(String str) {
        Handler handler;
        hf hfVar;
        Context context;
        handler = this.r.h;
        handler.removeMessages(1, this.p);
        ie2 ie2Var = this.r;
        hfVar = ie2Var.j;
        context = ie2Var.g;
        hfVar.c(context, this);
        this.n = false;
        this.m = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.l.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.l.isEmpty();
    }

    public final boolean j() {
        return this.n;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.r.f;
        synchronized (hashMap) {
            try {
                handler = this.r.h;
                handler.removeMessages(1, this.p);
                this.o = iBinder;
                this.q = componentName;
                Iterator it = this.l.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.m = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.r.f;
        synchronized (hashMap) {
            try {
                handler = this.r.h;
                handler.removeMessages(1, this.p);
                this.o = null;
                this.q = componentName;
                Iterator it = this.l.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.m = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
