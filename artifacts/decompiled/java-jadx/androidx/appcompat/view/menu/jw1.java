package androidx.appcompat.view.menu;

import android.content.Context;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class jw1 extends dz1 {
    public static final AtomicLong l = new AtomicLong(Long.MIN_VALUE);
    public xw1 c;
    public xw1 d;
    public final PriorityBlockingQueue e;
    public final BlockingQueue f;
    public final Thread.UncaughtExceptionHandler g;
    public final Thread.UncaughtExceptionHandler h;
    public final Object i;
    public final Semaphore j;
    public volatile boolean k;

    public jw1(cx1 cx1Var) {
        super(cx1Var);
        this.i = new Object();
        this.j = new Semaphore(2);
        this.e = new PriorityBlockingQueue();
        this.f = new LinkedBlockingQueue();
        this.g = new uw1(this, "Thread death: Uncaught exception on worker thread");
        this.h = new uw1(this, "Thread death: Uncaught exception on network thread");
    }

    public final Future B(Callable callable) {
        o();
        mj0.i(callable);
        zw1 zw1Var = new zw1(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.c) {
            zw1Var.run();
        } else {
            y(zw1Var);
        }
        return zw1Var;
    }

    public final void D(Runnable runnable) {
        o();
        mj0.i(runnable);
        y(new zw1(this, runnable, false, "Task exception on worker thread"));
    }

    public final void G(Runnable runnable) {
        o();
        mj0.i(runnable);
        y(new zw1(this, runnable, true, "Task exception on worker thread"));
    }

    public final boolean J() {
        return Thread.currentThread() == this.c;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final void k() {
        if (Thread.currentThread() != this.d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final void n() {
        if (Thread.currentThread() != this.c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // androidx.appcompat.view.menu.dz1
    public final boolean s() {
        return false;
    }

    public final Object v(AtomicReference atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            h().D(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                l().L().a("Interrupted waiting for " + str);
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            l().L().a("Timed out waiting for " + str);
        }
        return obj;
    }

    public final Future w(Callable callable) {
        o();
        mj0.i(callable);
        zw1 zw1Var = new zw1(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.c) {
            if (!this.e.isEmpty()) {
                l().L().a("Callable skipped the worker queue.");
            }
            zw1Var.run();
        } else {
            y(zw1Var);
        }
        return zw1Var;
    }

    public final void y(zw1 zw1Var) {
        synchronized (this.i) {
            try {
                this.e.add(zw1Var);
                xw1 xw1Var = this.c;
                if (xw1Var == null) {
                    xw1 xw1Var2 = new xw1(this, "Measurement Worker", this.e);
                    this.c = xw1Var2;
                    xw1Var2.setUncaughtExceptionHandler(this.g);
                    this.c.start();
                } else {
                    xw1Var.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void z(Runnable runnable) {
        o();
        mj0.i(runnable);
        zw1 zw1Var = new zw1(this, runnable, false, "Task exception on network thread");
        synchronized (this.i) {
            try {
                this.f.add(zw1Var);
                xw1 xw1Var = this.d;
                if (xw1Var == null) {
                    xw1 xw1Var2 = new xw1(this, "Measurement Network", this.f);
                    this.d = xw1Var2;
                    xw1Var2.setUncaughtExceptionHandler(this.h);
                    this.d.start();
                } else {
                    xw1Var.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
