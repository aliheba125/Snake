package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class oa1 {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(oa1.class, Object.class, "lastScheduledTask");
    public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(oa1.class, "producerIndex");
    public static final AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(oa1.class, "consumerIndex");
    public static final AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(oa1.class, "blockingTasksInBuffer");
    public final AtomicReferenceArray a = new AtomicReferenceArray(PackageParser.PARSE_IS_PRIVILEGED);
    private volatile int blockingTasksInBuffer;
    private volatile int consumerIndex;
    private volatile Object lastScheduledTask;
    private volatile int producerIndex;

    public final yy0 a(yy0 yy0Var, boolean z) {
        if (z) {
            return b(yy0Var);
        }
        yy0 yy0Var2 = (yy0) b.getAndSet(this, yy0Var);
        if (yy0Var2 == null) {
            return null;
        }
        return b(yy0Var2);
    }

    public final yy0 b(yy0 yy0Var) {
        if (d() == 127) {
            return yy0Var;
        }
        if (yy0Var.n.b() == 1) {
            e.incrementAndGet(this);
        }
        int i = c.get(this) & 127;
        while (this.a.get(i) != null) {
            Thread.yield();
        }
        this.a.lazySet(i, yy0Var);
        c.incrementAndGet(this);
        return null;
    }

    public final void c(yy0 yy0Var) {
        if (yy0Var == null || yy0Var.n.b() != 1) {
            return;
        }
        e.decrementAndGet(this);
    }

    public final int d() {
        return c.get(this) - d.get(this);
    }

    public final int e() {
        return b.get(this) != null ? d() + 1 : d();
    }

    public final void f(px pxVar) {
        yy0 yy0Var = (yy0) b.getAndSet(this, null);
        if (yy0Var != null) {
            pxVar.a(yy0Var);
        }
        while (j(pxVar)) {
        }
    }

    public final yy0 g() {
        yy0 yy0Var = (yy0) b.getAndSet(this, null);
        return yy0Var == null ? i() : yy0Var;
    }

    public final yy0 h() {
        return k(true);
    }

    public final yy0 i() {
        yy0 yy0Var;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - c.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (yy0Var = (yy0) this.a.getAndSet(i2, null)) != null) {
                c(yy0Var);
                return yy0Var;
            }
        }
    }

    public final boolean j(px pxVar) {
        yy0 i = i();
        if (i == null) {
            return false;
        }
        pxVar.a(i);
        return true;
    }

    public final yy0 k(boolean z) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        yy0 yy0Var;
        do {
            atomicReferenceFieldUpdater = b;
            yy0Var = (yy0) atomicReferenceFieldUpdater.get(this);
            if (yy0Var != null) {
                if ((yy0Var.n.b() == 1) == z) {
                }
            }
            int i = d.get(this);
            int i2 = c.get(this);
            while (i != i2) {
                if (z && e.get(this) == 0) {
                    return null;
                }
                i2--;
                yy0 m = m(i2, z);
                if (m != null) {
                    return m;
                }
            }
            return null;
        } while (!q.a(atomicReferenceFieldUpdater, this, yy0Var, null));
        return yy0Var;
    }

    public final yy0 l(int i) {
        int i2 = d.get(this);
        int i3 = c.get(this);
        boolean z = i == 1;
        while (i2 != i3) {
            if (z && e.get(this) == 0) {
                return null;
            }
            int i4 = i2 + 1;
            yy0 m = m(i2, z);
            if (m != null) {
                return m;
            }
            i2 = i4;
        }
        return null;
    }

    public final yy0 m(int i, boolean z) {
        int i2 = i & 127;
        yy0 yy0Var = (yy0) this.a.get(i2);
        if (yy0Var != null) {
            if ((yy0Var.n.b() == 1) == z && cb.a(this.a, i2, yy0Var, null)) {
                if (z) {
                    e.decrementAndGet(this);
                }
                return yy0Var;
            }
        }
        return null;
    }

    public final long n(int i, bo0 bo0Var) {
        yy0 i2 = i == 3 ? i() : l(i);
        if (i2 == null) {
            return o(i, bo0Var);
        }
        bo0Var.m = i2;
        return -1L;
    }

    public final long o(int i, bo0 bo0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        yy0 yy0Var;
        do {
            atomicReferenceFieldUpdater = b;
            yy0Var = (yy0) atomicReferenceFieldUpdater.get(this);
            if (yy0Var == null) {
                return -2L;
            }
            if (((yy0Var.n.b() != 1 ? 2 : 1) & i) == 0) {
                return -2L;
            }
            long a = kz0.f.a() - yy0Var.m;
            long j = kz0.b;
            if (a < j) {
                return j - a;
            }
        } while (!q.a(atomicReferenceFieldUpdater, this, yy0Var, null));
        bo0Var.m = yy0Var;
        return -1L;
    }
}
