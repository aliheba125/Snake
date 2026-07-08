package androidx.appcompat.view.menu;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class sh implements Executor, Closeable {
    public static final a t = new a(null);
    public static final AtomicLongFieldUpdater u = AtomicLongFieldUpdater.newUpdater(sh.class, "parkedWorkersStack");
    public static final AtomicLongFieldUpdater v = AtomicLongFieldUpdater.newUpdater(sh.class, "controlState");
    public static final AtomicIntegerFieldUpdater w = AtomicIntegerFieldUpdater.newUpdater(sh.class, "_isTerminated");
    public static final my0 x = new my0("NOT_IN_STACK");
    private volatile int _isTerminated;
    private volatile long controlState;
    public final int m;
    public final int n;
    public final long o;
    public final String p;
    private volatile long parkedWorkersStack;
    public final px q;
    public final px r;
    public final ap0 s;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.values().length];
            try {
                iArr[d.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[d.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public enum d {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public sh(int i, int i2, long j, String str) {
        this.m = i;
        this.n = i2;
        this.o = j;
        this.p = str;
        if (i < 1) {
            throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.q = new px();
        this.r = new px();
        this.s = new ap0((i + 1) * 2);
        this.controlState = i << 42;
        this._isTerminated = 0;
    }

    public static /* synthetic */ boolean A(sh shVar, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = v.get(shVar);
        }
        return shVar.z(j);
    }

    public static /* synthetic */ void j(sh shVar, Runnable runnable, cz0 cz0Var, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            cz0Var = kz0.g;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        shVar.i(runnable, cz0Var, z);
    }

    public final boolean B() {
        c o;
        do {
            o = o();
            if (o == null) {
                return false;
            }
        } while (!c.j().compareAndSet(o, -1, 0));
        LockSupport.unpark(o);
        return true;
    }

    public final boolean c(yy0 yy0Var) {
        return yy0Var.n.b() == 1 ? this.r.a(yy0Var) : this.q.a(yy0Var);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        t(10000L);
    }

    public final int d() {
        int a2;
        synchronized (this.s) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = v;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                a2 = un0.a(i - ((int) ((j & 4398044413952L) >> 21)), 0);
                if (a2 >= this.m) {
                    return 0;
                }
                if (i >= this.n) {
                    return 0;
                }
                int i2 = ((int) (v.get(this) & 2097151)) + 1;
                if (i2 <= 0 || this.s.b(i2) != null) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                c cVar = new c(this, i2);
                this.s.c(i2, cVar);
                if (i2 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                int i3 = a2 + 1;
                cVar.start();
                return i3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final yy0 e(Runnable runnable, cz0 cz0Var) {
        long a2 = kz0.f.a();
        if (!(runnable instanceof yy0)) {
            return new hz0(runnable, a2, cz0Var);
        }
        yy0 yy0Var = (yy0) runnable;
        yy0Var.m = a2;
        yy0Var.n = cz0Var;
        return yy0Var;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        j(this, runnable, null, false, 6, null);
    }

    public final c h() {
        Thread currentThread = Thread.currentThread();
        c cVar = currentThread instanceof c ? (c) currentThread : null;
        if (cVar == null || !z50.a(sh.this, this)) {
            return null;
        }
        return cVar;
    }

    public final void i(Runnable runnable, cz0 cz0Var, boolean z) {
        w.a();
        yy0 e = e(runnable, cz0Var);
        boolean z2 = false;
        boolean z3 = e.n.b() == 1;
        long addAndGet = z3 ? v.addAndGet(this, 2097152L) : 0L;
        c h = h();
        yy0 x2 = x(h, e, z);
        if (x2 != null && !c(x2)) {
            throw new RejectedExecutionException(this.p + " was terminated");
        }
        if (z && h != null) {
            z2 = true;
        }
        if (z3) {
            u(addAndGet, z2);
        } else {
            if (z2) {
                return;
            }
            w();
        }
    }

    public final boolean isTerminated() {
        return w.get(this) != 0;
    }

    public final int m(c cVar) {
        Object i = cVar.i();
        while (i != x) {
            if (i == null) {
                return 0;
            }
            c cVar2 = (c) i;
            int h = cVar2.h();
            if (h != 0) {
                return h;
            }
            i = cVar2.i();
        }
        return -1;
    }

    public final c o() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = u;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            c cVar = (c) this.s.b((int) (2097151 & j));
            if (cVar == null) {
                return null;
            }
            long j2 = (2097152 + j) & (-2097152);
            int m = m(cVar);
            if (m >= 0 && u.compareAndSet(this, j, m | j2)) {
                cVar.r(x);
                return cVar;
            }
        }
    }

    public final boolean p(c cVar) {
        long j;
        int h;
        if (cVar.i() != x) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = u;
        do {
            j = atomicLongFieldUpdater.get(this);
            h = cVar.h();
            cVar.r(this.s.b((int) (2097151 & j)));
        } while (!u.compareAndSet(this, j, ((2097152 + j) & (-2097152)) | h));
        return true;
    }

    public final void r(c cVar, int i, int i2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = u;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                i3 = i2 == 0 ? m(cVar) : i2;
            }
            if (i3 >= 0 && u.compareAndSet(this, j, j2 | i3)) {
                return;
            }
        }
    }

    public final void s(yy0 yy0Var) {
        try {
            yy0Var.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void t(long j) {
        int i;
        yy0 yy0Var;
        if (w.compareAndSet(this, 0, 1)) {
            c h = h();
            synchronized (this.s) {
                i = (int) (v.get(this) & 2097151);
            }
            if (1 <= i) {
                int i2 = 1;
                while (true) {
                    Object b2 = this.s.b(i2);
                    z50.b(b2);
                    c cVar = (c) b2;
                    if (cVar != h) {
                        while (cVar.isAlive()) {
                            LockSupport.unpark(cVar);
                            cVar.join(j);
                        }
                        cVar.m.f(this.r);
                    }
                    if (i2 == i) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.r.b();
            this.q.b();
            while (true) {
                if (h != null) {
                    yy0Var = h.g(true);
                    if (yy0Var != null) {
                        continue;
                        s(yy0Var);
                    }
                }
                yy0Var = (yy0) this.q.d();
                if (yy0Var == null && (yy0Var = (yy0) this.r.d()) == null) {
                    break;
                }
                s(yy0Var);
            }
            if (h != null) {
                h.u(d.TERMINATED);
            }
            u.set(this, 0L);
            v.set(this, 0L);
        }
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int a2 = this.s.a();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < a2; i6++) {
            c cVar = (c) this.s.b(i6);
            if (cVar != null) {
                int e = cVar.m.e();
                int i7 = b.a[cVar.o.ordinal()];
                if (i7 == 1) {
                    i3++;
                } else if (i7 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(e);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i7 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(e);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i7 == 4) {
                    i4++;
                    if (e > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(e);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i7 == 5) {
                    i5++;
                }
            }
        }
        long j = v.get(this);
        return this.p + '@' + hj.b(this) + "[Pool Size {core = " + this.m + ", max = " + this.n + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.q.c() + ", global blocking queue size = " + this.r.c() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.m - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }

    public final void u(long j, boolean z) {
        if (z || B() || z(j)) {
            return;
        }
        B();
    }

    public final void w() {
        if (B() || A(this, 0L, 1, null)) {
            return;
        }
        B();
    }

    public final yy0 x(c cVar, yy0 yy0Var, boolean z) {
        if (cVar == null || cVar.o == d.TERMINATED) {
            return yy0Var;
        }
        if (yy0Var.n.b() == 0 && cVar.o == d.BLOCKING) {
            return yy0Var;
        }
        cVar.s = true;
        return cVar.m.a(yy0Var, z);
    }

    public final boolean z(long j) {
        int a2;
        a2 = un0.a(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0);
        if (a2 < this.m) {
            int d2 = d();
            if (d2 == 1 && this.m > 1) {
                d();
            }
            if (d2 > 0) {
                return true;
            }
        }
        return false;
    }

    public final class c extends Thread {
        public static final AtomicIntegerFieldUpdater u = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");
        private volatile int indexInArray;
        public final oa1 m;
        public final bo0 n;
        private volatile Object nextParkedWorker;
        public d o;
        public long p;
        public long q;
        public int r;
        public boolean s;
        private volatile int workerCtl;

        public c() {
            setDaemon(true);
            this.m = new oa1();
            this.n = new bo0();
            this.o = d.DORMANT;
            this.nextParkedWorker = sh.x;
            this.r = qn0.m.b();
        }

        public static final AtomicIntegerFieldUpdater j() {
            return u;
        }

        public final void b(int i) {
            if (i == 0) {
                return;
            }
            sh.v.addAndGet(sh.this, -2097152L);
            if (this.o != d.TERMINATED) {
                this.o = d.DORMANT;
            }
        }

        public final void c(int i) {
            if (i != 0 && u(d.BLOCKING)) {
                sh.this.w();
            }
        }

        public final void d(yy0 yy0Var) {
            int b = yy0Var.n.b();
            k(b);
            c(b);
            sh.this.s(yy0Var);
            b(b);
        }

        public final yy0 e(boolean z) {
            yy0 o;
            yy0 o2;
            if (z) {
                boolean z2 = m(sh.this.m * 2) == 0;
                if (z2 && (o2 = o()) != null) {
                    return o2;
                }
                yy0 g = this.m.g();
                if (g != null) {
                    return g;
                }
                if (!z2 && (o = o()) != null) {
                    return o;
                }
            } else {
                yy0 o3 = o();
                if (o3 != null) {
                    return o3;
                }
            }
            return v(3);
        }

        public final yy0 f() {
            yy0 h = this.m.h();
            if (h != null) {
                return h;
            }
            yy0 yy0Var = (yy0) sh.this.r.d();
            return yy0Var == null ? v(1) : yy0Var;
        }

        public final yy0 g(boolean z) {
            return s() ? e(z) : f();
        }

        public final int h() {
            return this.indexInArray;
        }

        public final Object i() {
            return this.nextParkedWorker;
        }

        public final void k(int i) {
            this.p = 0L;
            if (this.o == d.PARKING) {
                this.o = d.BLOCKING;
            }
        }

        public final boolean l() {
            return this.nextParkedWorker != sh.x;
        }

        public final int m(int i) {
            int i2 = this.r;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.r = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
        }

        public final void n() {
            if (this.p == 0) {
                this.p = System.nanoTime() + sh.this.o;
            }
            LockSupport.parkNanos(sh.this.o);
            if (System.nanoTime() - this.p >= 0) {
                this.p = 0L;
                w();
            }
        }

        public final yy0 o() {
            if (m(2) == 0) {
                yy0 yy0Var = (yy0) sh.this.q.d();
                return yy0Var != null ? yy0Var : (yy0) sh.this.r.d();
            }
            yy0 yy0Var2 = (yy0) sh.this.r.d();
            return yy0Var2 != null ? yy0Var2 : (yy0) sh.this.q.d();
        }

        public final void p() {
            loop0: while (true) {
                boolean z = false;
                while (!sh.this.isTerminated() && this.o != d.TERMINATED) {
                    yy0 g = g(this.s);
                    if (g != null) {
                        this.q = 0L;
                        d(g);
                    } else {
                        this.s = false;
                        if (this.q == 0) {
                            t();
                        } else if (z) {
                            u(d.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.q);
                            this.q = 0L;
                        } else {
                            z = true;
                        }
                    }
                }
            }
            u(d.TERMINATED);
        }

        public final void q(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(sh.this.p);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void r(Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            p();
        }

        public final boolean s() {
            long j;
            if (this.o == d.CPU_ACQUIRED) {
                return true;
            }
            sh shVar = sh.this;
            AtomicLongFieldUpdater atomicLongFieldUpdater = sh.v;
            do {
                j = atomicLongFieldUpdater.get(shVar);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    return false;
                }
            } while (!sh.v.compareAndSet(shVar, j, j - 4398046511104L));
            this.o = d.CPU_ACQUIRED;
            return true;
        }

        public final void t() {
            if (!l()) {
                sh.this.p(this);
                return;
            }
            u.set(this, -1);
            while (l() && u.get(this) == -1 && !sh.this.isTerminated() && this.o != d.TERMINATED) {
                u(d.PARKING);
                Thread.interrupted();
                n();
            }
        }

        public final boolean u(d dVar) {
            d dVar2 = this.o;
            boolean z = dVar2 == d.CPU_ACQUIRED;
            if (z) {
                sh.v.addAndGet(sh.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.o = dVar;
            }
            return z;
        }

        public final yy0 v(int i) {
            int i2 = (int) (sh.v.get(sh.this) & 2097151);
            if (i2 < 2) {
                return null;
            }
            int m = m(i2);
            sh shVar = sh.this;
            long j = Long.MAX_VALUE;
            for (int i3 = 0; i3 < i2; i3++) {
                m++;
                if (m > i2) {
                    m = 1;
                }
                c cVar = (c) shVar.s.b(m);
                if (cVar != null && cVar != this) {
                    long n = cVar.m.n(i, this.n);
                    if (n == -1) {
                        bo0 bo0Var = this.n;
                        yy0 yy0Var = (yy0) bo0Var.m;
                        bo0Var.m = null;
                        return yy0Var;
                    }
                    if (n > 0) {
                        j = Math.min(j, n);
                    }
                }
            }
            if (j == Long.MAX_VALUE) {
                j = 0;
            }
            this.q = j;
            return null;
        }

        public final void w() {
            sh shVar = sh.this;
            synchronized (shVar.s) {
                try {
                    if (shVar.isTerminated()) {
                        return;
                    }
                    if (((int) (sh.v.get(shVar) & 2097151)) <= shVar.m) {
                        return;
                    }
                    if (u.compareAndSet(this, -1, 1)) {
                        int i = this.indexInArray;
                        q(0);
                        shVar.r(this, i, 0);
                        int andDecrement = (int) (sh.v.getAndDecrement(shVar) & 2097151);
                        if (andDecrement != i) {
                            Object b = shVar.s.b(andDecrement);
                            z50.b(b);
                            c cVar = (c) b;
                            shVar.s.c(i, cVar);
                            cVar.q(i);
                            shVar.r(cVar, andDecrement, i);
                        }
                        shVar.s.c(andDecrement, null);
                        r31 r31Var = r31.a;
                        this.o = d.TERMINATED;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public c(sh shVar, int i) {
            this();
            q(i);
        }
    }
}
