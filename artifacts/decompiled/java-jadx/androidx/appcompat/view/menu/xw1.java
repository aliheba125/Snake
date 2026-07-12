package androidx.appcompat.view.menu;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;

/* loaded from: classes.dex */
public final class xw1 extends Thread {
    public final Object m;
    public final BlockingQueue n;
    public boolean o = false;
    public final /* synthetic */ jw1 p;

    public xw1(jw1 jw1Var, String str, BlockingQueue blockingQueue) {
        this.p = jw1Var;
        mj0.i(str);
        mj0.i(blockingQueue);
        this.m = new Object();
        this.n = blockingQueue;
        setName(str);
    }

    public final void a() {
        synchronized (this.m) {
            this.m.notifyAll();
        }
    }

    public final void b(InterruptedException interruptedException) {
        this.p.l().L().b(getName() + " was interrupted", interruptedException);
    }

    public final void c() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        xw1 xw1Var;
        xw1 xw1Var2;
        obj = this.p.i;
        synchronized (obj) {
            try {
                if (!this.o) {
                    semaphore = this.p.j;
                    semaphore.release();
                    obj2 = this.p.i;
                    obj2.notifyAll();
                    xw1Var = this.p.c;
                    if (this == xw1Var) {
                        this.p.c = null;
                    } else {
                        xw1Var2 = this.p.d;
                        if (this == xw1Var2) {
                            this.p.d = null;
                        } else {
                            this.p.l().G().a("Current scheduler thread is neither worker nor network");
                        }
                    }
                    this.o = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Semaphore semaphore;
        Object obj;
        boolean z;
        boolean z2 = false;
        while (!z2) {
            try {
                semaphore = this.p.j;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                b(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zw1 zw1Var = (zw1) this.n.poll();
                if (zw1Var != null) {
                    Process.setThreadPriority(zw1Var.n ? threadPriority : 10);
                    zw1Var.run();
                } else {
                    synchronized (this.m) {
                        if (this.n.peek() == null) {
                            z = this.p.k;
                            if (!z) {
                                try {
                                    this.m.wait(30000L);
                                } catch (InterruptedException e2) {
                                    b(e2);
                                }
                            }
                        }
                    }
                    obj = this.p.i;
                    synchronized (obj) {
                        if (this.n.peek() == null) {
                            c();
                            c();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            c();
            throw th;
        }
    }
}
