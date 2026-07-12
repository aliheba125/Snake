package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class q92 implements ServiceConnection {
    public lc2 n;
    public final /* synthetic */ ef2 q;
    public int l = 0;
    public final Messenger m = new Messenger(new er1(Looper.getMainLooper(), new Handler.Callback() { // from class: androidx.appcompat.view.menu.c32
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Received response to request: ");
                sb.append(i);
            }
            q92 q92Var = q92.this;
            synchronized (q92Var) {
                try {
                    ne2 ne2Var = (ne2) q92Var.p.get(i);
                    if (ne2Var == null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Received response for unknown request: ");
                        sb2.append(i);
                        return true;
                    }
                    q92Var.p.remove(i);
                    q92Var.f();
                    Bundle data = message.getData();
                    if (data.getBoolean("unsupported", false)) {
                        ne2Var.c(new se2(4, "Not supported by GmsCore", null));
                        return true;
                    }
                    ne2Var.a(data);
                    return true;
                } finally {
                }
            }
        }
    }));
    public final Queue o = new ArrayDeque();
    public final SparseArray p = new SparseArray();

    public /* synthetic */ q92(ef2 ef2Var, j72 j72Var) {
        this.q = ef2Var;
    }

    public final synchronized void a(int i, String str) {
        b(i, str, null);
    }

    public final synchronized void b(int i, String str, Throwable th) {
        Context context;
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                "Disconnected: ".concat(String.valueOf(str));
            }
            int i2 = this.l;
            if (i2 == 0) {
                throw new IllegalStateException();
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.l = 4;
                return;
            }
            Log.isLoggable("MessengerIpcClient", 2);
            this.l = 4;
            ef2 ef2Var = this.q;
            hf b = hf.b();
            context = ef2Var.a;
            b.c(context, this);
            se2 se2Var = new se2(i, str, th);
            Iterator it = this.o.iterator();
            while (it.hasNext()) {
                ((ne2) it.next()).c(se2Var);
            }
            this.o.clear();
            for (int i3 = 0; i3 < this.p.size(); i3++) {
                ((ne2) this.p.valueAt(i3)).c(se2Var);
            }
            this.p.clear();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void c() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.q.b;
        scheduledExecutorService.execute(new Runnable() { // from class: androidx.appcompat.view.menu.tw1
            @Override // java.lang.Runnable
            public final void run() {
                final ne2 ne2Var;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                while (true) {
                    final q92 q92Var = q92.this;
                    synchronized (q92Var) {
                        try {
                            if (q92Var.l != 2) {
                                return;
                            }
                            if (q92Var.o.isEmpty()) {
                                q92Var.f();
                                return;
                            }
                            ne2Var = (ne2) q92Var.o.poll();
                            q92Var.p.put(ne2Var.a, ne2Var);
                            scheduledExecutorService2 = q92Var.q.b;
                            scheduledExecutorService2.schedule(new Runnable() { // from class: androidx.appcompat.view.menu.f52
                                @Override // java.lang.Runnable
                                public final void run() {
                                    q92.this.e(ne2Var.a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        "Sending ".concat(String.valueOf(ne2Var));
                    }
                    ef2 ef2Var = q92Var.q;
                    Messenger messenger = q92Var.m;
                    int i = ne2Var.c;
                    context = ef2Var.a;
                    Message obtain = Message.obtain();
                    obtain.what = i;
                    obtain.arg1 = ne2Var.a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", ne2Var.b());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", ne2Var.d);
                    obtain.setData(bundle);
                    try {
                        q92Var.n.a(obtain);
                    } catch (RemoteException e) {
                        q92Var.a(2, e.getMessage());
                    }
                }
            }
        });
    }

    public final synchronized void d() {
        if (this.l == 1) {
            a(1, "Timed out while binding");
        }
    }

    public final synchronized void e(int i) {
        ne2 ne2Var = (ne2) this.p.get(i);
        if (ne2Var != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Timing out request: ");
            sb.append(i);
            this.p.remove(i);
            ne2Var.c(new se2(3, "Timed out waiting for response", null));
            f();
        }
    }

    public final synchronized void f() {
        Context context;
        if (this.l == 2 && this.o.isEmpty() && this.p.size() == 0) {
            Log.isLoggable("MessengerIpcClient", 2);
            this.l = 3;
            ef2 ef2Var = this.q;
            hf b = hf.b();
            context = ef2Var.a;
            b.c(context, this);
        }
    }

    public final synchronized boolean g(ne2 ne2Var) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        int i = this.l;
        if (i != 0) {
            if (i == 1) {
                this.o.add(ne2Var);
                return true;
            }
            if (i != 2) {
                return false;
            }
            this.o.add(ne2Var);
            c();
            return true;
        }
        this.o.add(ne2Var);
        mj0.l(this.l == 0);
        Log.isLoggable("MessengerIpcClient", 2);
        this.l = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            hf b = hf.b();
            context = this.q.a;
            if (b.a(context, intent, this, 1)) {
                scheduledExecutorService = this.q.b;
                scheduledExecutorService.schedule(new Runnable() { // from class: androidx.appcompat.view.menu.yy1
                    @Override // java.lang.Runnable
                    public final void run() {
                        q92.this.d();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                a(0, "Unable to bind to service");
            }
        } catch (SecurityException e) {
            b(0, "Unable to bind to service", e);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        Log.isLoggable("MessengerIpcClient", 2);
        scheduledExecutorService = this.q.b;
        scheduledExecutorService.execute(new Runnable() { // from class: androidx.appcompat.view.menu.mu1
            @Override // java.lang.Runnable
            public final void run() {
                q92 q92Var = q92.this;
                IBinder iBinder2 = iBinder;
                synchronized (q92Var) {
                    if (iBinder2 == null) {
                        q92Var.a(0, "Null service connection");
                        return;
                    }
                    try {
                        q92Var.n = new lc2(iBinder2);
                        q92Var.l = 2;
                        q92Var.c();
                    } catch (RemoteException e) {
                        q92Var.a(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ScheduledExecutorService scheduledExecutorService;
        Log.isLoggable("MessengerIpcClient", 2);
        scheduledExecutorService = this.q.b;
        scheduledExecutorService.execute(new Runnable() { // from class: androidx.appcompat.view.menu.b12
            @Override // java.lang.Runnable
            public final void run() {
                q92.this.a(2, "Service disconnected");
            }
        });
    }
}
