package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class da0 {
    public static final a e = new a(null);
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(da0.class, Object.class, "_next");
    public static final AtomicLongFieldUpdater g = AtomicLongFieldUpdater.newUpdater(da0.class, "_state");
    public static final my0 h = new my0("REMOVE_FROZEN");
    private volatile Object _next;
    private volatile long _state;
    public final int a;
    public final boolean b;
    public final int c;
    public final AtomicReferenceArray d;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final int a(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j, int i) {
            return d(j, 1073741823L) | i;
        }

        public final long c(long j, int i) {
            return d(j, 1152921503533105152L) | (i << 30);
        }

        public final long d(long j, long j2) {
            return j & (~j2);
        }
    }

    public static final class b {
        public final int a;

        public b(int i) {
            this.a = i;
        }
    }

    public da0(int i, boolean z) {
        this.a = i;
        this.b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if ((i & i2) != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return e.a(j);
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.c;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.b && this.d.get(i2 & i3) != null) {
                int i4 = this.a;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    break;
                }
            } else if (g.compareAndSet(this, j, e.c(j, (i2 + 1) & 1073741823))) {
                this.d.set(i2 & i3, obj);
                da0 da0Var = this;
                while ((g.get(da0Var) & 1152921504606846976L) != 0 && (da0Var = da0Var.i().e(i2, obj)) != null) {
                }
                return 0;
            }
        }
    }

    public final da0 b(long j) {
        da0 da0Var = new da0(this.a * 2, this.b);
        int i = (int) (1073741823 & j);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.c;
            if ((i & i3) == (i2 & i3)) {
                g.set(da0Var, e.d(j, 1152921504606846976L));
                return da0Var;
            }
            Object obj = this.d.get(i3 & i);
            if (obj == null) {
                obj = new b(i);
            }
            da0Var.d.set(da0Var.c & i, obj);
            i++;
        }
    }

    public final da0 c(long j) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        while (true) {
            da0 da0Var = (da0) atomicReferenceFieldUpdater.get(this);
            if (da0Var != null) {
                return da0Var;
            }
            q.a(f, this, null, b(j));
        }
    }

    public final boolean d() {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        do {
            j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    public final da0 e(int i, Object obj) {
        Object obj2 = this.d.get(this.c & i);
        if (!(obj2 instanceof b) || ((b) obj2).a != i) {
            return null;
        }
        this.d.set(i & this.c, obj);
        return this;
    }

    public final int f() {
        long j = g.get(this);
        return (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j))) & 1073741823;
    }

    public final boolean g() {
        long j = g.get(this);
        return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    public final long h() {
        long j;
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        do {
            j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, j2));
        return j2;
    }

    public final da0 i() {
        return c(h());
    }

    public final Object j() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j) != 0) {
                return h;
            }
            int i = (int) (1073741823 & j);
            int i2 = this.c;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) == (i & i2)) {
                return null;
            }
            Object obj = this.d.get(i2 & i);
            if (obj == null) {
                if (this.b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i3 = (i + 1) & 1073741823;
                if (g.compareAndSet(this, j, e.b(j, i3))) {
                    this.d.set(this.c & i, null);
                    return obj;
                }
                if (this.b) {
                    da0 da0Var = this;
                    do {
                        da0Var = da0Var.k(i, i3);
                    } while (da0Var != null);
                    return obj;
                }
            }
        }
    }

    public final da0 k(int i, int i2) {
        long j;
        int i3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        do {
            j = atomicLongFieldUpdater.get(this);
            i3 = (int) (1073741823 & j);
            if ((1152921504606846976L & j) != 0) {
                return i();
            }
        } while (!g.compareAndSet(this, j, e.b(j, i2)));
        this.d.set(this.c & i3, null);
        return null;
    }
}
