package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class cp extends dp implements sk {
    public static final AtomicReferenceFieldUpdater r = AtomicReferenceFieldUpdater.newUpdater(cp.class, Object.class, "_queue");
    public static final AtomicReferenceFieldUpdater s = AtomicReferenceFieldUpdater.newUpdater(cp.class, Object.class, "_delayed");
    public static final AtomicIntegerFieldUpdater t = AtomicIntegerFieldUpdater.newUpdater(cp.class, "_isCompleted");
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile Object _queue;

    public static final class a extends m01 {
    }

    private final boolean U() {
        return t.get(this) != 0;
    }

    @Override // androidx.appcompat.view.menu.nh
    public final void A(kh khVar, Runnable runnable) {
        S(runnable);
    }

    @Override // androidx.appcompat.view.menu.bp
    public long I() {
        my0 my0Var;
        if (super.I() == 0) {
            return 0L;
        }
        Object obj = r.get(this);
        if (obj != null) {
            if (!(obj instanceof da0)) {
                my0Var = fp.b;
                return obj == my0Var ? Long.MAX_VALUE : 0L;
            }
            if (!((da0) obj).g()) {
                return 0L;
            }
        }
        return Long.MAX_VALUE;
    }

    public final void Q() {
        my0 my0Var;
        my0 my0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = r;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = r;
                my0Var = fp.b;
                if (q.a(atomicReferenceFieldUpdater2, this, null, my0Var)) {
                    return;
                }
            } else {
                if (obj instanceof da0) {
                    ((da0) obj).d();
                    return;
                }
                my0Var2 = fp.b;
                if (obj == my0Var2) {
                    return;
                }
                da0 da0Var = new da0(8, true);
                z50.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                da0Var.a((Runnable) obj);
                if (q.a(r, this, obj, da0Var)) {
                    return;
                }
            }
        }
    }

    public final Runnable R() {
        my0 my0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = r;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof da0) {
                z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                da0 da0Var = (da0) obj;
                Object j = da0Var.j();
                if (j != da0.h) {
                    return (Runnable) j;
                }
                q.a(r, this, obj, da0Var.i());
            } else {
                my0Var = fp.b;
                if (obj == my0Var) {
                    return null;
                }
                if (q.a(r, this, obj, null)) {
                    z50.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (Runnable) obj;
                }
            }
        }
    }

    public void S(Runnable runnable) {
        if (T(runnable)) {
            P();
        } else {
            mj.u.S(runnable);
        }
    }

    public final boolean T(Runnable runnable) {
        my0 my0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = r;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (U()) {
                return false;
            }
            if (obj == null) {
                if (q.a(r, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof da0) {
                z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                da0 da0Var = (da0) obj;
                int a2 = da0Var.a(runnable);
                if (a2 == 0) {
                    return true;
                }
                if (a2 == 1) {
                    q.a(r, this, obj, da0Var.i());
                } else if (a2 == 2) {
                    return false;
                }
            } else {
                my0Var = fp.b;
                if (obj == my0Var) {
                    return false;
                }
                da0 da0Var2 = new da0(8, true);
                z50.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                da0Var2.a((Runnable) obj);
                da0Var2.a(runnable);
                if (q.a(r, this, obj, da0Var2)) {
                    return true;
                }
            }
        }
    }

    public boolean V() {
        my0 my0Var;
        if (!M()) {
            return false;
        }
        Object obj = r.get(this);
        if (obj != null) {
            if (obj instanceof da0) {
                return ((da0) obj).g();
            }
            my0Var = fp.b;
            if (obj != my0Var) {
                return false;
            }
        }
        return true;
    }

    public long W() {
        if (N()) {
            return 0L;
        }
        Runnable R = R();
        if (R == null) {
            return I();
        }
        R.run();
        return 0L;
    }

    public final void X() {
        w.a();
        System.nanoTime();
    }

    public final void Y() {
        r.set(this, null);
        s.set(this, null);
    }

    public final void Z(boolean z) {
        t.set(this, z ? 1 : 0);
    }

    @Override // androidx.appcompat.view.menu.bp
    public void shutdown() {
        j01.a.b();
        Z(true);
        Q();
        while (W() <= 0) {
        }
        X();
    }
}
