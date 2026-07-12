package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class v8 implements sa {
    public static final AtomicLongFieldUpdater p = AtomicLongFieldUpdater.newUpdater(v8.class, "sendersAndCloseStatus");
    public static final AtomicLongFieldUpdater q = AtomicLongFieldUpdater.newUpdater(v8.class, "receivers");
    public static final AtomicLongFieldUpdater r = AtomicLongFieldUpdater.newUpdater(v8.class, "bufferEnd");
    public static final AtomicLongFieldUpdater s = AtomicLongFieldUpdater.newUpdater(v8.class, "completedExpandBuffersAndPauseFlag");
    public static final AtomicReferenceFieldUpdater t = AtomicReferenceFieldUpdater.newUpdater(v8.class, Object.class, "sendSegment");
    public static final AtomicReferenceFieldUpdater u = AtomicReferenceFieldUpdater.newUpdater(v8.class, Object.class, "receiveSegment");
    public static final AtomicReferenceFieldUpdater v = AtomicReferenceFieldUpdater.newUpdater(v8.class, Object.class, "bufferEndSegment");
    public static final AtomicReferenceFieldUpdater w = AtomicReferenceFieldUpdater.newUpdater(v8.class, Object.class, "_closeCause");
    public static final AtomicReferenceFieldUpdater x = AtomicReferenceFieldUpdater.newUpdater(v8.class, Object.class, "closeHandler");
    private volatile Object _closeCause;
    private volatile long bufferEnd;
    private volatile Object bufferEndSegment;
    private volatile Object closeHandler;
    private volatile long completedExpandBuffersAndPauseFlag;
    public final int m;
    public final fw n;
    public final vw o;
    private volatile Object receiveSegment;
    private volatile long receivers;
    private volatile Object sendSegment;
    private volatile long sendersAndCloseStatus;

    public final class a implements za, m71 {
        public Object m;
        public y9 n;

        public a() {
            my0 my0Var;
            my0Var = w8.p;
            this.m = my0Var;
        }

        @Override // androidx.appcompat.view.menu.m71
        public void a(js0 js0Var, int i) {
            y9 y9Var = this.n;
            if (y9Var != null) {
                y9Var.a(js0Var, i);
            }
        }

        @Override // androidx.appcompat.view.menu.za
        public Object b(xg xgVar) {
            db dbVar;
            my0 my0Var;
            my0 my0Var2;
            my0 my0Var3;
            v8 v8Var = v8.this;
            db dbVar2 = (db) v8.u.get(v8Var);
            while (!v8Var.S()) {
                long andIncrement = v8.q.getAndIncrement(v8Var);
                int i = w8.b;
                long j = andIncrement / i;
                int i2 = (int) (andIncrement % i);
                if (dbVar2.o != j) {
                    db E = v8Var.E(j, dbVar2);
                    if (E == null) {
                        continue;
                    } else {
                        dbVar = E;
                    }
                } else {
                    dbVar = dbVar2;
                }
                Object u0 = v8Var.u0(dbVar, i2, andIncrement, null);
                my0Var = w8.m;
                if (u0 == my0Var) {
                    throw new IllegalStateException("unreachable".toString());
                }
                my0Var2 = w8.o;
                if (u0 != my0Var2) {
                    my0Var3 = w8.n;
                    if (u0 == my0Var3) {
                        return f(dbVar, i2, andIncrement, xgVar);
                    }
                    dbVar.b();
                    this.m = u0;
                    return r8.a(true);
                }
                if (andIncrement < v8Var.L()) {
                    dbVar.b();
                }
                dbVar2 = dbVar;
            }
            return r8.a(g());
        }

        public final Object f(db dbVar, int i, long j, xg xgVar) {
            xg b;
            my0 my0Var;
            my0 my0Var2;
            Boolean a;
            my0 my0Var3;
            my0 my0Var4;
            my0 my0Var5;
            Object c;
            v8 v8Var = v8.this;
            b = b60.b(xgVar);
            y9 a2 = aa.a(b);
            try {
                this.n = a2;
                Object u0 = v8Var.u0(dbVar, i, j, this);
                my0Var = w8.m;
                if (u0 == my0Var) {
                    v8Var.h0(this, dbVar, i);
                } else {
                    my0Var2 = w8.o;
                    fw fwVar = null;
                    if (u0 == my0Var2) {
                        if (j < v8Var.L()) {
                            dbVar.b();
                        }
                        db dbVar2 = (db) v8.u.get(v8Var);
                        while (true) {
                            if (v8Var.S()) {
                                h();
                                break;
                            }
                            long andIncrement = v8.q.getAndIncrement(v8Var);
                            int i2 = w8.b;
                            long j2 = andIncrement / i2;
                            int i3 = (int) (andIncrement % i2);
                            if (dbVar2.o != j2) {
                                db E = v8Var.E(j2, dbVar2);
                                if (E != null) {
                                    dbVar2 = E;
                                }
                            }
                            Object u02 = v8Var.u0(dbVar2, i3, andIncrement, this);
                            my0Var3 = w8.m;
                            if (u02 == my0Var3) {
                                v8Var.h0(this, dbVar2, i3);
                                break;
                            }
                            my0Var4 = w8.o;
                            if (u02 != my0Var4) {
                                my0Var5 = w8.n;
                                if (u02 == my0Var5) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                dbVar2.b();
                                this.m = u02;
                                this.n = null;
                                a = r8.a(true);
                                fw fwVar2 = v8Var.n;
                                if (fwVar2 != null) {
                                    fwVar = ng0.a(fwVar2, u02, a2.b());
                                }
                            } else if (andIncrement < v8Var.L()) {
                                dbVar2.b();
                            }
                        }
                    } else {
                        dbVar.b();
                        this.m = u0;
                        this.n = null;
                        a = r8.a(true);
                        fw fwVar3 = v8Var.n;
                        if (fwVar3 != null) {
                            fwVar = ng0.a(fwVar3, u0, a2.b());
                        }
                    }
                    a2.K(a, fwVar);
                }
                Object w = a2.w();
                c = c60.c();
                if (w == c) {
                    gj.c(xgVar);
                }
                return w;
            } catch (Throwable th) {
                a2.I();
                throw th;
            }
        }

        public final boolean g() {
            this.m = w8.z();
            Throwable H = v8.this.H();
            if (H == null) {
                return false;
            }
            throw mw0.a(H);
        }

        public final void h() {
            y9 y9Var = this.n;
            z50.b(y9Var);
            this.n = null;
            this.m = w8.z();
            Throwable H = v8.this.H();
            if (H == null) {
                np0.a aVar = np0.m;
                y9Var.n(np0.a(Boolean.FALSE));
            } else {
                np0.a aVar2 = np0.m;
                y9Var.n(np0.a(op0.a(H)));
            }
        }

        public final boolean i(Object obj) {
            boolean B;
            y9 y9Var = this.n;
            z50.b(y9Var);
            this.n = null;
            this.m = obj;
            Boolean bool = Boolean.TRUE;
            fw fwVar = v8.this.n;
            B = w8.B(y9Var, bool, fwVar != null ? ng0.a(fwVar, obj, y9Var.b()) : null);
            return B;
        }

        public final void j() {
            y9 y9Var = this.n;
            z50.b(y9Var);
            this.n = null;
            this.m = w8.z();
            Throwable H = v8.this.H();
            if (H == null) {
                np0.a aVar = np0.m;
                y9Var.n(np0.a(Boolean.FALSE));
            } else {
                np0.a aVar2 = np0.m;
                y9Var.n(np0.a(op0.a(H)));
            }
        }

        @Override // androidx.appcompat.view.menu.za
        public Object next() {
            my0 my0Var;
            my0 my0Var2;
            Object obj = this.m;
            my0Var = w8.p;
            if (obj == my0Var) {
                throw new IllegalStateException("`hasNext()` has not been invoked".toString());
            }
            my0Var2 = w8.p;
            this.m = my0Var2;
            if (obj != w8.z()) {
                return obj;
            }
            throw mw0.a(v8.this.I());
        }
    }

    public static final class b extends g80 implements vw {
        public b() {
            super(3);
        }
    }

    public v8(int i, fw fwVar) {
        long A;
        my0 my0Var;
        this.m = i;
        this.n = fwVar;
        if (i < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i + ", should be >=0").toString());
        }
        A = w8.A(i);
        this.bufferEnd = A;
        this.completedExpandBuffersAndPauseFlag = G();
        db dbVar = new db(0L, null, this, 3);
        this.sendSegment = dbVar;
        this.receiveSegment = dbVar;
        if (W()) {
            dbVar = w8.a;
            z50.c(dbVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment = dbVar;
        this.o = fwVar != null ? new b() : null;
        my0Var = w8.s;
        this._closeCause = my0Var;
    }

    public static /* synthetic */ void O(v8 v8Var, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i & 1) != 0) {
            j = 1;
        }
        v8Var.N(j);
    }

    public static /* synthetic */ Object n0(v8 v8Var, Object obj, xg xgVar) {
        db dbVar;
        Object c;
        Object c2;
        Object c3;
        Object c4;
        db dbVar2 = (db) t.get(v8Var);
        while (true) {
            long andIncrement = p.getAndIncrement(v8Var);
            long j = andIncrement & 1152921504606846975L;
            boolean U = v8Var.U(andIncrement);
            int i = w8.b;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (dbVar2.o != j2) {
                db F = v8Var.F(j2, dbVar2);
                if (F != null) {
                    dbVar = F;
                } else if (U) {
                    Object d0 = v8Var.d0(obj, xgVar);
                    c4 = c60.c();
                    if (d0 == c4) {
                        return d0;
                    }
                }
            } else {
                dbVar = dbVar2;
            }
            int w0 = v8Var.w0(dbVar, i2, obj, j, null, U);
            if (w0 == 0) {
                dbVar.b();
                break;
            }
            if (w0 == 1) {
                break;
            }
            if (w0 != 2) {
                if (w0 == 3) {
                    Object o0 = v8Var.o0(dbVar, i2, obj, j, xgVar);
                    c2 = c60.c();
                    if (o0 == c2) {
                        return o0;
                    }
                } else if (w0 != 4) {
                    if (w0 == 5) {
                        dbVar.b();
                    }
                    dbVar2 = dbVar;
                } else {
                    if (j < v8Var.J()) {
                        dbVar.b();
                    }
                    Object d02 = v8Var.d0(obj, xgVar);
                    c3 = c60.c();
                    if (d02 == c3) {
                        return d02;
                    }
                }
            } else if (U) {
                dbVar.p();
                Object d03 = v8Var.d0(obj, xgVar);
                c = c60.c();
                if (d03 == c) {
                    return d03;
                }
            }
        }
        return r31.a;
    }

    @Override // androidx.appcompat.view.menu.ls0
    public boolean A() {
        return U(p.get(this));
    }

    public final void A0(long j) {
        int i;
        long j2;
        long v2;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long v3;
        long j3;
        long v4;
        if (W()) {
            return;
        }
        while (G() <= j) {
        }
        i = w8.c;
        for (int i2 = 0; i2 < i; i2++) {
            long G = G();
            if (G == (4611686018427387903L & s.get(this)) && G == G()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = s;
        do {
            j2 = atomicLongFieldUpdater2.get(this);
            v2 = w8.v(j2 & 4611686018427387903L, true);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j2, v2));
        while (true) {
            long G2 = G();
            atomicLongFieldUpdater = s;
            long j4 = atomicLongFieldUpdater.get(this);
            long j5 = j4 & 4611686018427387903L;
            boolean z = (4611686018427387904L & j4) != 0;
            if (G2 == j5 && G2 == G()) {
                break;
            } else if (!z) {
                v3 = w8.v(j5, true);
                atomicLongFieldUpdater.compareAndSet(this, j4, v3);
            }
        }
        do {
            j3 = atomicLongFieldUpdater.get(this);
            v4 = w8.v(j3 & 4611686018427387903L, false);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j3, v4));
    }

    public final void B(long j) {
        my0 my0Var;
        k31 d;
        db dbVar = (db) u.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = q;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(this.m + j2, G())) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j2, j2 + 1)) {
                int i = w8.b;
                long j3 = j2 / i;
                int i2 = (int) (j2 % i);
                if (dbVar.o != j3) {
                    db E = E(j3, dbVar);
                    if (E == null) {
                        continue;
                    } else {
                        dbVar = E;
                    }
                }
                Object u0 = u0(dbVar, i2, j2, null);
                my0Var = w8.o;
                if (u0 != my0Var) {
                    dbVar.b();
                    fw fwVar = this.n;
                    if (fwVar != null && (d = ng0.d(fwVar, u0, null, 2, null)) != null) {
                        throw d;
                    }
                } else if (j2 < L()) {
                    dbVar.b();
                }
            }
        }
    }

    public final void C() {
        if (W()) {
            return;
        }
        db dbVar = (db) v.get(this);
        while (true) {
            long andIncrement = r.getAndIncrement(this);
            int i = w8.b;
            long j = andIncrement / i;
            if (L() <= andIncrement) {
                if (dbVar.o < j && dbVar.e() != null) {
                    b0(j, dbVar);
                }
                O(this, 0L, 1, null);
                return;
            }
            if (dbVar.o != j) {
                db D = D(j, dbVar, andIncrement);
                if (D == null) {
                    continue;
                } else {
                    dbVar = D;
                }
            }
            if (s0(dbVar, (int) (andIncrement % i), andIncrement)) {
                O(this, 0L, 1, null);
                return;
            }
            O(this, 0L, 1, null);
        }
    }

    public final db D(long j, db dbVar, long j2) {
        Object c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = v;
        tw twVar = (tw) w8.y();
        loop0: while (true) {
            c = ye.c(dbVar, j, twVar);
            if (!ks0.c(c)) {
                js0 b2 = ks0.b(c);
                while (true) {
                    js0 js0Var = (js0) atomicReferenceFieldUpdater.get(this);
                    if (js0Var.o >= b2.o) {
                        break loop0;
                    }
                    if (!b2.q()) {
                        break;
                    }
                    if (q.a(atomicReferenceFieldUpdater, this, js0Var, b2)) {
                        if (js0Var.m()) {
                            js0Var.k();
                        }
                    } else if (b2.m()) {
                        b2.k();
                    }
                }
            } else {
                break;
            }
        }
        if (ks0.c(c)) {
            z();
            b0(j, dbVar);
            O(this, 0L, 1, null);
            return null;
        }
        db dbVar2 = (db) ks0.b(c);
        long j3 = dbVar2.o;
        if (j3 <= j) {
            return dbVar2;
        }
        int i = w8.b;
        if (r.compareAndSet(this, j2 + 1, i * j3)) {
            N((dbVar2.o * i) - j2);
            return null;
        }
        O(this, 0L, 1, null);
        return null;
    }

    public final db E(long j, db dbVar) {
        Object c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = u;
        tw twVar = (tw) w8.y();
        loop0: while (true) {
            c = ye.c(dbVar, j, twVar);
            if (!ks0.c(c)) {
                js0 b2 = ks0.b(c);
                while (true) {
                    js0 js0Var = (js0) atomicReferenceFieldUpdater.get(this);
                    if (js0Var.o >= b2.o) {
                        break loop0;
                    }
                    if (!b2.q()) {
                        break;
                    }
                    if (q.a(atomicReferenceFieldUpdater, this, js0Var, b2)) {
                        if (js0Var.m()) {
                            js0Var.k();
                        }
                    } else if (b2.m()) {
                        b2.k();
                    }
                }
            } else {
                break;
            }
        }
        if (ks0.c(c)) {
            z();
            if (dbVar.o * w8.b >= L()) {
                return null;
            }
            dbVar.b();
            return null;
        }
        db dbVar2 = (db) ks0.b(c);
        if (!W() && j <= G() / w8.b) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = v;
            while (true) {
                js0 js0Var2 = (js0) atomicReferenceFieldUpdater2.get(this);
                if (js0Var2.o >= dbVar2.o || !dbVar2.q()) {
                    break;
                }
                if (q.a(atomicReferenceFieldUpdater2, this, js0Var2, dbVar2)) {
                    if (js0Var2.m()) {
                        js0Var2.k();
                    }
                } else if (dbVar2.m()) {
                    dbVar2.k();
                }
            }
        }
        long j2 = dbVar2.o;
        if (j2 <= j) {
            return dbVar2;
        }
        int i = w8.b;
        y0(j2 * i);
        if (dbVar2.o * i >= L()) {
            return null;
        }
        dbVar2.b();
        return null;
    }

    public final db F(long j, db dbVar) {
        Object c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = t;
        tw twVar = (tw) w8.y();
        loop0: while (true) {
            c = ye.c(dbVar, j, twVar);
            if (!ks0.c(c)) {
                js0 b2 = ks0.b(c);
                while (true) {
                    js0 js0Var = (js0) atomicReferenceFieldUpdater.get(this);
                    if (js0Var.o >= b2.o) {
                        break loop0;
                    }
                    if (!b2.q()) {
                        break;
                    }
                    if (q.a(atomicReferenceFieldUpdater, this, js0Var, b2)) {
                        if (js0Var.m()) {
                            js0Var.k();
                        }
                    } else if (b2.m()) {
                        b2.k();
                    }
                }
            } else {
                break;
            }
        }
        if (ks0.c(c)) {
            z();
            if (dbVar.o * w8.b >= J()) {
                return null;
            }
            dbVar.b();
            return null;
        }
        db dbVar2 = (db) ks0.b(c);
        long j2 = dbVar2.o;
        if (j2 <= j) {
            return dbVar2;
        }
        int i = w8.b;
        z0(j2 * i);
        if (dbVar2.o * i >= J()) {
            return null;
        }
        dbVar2.b();
        return null;
    }

    public final long G() {
        return r.get(this);
    }

    public final Throwable H() {
        return (Throwable) w.get(this);
    }

    public final Throwable I() {
        Throwable H = H();
        return H == null ? new hc("Channel was closed") : H;
    }

    public final long J() {
        return q.get(this);
    }

    public final Throwable K() {
        Throwable H = H();
        return H == null ? new ic("Channel was closed") : H;
    }

    public final long L() {
        return p.get(this) & 1152921504606846975L;
    }

    public final boolean M() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = u;
            db dbVar = (db) atomicReferenceFieldUpdater.get(this);
            long J = J();
            if (L() <= J) {
                return false;
            }
            int i = w8.b;
            long j = J / i;
            if (dbVar.o == j || (dbVar = E(j, dbVar)) != null) {
                dbVar.b();
                if (Q(dbVar, (int) (J % i), J)) {
                    return true;
                }
                q.compareAndSet(this, J, J + 1);
            } else if (((db) atomicReferenceFieldUpdater.get(this)).o < j) {
                return false;
            }
        }
    }

    public final void N(long j) {
        if ((s.addAndGet(this, j) & 4611686018427387904L) != 0) {
            while ((s.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    public final void P() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = x;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!q.a(atomicReferenceFieldUpdater, this, obj, obj == null ? w8.q : w8.r));
        if (obj == null) {
            return;
        }
        ((fw) obj).i(H());
    }

    public final boolean Q(db dbVar, int i, long j) {
        Object w2;
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        my0 my0Var6;
        my0 my0Var7;
        do {
            w2 = dbVar.w(i);
            if (w2 != null) {
                my0Var2 = w8.e;
                if (w2 != my0Var2) {
                    if (w2 == w8.d) {
                        return true;
                    }
                    my0Var3 = w8.j;
                    if (w2 == my0Var3 || w2 == w8.z()) {
                        return false;
                    }
                    my0Var4 = w8.i;
                    if (w2 == my0Var4) {
                        return false;
                    }
                    my0Var5 = w8.h;
                    if (w2 == my0Var5) {
                        return false;
                    }
                    my0Var6 = w8.g;
                    if (w2 == my0Var6) {
                        return true;
                    }
                    my0Var7 = w8.f;
                    return w2 != my0Var7 && j == J();
                }
            }
            my0Var = w8.h;
        } while (!dbVar.r(i, w2, my0Var));
        C();
        return false;
    }

    public final boolean R(long j, boolean z) {
        int i = (int) (j >> 60);
        if (i == 0 || i == 1) {
            return false;
        }
        if (i == 2) {
            x(j & 1152921504606846975L);
            if (z && M()) {
                return false;
            }
        } else {
            if (i != 3) {
                throw new IllegalStateException(("unexpected close status: " + i).toString());
            }
            w(j & 1152921504606846975L);
        }
        return true;
    }

    public boolean S() {
        return T(p.get(this));
    }

    public final boolean T(long j) {
        return R(j, true);
    }

    public final boolean U(long j) {
        return R(j, false);
    }

    public boolean V() {
        return false;
    }

    public final boolean W() {
        long G = G();
        return G == 0 || G == Long.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        r8 = (androidx.appcompat.view.menu.db) r8.g();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long X(db dbVar) {
        my0 my0Var;
        do {
            int i = w8.b;
            while (true) {
                i--;
                if (-1 >= i) {
                    break;
                }
                long j = (dbVar.o * w8.b) + i;
                if (j < J()) {
                    return -1L;
                }
                while (true) {
                    Object w2 = dbVar.w(i);
                    if (w2 != null) {
                        my0Var = w8.e;
                        if (w2 != my0Var) {
                            if (w2 == w8.d) {
                                return j;
                            }
                        }
                    }
                    if (dbVar.r(i, w2, w8.z())) {
                        dbVar.p();
                        break;
                    }
                }
            }
        } while (dbVar != null);
        return -1L;
    }

    public final void Y() {
        long j;
        long w2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (((int) (j >> 60)) != 0) {
                return;
            } else {
                w2 = w8.w(1152921504606846975L & j, 1);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, w2));
    }

    public final void Z() {
        long j;
        long w2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        do {
            j = atomicLongFieldUpdater.get(this);
            w2 = w8.w(1152921504606846975L & j, 3);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, w2));
    }

    public final void a0() {
        long j;
        long w2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        do {
            j = atomicLongFieldUpdater.get(this);
            int i = (int) (j >> 60);
            if (i == 0) {
                w2 = w8.w(j & 1152921504606846975L, 2);
            } else if (i != 1) {
                return;
            } else {
                w2 = w8.w(j & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, w2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b0(long j, db dbVar) {
        db dbVar2;
        db dbVar3;
        while (dbVar.o < j && (dbVar3 = (db) dbVar.e()) != null) {
            dbVar = dbVar3;
        }
        while (true) {
            if (!dbVar.h() || (dbVar2 = (db) dbVar.e()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = v;
                while (true) {
                    js0 js0Var = (js0) atomicReferenceFieldUpdater.get(this);
                    if (js0Var.o >= dbVar.o) {
                        return;
                    }
                    if (!dbVar.q()) {
                        break;
                    }
                    if (q.a(atomicReferenceFieldUpdater, this, js0Var, dbVar)) {
                        if (js0Var.m()) {
                            js0Var.k();
                            return;
                        }
                        return;
                    } else if (dbVar.m()) {
                        dbVar.k();
                    }
                }
            } else {
                dbVar = dbVar2;
            }
        }
    }

    public void c0() {
    }

    public final Object d0(Object obj, xg xgVar) {
        xg b2;
        Object c;
        Object c2;
        k31 d;
        b2 = b60.b(xgVar);
        y9 y9Var = new y9(b2, 1);
        y9Var.z();
        fw fwVar = this.n;
        if (fwVar == null || (d = ng0.d(fwVar, obj, null, 2, null)) == null) {
            Throwable K = K();
            np0.a aVar = np0.m;
            y9Var.n(np0.a(op0.a(K)));
        } else {
            pp.a(d, K());
            np0.a aVar2 = np0.m;
            y9Var.n(np0.a(op0.a(d)));
        }
        Object w2 = y9Var.w();
        c = c60.c();
        if (w2 == c) {
            gj.c(xgVar);
        }
        c2 = c60.c();
        return w2 == c2 ? w2 : r31.a;
    }

    @Override // androidx.appcompat.view.menu.vn0
    public final void e(CancellationException cancellationException) {
        r(cancellationException);
    }

    public final void e0(Object obj, x9 x9Var) {
        fw fwVar = this.n;
        if (fwVar != null) {
            ng0.b(fwVar, obj, x9Var.b());
        }
        Throwable K = K();
        np0.a aVar = np0.m;
        x9Var.n(np0.a(op0.a(K)));
    }

    public void f0() {
    }

    public void g0() {
    }

    public final void h0(m71 m71Var, db dbVar, int i) {
        g0();
        m71Var.a(dbVar, i);
    }

    public final void i0(m71 m71Var, db dbVar, int i) {
        m71Var.a(dbVar, i + w8.b);
    }

    @Override // androidx.appcompat.view.menu.vn0
    public za iterator() {
        return new a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x00b3, code lost:
    
        r12 = (androidx.appcompat.view.menu.db) r12.g();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j0(db dbVar) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        fw fwVar = this.n;
        k31 k31Var = null;
        Object b2 = x40.b(null, 1, null);
        loop0: do {
            int i = w8.b - 1;
            while (true) {
                if (-1 >= i) {
                    break;
                }
                long j = (dbVar.o * w8.b) + i;
                while (true) {
                    Object w2 = dbVar.w(i);
                    my0Var = w8.i;
                    if (w2 == my0Var) {
                        break loop0;
                    }
                    if (w2 != w8.d) {
                        my0Var2 = w8.e;
                        if (w2 == my0Var2 || w2 == null) {
                            if (dbVar.r(i, w2, w8.z())) {
                                dbVar.p();
                                break;
                            }
                        } else if (!(w2 instanceof m71) && !(w2 instanceof n71)) {
                            my0Var3 = w8.g;
                            if (w2 == my0Var3) {
                                break loop0;
                            }
                            my0Var4 = w8.f;
                            if (w2 == my0Var4) {
                                break loop0;
                            }
                            my0Var5 = w8.g;
                            if (w2 != my0Var5) {
                                break;
                            }
                        } else {
                            if (j < J()) {
                                break loop0;
                            }
                            m71 m71Var = w2 instanceof n71 ? ((n71) w2).a : (m71) w2;
                            if (dbVar.r(i, w2, w8.z())) {
                                if (fwVar != null) {
                                    k31Var = ng0.c(fwVar, dbVar.v(i), k31Var);
                                }
                                b2 = x40.c(b2, m71Var);
                                dbVar.s(i);
                                dbVar.p();
                            }
                        }
                    } else {
                        if (j < J()) {
                            break loop0;
                        }
                        if (dbVar.r(i, w2, w8.z())) {
                            if (fwVar != null) {
                                k31Var = ng0.c(fwVar, dbVar.v(i), k31Var);
                            }
                            dbVar.s(i);
                            dbVar.p();
                        }
                    }
                }
                i--;
            }
        } while (dbVar != null);
        if (b2 != null) {
            if (b2 instanceof ArrayList) {
                z50.c(b2, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                ArrayList arrayList = (ArrayList) b2;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    l0((m71) arrayList.get(size));
                }
            } else {
                l0((m71) b2);
            }
        }
        if (k31Var != null) {
            throw k31Var;
        }
    }

    @Override // androidx.appcompat.view.menu.ls0
    public boolean k(Throwable th) {
        return u(th, false);
    }

    public final void k0(m71 m71Var) {
        m0(m71Var, true);
    }

    public final void l0(m71 m71Var) {
        m0(m71Var, false);
    }

    public final void m0(m71 m71Var, boolean z) {
        if (m71Var instanceof x9) {
            xg xgVar = (xg) m71Var;
            np0.a aVar = np0.m;
            xgVar.n(np0.a(op0.a(z ? I() : K())));
        } else {
            if (m71Var instanceof a) {
                ((a) m71Var).j();
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + m71Var).toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0125 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object o0(db dbVar, int i, Object obj, long j, xg xgVar) {
        xg b2;
        Object a2;
        Object w2;
        Object c;
        Object c2;
        db dbVar2;
        b2 = b60.b(xgVar);
        y9 a3 = aa.a(b2);
        try {
            int w0 = w0(dbVar, i, obj, j, a3, false);
            if (w0 == 0) {
                dbVar.b();
                np0.a aVar = np0.m;
                a2 = np0.a(r31.a);
            } else {
                if (w0 != 1) {
                    if (w0 != 2) {
                        if (w0 != 4) {
                            if (w0 != 5) {
                                throw new IllegalStateException("unexpected".toString());
                            }
                            dbVar.b();
                            db dbVar3 = (db) t.get(this);
                            while (true) {
                                long andIncrement = p.getAndIncrement(this);
                                long j2 = andIncrement & 1152921504606846975L;
                                boolean U = U(andIncrement);
                                int i2 = w8.b;
                                long j3 = j2 / i2;
                                int i3 = (int) (j2 % i2);
                                if (dbVar3.o != j3) {
                                    db F = F(j3, dbVar3);
                                    if (F != null) {
                                        dbVar2 = F;
                                    } else if (U) {
                                        break;
                                    }
                                } else {
                                    dbVar2 = dbVar3;
                                }
                                db dbVar4 = dbVar2;
                                int w02 = w0(dbVar2, i3, obj, j2, a3, U);
                                if (w02 == 0) {
                                    dbVar4.b();
                                    np0.a aVar2 = np0.m;
                                    a2 = np0.a(r31.a);
                                    break;
                                }
                                if (w02 == 1) {
                                    np0.a aVar3 = np0.m;
                                    a2 = np0.a(r31.a);
                                    break;
                                }
                                if (w02 != 2) {
                                    if (w02 == 3) {
                                        throw new IllegalStateException("unexpected".toString());
                                    }
                                    if (w02 != 4) {
                                        if (w02 == 5) {
                                            dbVar4.b();
                                        }
                                        dbVar3 = dbVar4;
                                    } else if (j2 < J()) {
                                        dbVar4.b();
                                    }
                                } else if (U) {
                                    dbVar4.p();
                                } else {
                                    y9 y9Var = a3 instanceof m71 ? a3 : null;
                                    if (y9Var != null) {
                                        i0(y9Var, dbVar4, i3);
                                    }
                                }
                            }
                        } else if (j < J()) {
                            dbVar.b();
                        }
                        e0(obj, a3);
                    } else {
                        i0(a3, dbVar, i);
                    }
                    w2 = a3.w();
                    c = c60.c();
                    if (w2 == c) {
                        gj.c(xgVar);
                    }
                    c2 = c60.c();
                    return w2 != c2 ? w2 : r31.a;
                }
                np0.a aVar4 = np0.m;
                a2 = np0.a(r31.a);
            }
            a3.n(a2);
            w2 = a3.w();
            c = c60.c();
            if (w2 == c) {
            }
            c2 = c60.c();
            if (w2 != c2) {
            }
        } catch (Throwable th) {
            a3.I();
            throw th;
        }
    }

    public final boolean p(long j) {
        return j < G() || j < J() + ((long) this.m);
    }

    public final boolean p0(long j) {
        if (U(j)) {
            return false;
        }
        return !p(j & 1152921504606846975L);
    }

    @Override // androidx.appcompat.view.menu.ls0
    public Object q(Object obj, xg xgVar) {
        return n0(this, obj, xgVar);
    }

    public final boolean q0(Object obj, Object obj2) {
        boolean B;
        if (obj instanceof a) {
            z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).i(obj2);
        }
        if (!(obj instanceof x9)) {
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
        z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
        x9 x9Var = (x9) obj;
        fw fwVar = this.n;
        B = w8.B(x9Var, obj2, fwVar != null ? ng0.a(fwVar, obj2, x9Var.b()) : null);
        return B;
    }

    public boolean r(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return u(th, true);
    }

    public final boolean r0(Object obj, db dbVar, int i) {
        if (obj instanceof x9) {
            z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return w8.C((x9) obj, r31.a, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    public final void s(db dbVar, long j) {
        my0 my0Var;
        Object b2 = x40.b(null, 1, null);
        loop0: while (dbVar != null) {
            for (int i = w8.b - 1; -1 < i; i--) {
                if ((dbVar.o * w8.b) + i < j) {
                    break loop0;
                }
                while (true) {
                    Object w2 = dbVar.w(i);
                    if (w2 != null) {
                        my0Var = w8.e;
                        if (w2 != my0Var) {
                            if (!(w2 instanceof n71)) {
                                if (!(w2 instanceof m71)) {
                                    break;
                                }
                                if (dbVar.r(i, w2, w8.z())) {
                                    b2 = x40.c(b2, w2);
                                    dbVar.x(i, true);
                                    break;
                                }
                            } else {
                                if (dbVar.r(i, w2, w8.z())) {
                                    b2 = x40.c(b2, ((n71) w2).a);
                                    dbVar.x(i, true);
                                    break;
                                }
                            }
                        }
                    }
                    if (dbVar.r(i, w2, w8.z())) {
                        dbVar.p();
                        break;
                    }
                }
            }
            dbVar = (db) dbVar.g();
        }
        if (b2 != null) {
            if (!(b2 instanceof ArrayList)) {
                k0((m71) b2);
                return;
            }
            z50.c(b2, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) b2;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                k0((m71) arrayList.get(size));
            }
        }
    }

    public final boolean s0(db dbVar, int i, long j) {
        my0 my0Var;
        my0 my0Var2;
        Object w2 = dbVar.w(i);
        if ((w2 instanceof m71) && j >= q.get(this)) {
            my0Var = w8.g;
            if (dbVar.r(i, w2, my0Var)) {
                if (r0(w2, dbVar, i)) {
                    dbVar.A(i, w8.d);
                    return true;
                }
                my0Var2 = w8.j;
                dbVar.A(i, my0Var2);
                dbVar.x(i, false);
                return false;
            }
        }
        return t0(dbVar, i, j);
    }

    public final db t() {
        Object obj = v.get(this);
        db dbVar = (db) t.get(this);
        if (dbVar.o > ((db) obj).o) {
            obj = dbVar;
        }
        db dbVar2 = (db) u.get(this);
        if (dbVar2.o > ((db) obj).o) {
            obj = dbVar2;
        }
        return (db) ye.b((ze) obj);
    }

    public final boolean t0(db dbVar, int i, long j) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        my0 my0Var6;
        my0 my0Var7;
        my0 my0Var8;
        while (true) {
            Object w2 = dbVar.w(i);
            if (!(w2 instanceof m71)) {
                my0Var3 = w8.j;
                if (w2 != my0Var3) {
                    if (w2 != null) {
                        if (w2 != w8.d) {
                            my0Var5 = w8.h;
                            if (w2 == my0Var5) {
                                break;
                            }
                            my0Var6 = w8.i;
                            if (w2 == my0Var6) {
                                break;
                            }
                            my0Var7 = w8.k;
                            if (w2 == my0Var7 || w2 == w8.z()) {
                                return true;
                            }
                            my0Var8 = w8.f;
                            if (w2 != my0Var8) {
                                throw new IllegalStateException(("Unexpected cell state: " + w2).toString());
                            }
                        } else {
                            return true;
                        }
                    } else {
                        my0Var4 = w8.e;
                        if (dbVar.r(i, w2, my0Var4)) {
                            return true;
                        }
                    }
                } else {
                    return false;
                }
            } else if (j >= q.get(this)) {
                my0Var = w8.g;
                if (dbVar.r(i, w2, my0Var)) {
                    if (r0(w2, dbVar, i)) {
                        dbVar.A(i, w8.d);
                        return true;
                    }
                    my0Var2 = w8.j;
                    dbVar.A(i, my0Var2);
                    dbVar.x(i, false);
                    return false;
                }
            } else if (dbVar.r(i, w2, new n71((m71) w2))) {
                return true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ac, code lost:
    
        r3 = (androidx.appcompat.view.menu.db) r3.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01b3, code lost:
    
        if (r3 != null) goto L82;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        List g;
        char H;
        my0 my0Var;
        String str;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        my0 my0Var6;
        my0 my0Var7;
        db dbVar;
        StringBuilder sb = new StringBuilder();
        int i = (int) (p.get(this) >> 60);
        if (i == 2) {
            sb.append("closed,");
        } else if (i == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.m + ',');
        sb.append("data=[");
        int i2 = 0;
        g = sc.g(u.get(this), t.get(this), v.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj : g) {
            db dbVar2 = (db) obj;
            dbVar = w8.a;
            if (dbVar2 != dbVar) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j = ((db) next).o;
            do {
                Object next2 = it.next();
                long j2 = ((db) next2).o;
                if (j > j2) {
                    next = next2;
                    j = j2;
                }
            } while (it.hasNext());
        }
        db dbVar3 = (db) next;
        long J = J();
        long L = L();
        loop2: while (true) {
            int i3 = w8.b;
            int i4 = i2;
            while (true) {
                if (i4 >= i3) {
                    break;
                }
                long j3 = (dbVar3.o * w8.b) + i4;
                if (j3 >= L && j3 >= J) {
                    break loop2;
                }
                Object w2 = dbVar3.w(i4);
                Object v2 = dbVar3.v(i4);
                if (w2 instanceof x9) {
                    str = (j3 >= J || j3 < L) ? (j3 >= L || j3 < J) ? "cont" : "send" : "receive";
                } else if (w2 instanceof n71) {
                    str = "EB(" + w2 + ')';
                } else {
                    my0Var = w8.f;
                    if (!z50.a(w2, my0Var)) {
                        my0Var2 = w8.g;
                        if (!z50.a(w2, my0Var2)) {
                            if (w2 != null) {
                                my0Var3 = w8.e;
                                if (!z50.a(w2, my0Var3)) {
                                    my0Var4 = w8.i;
                                    if (!z50.a(w2, my0Var4)) {
                                        my0Var5 = w8.h;
                                        if (!z50.a(w2, my0Var5)) {
                                            my0Var6 = w8.k;
                                            if (!z50.a(w2, my0Var6)) {
                                                my0Var7 = w8.j;
                                                if (!z50.a(w2, my0Var7) && !z50.a(w2, w8.z())) {
                                                    str = w2.toString();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            i4++;
                        }
                    }
                    str = "resuming_sender";
                }
                if (v2 != null) {
                    sb.append('(' + str + ',' + v2 + "),");
                } else {
                    sb.append(str + ',');
                }
                i4++;
            }
            i2 = 0;
        }
        H = zx0.H(sb);
        if (H == ',') {
            z50.d(sb.deleteCharAt(sb.length() - 1), "this.deleteCharAt(index)");
        }
        sb.append("]");
        return sb.toString();
    }

    public boolean u(Throwable th, boolean z) {
        my0 my0Var;
        if (z) {
            Y();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = w;
        my0Var = w8.s;
        boolean a2 = q.a(atomicReferenceFieldUpdater, this, my0Var, th);
        if (z) {
            Z();
        } else {
            a0();
        }
        z();
        c0();
        if (a2) {
            P();
        }
        return a2;
    }

    public final Object u0(db dbVar, int i, long j, Object obj) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        Object w2 = dbVar.w(i);
        if (w2 == null) {
            if (j >= (p.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    my0Var3 = w8.n;
                    return my0Var3;
                }
                if (dbVar.r(i, w2, obj)) {
                    C();
                    my0Var2 = w8.m;
                    return my0Var2;
                }
            }
        } else if (w2 == w8.d) {
            my0Var = w8.i;
            if (dbVar.r(i, w2, my0Var)) {
                C();
                return dbVar.y(i);
            }
        }
        return v0(dbVar, i, j, obj);
    }

    @Override // androidx.appcompat.view.menu.ls0
    public void v(fw fwVar) {
        my0 my0Var;
        my0 my0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        my0 my0Var3;
        my0 my0Var4;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = x;
        if (q.a(atomicReferenceFieldUpdater2, this, null, fwVar)) {
            return;
        }
        do {
            Object obj = atomicReferenceFieldUpdater2.get(this);
            my0Var = w8.q;
            if (obj != my0Var) {
                my0Var2 = w8.r;
                if (obj == my0Var2) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
            atomicReferenceFieldUpdater = x;
            my0Var3 = w8.q;
            my0Var4 = w8.r;
        } while (!q.a(atomicReferenceFieldUpdater, this, my0Var3, my0Var4));
        fwVar.i(H());
    }

    public final Object v0(db dbVar, int i, long j, Object obj) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        my0 my0Var6;
        my0 my0Var7;
        my0 my0Var8;
        my0 my0Var9;
        my0 my0Var10;
        my0 my0Var11;
        my0 my0Var12;
        my0 my0Var13;
        my0 my0Var14;
        my0 my0Var15;
        my0 my0Var16;
        while (true) {
            Object w2 = dbVar.w(i);
            if (w2 != null) {
                my0Var5 = w8.e;
                if (w2 != my0Var5) {
                    if (w2 == w8.d) {
                        my0Var6 = w8.i;
                        if (dbVar.r(i, w2, my0Var6)) {
                            C();
                            return dbVar.y(i);
                        }
                    } else {
                        my0Var7 = w8.j;
                        if (w2 == my0Var7) {
                            my0Var8 = w8.o;
                            return my0Var8;
                        }
                        my0Var9 = w8.h;
                        if (w2 == my0Var9) {
                            my0Var10 = w8.o;
                            return my0Var10;
                        }
                        if (w2 == w8.z()) {
                            C();
                            my0Var11 = w8.o;
                            return my0Var11;
                        }
                        my0Var12 = w8.g;
                        if (w2 != my0Var12) {
                            my0Var13 = w8.f;
                            if (dbVar.r(i, w2, my0Var13)) {
                                boolean z = w2 instanceof n71;
                                if (z) {
                                    w2 = ((n71) w2).a;
                                }
                                if (r0(w2, dbVar, i)) {
                                    my0Var16 = w8.i;
                                    dbVar.A(i, my0Var16);
                                    C();
                                    return dbVar.y(i);
                                }
                                my0Var14 = w8.j;
                                dbVar.A(i, my0Var14);
                                dbVar.x(i, false);
                                if (z) {
                                    C();
                                }
                                my0Var15 = w8.o;
                                return my0Var15;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (j < (p.get(this) & 1152921504606846975L)) {
                my0Var = w8.h;
                if (dbVar.r(i, w2, my0Var)) {
                    C();
                    my0Var2 = w8.o;
                    return my0Var2;
                }
            } else {
                if (obj == null) {
                    my0Var3 = w8.n;
                    return my0Var3;
                }
                if (dbVar.r(i, w2, obj)) {
                    C();
                    my0Var4 = w8.m;
                    return my0Var4;
                }
            }
        }
    }

    public final void w(long j) {
        j0(x(j));
    }

    public final int w0(db dbVar, int i, Object obj, long j, Object obj2, boolean z) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        dbVar.B(i, obj);
        if (z) {
            return x0(dbVar, i, obj, j, obj2, z);
        }
        Object w2 = dbVar.w(i);
        if (w2 == null) {
            if (p(j)) {
                if (dbVar.r(i, null, w8.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (dbVar.r(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (w2 instanceof m71) {
            dbVar.s(i);
            if (q0(w2, obj)) {
                my0Var3 = w8.i;
                dbVar.A(i, my0Var3);
                f0();
                return 0;
            }
            my0Var = w8.k;
            Object t2 = dbVar.t(i, my0Var);
            my0Var2 = w8.k;
            if (t2 != my0Var2) {
                dbVar.x(i, true);
            }
            return 5;
        }
        return x0(dbVar, i, obj, j, obj2, z);
    }

    public final db x(long j) {
        db t2 = t();
        if (V()) {
            long X = X(t2);
            if (X != -1) {
                B(X);
            }
        }
        s(t2, j);
        return t2;
    }

    public final int x0(db dbVar, int i, Object obj, long j, Object obj2, boolean z) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        my0 my0Var6;
        my0 my0Var7;
        while (true) {
            Object w2 = dbVar.w(i);
            if (w2 != null) {
                my0Var2 = w8.e;
                if (w2 != my0Var2) {
                    my0Var3 = w8.k;
                    if (w2 == my0Var3) {
                        dbVar.s(i);
                        return 5;
                    }
                    my0Var4 = w8.h;
                    if (w2 == my0Var4) {
                        dbVar.s(i);
                        return 5;
                    }
                    if (w2 == w8.z()) {
                        dbVar.s(i);
                        z();
                        return 4;
                    }
                    dbVar.s(i);
                    if (w2 instanceof n71) {
                        w2 = ((n71) w2).a;
                    }
                    if (q0(w2, obj)) {
                        my0Var7 = w8.i;
                        dbVar.A(i, my0Var7);
                        f0();
                        return 0;
                    }
                    my0Var5 = w8.k;
                    Object t2 = dbVar.t(i, my0Var5);
                    my0Var6 = w8.k;
                    if (t2 != my0Var6) {
                        dbVar.x(i, true);
                    }
                    return 5;
                }
                if (dbVar.r(i, w2, w8.d)) {
                    return 1;
                }
            } else if (!p(j) || z) {
                if (z) {
                    my0Var = w8.j;
                    if (dbVar.r(i, null, my0Var)) {
                        dbVar.x(i, false);
                        return 4;
                    }
                } else {
                    if (obj2 == null) {
                        return 3;
                    }
                    if (dbVar.r(i, null, obj2)) {
                        return 2;
                    }
                }
            } else if (dbVar.r(i, null, w8.d)) {
                return 1;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return androidx.appcompat.view.menu.bb.a.c(androidx.appcompat.view.menu.r31.a);
     */
    @Override // androidx.appcompat.view.menu.ls0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object y(Object obj) {
        Object obj2;
        db dbVar;
        if (p0(p.get(this))) {
            return bb.a.b();
        }
        obj2 = w8.j;
        db dbVar2 = (db) t.get(this);
        while (true) {
            long andIncrement = p.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean U = U(andIncrement);
            int i = w8.b;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (dbVar2.o != j2) {
                db F = F(j2, dbVar2);
                if (F != null) {
                    dbVar = F;
                } else if (U) {
                    break;
                }
            } else {
                dbVar = dbVar2;
            }
            int w0 = w0(dbVar, i2, obj, j, obj2, U);
            if (w0 == 0) {
                dbVar.b();
                break;
            }
            if (w0 == 1) {
                break;
            }
            if (w0 != 2) {
                if (w0 == 3) {
                    throw new IllegalStateException("unexpected".toString());
                }
                if (w0 != 4) {
                    if (w0 == 5) {
                        dbVar.b();
                    }
                    dbVar2 = dbVar;
                } else if (j < J()) {
                    dbVar.b();
                }
            } else {
                if (!U) {
                    m71 m71Var = obj2 instanceof m71 ? (m71) obj2 : null;
                    if (m71Var != null) {
                        i0(m71Var, dbVar, i2);
                    }
                    dbVar.p();
                    return bb.a.b();
                }
                dbVar.p();
            }
        }
        return bb.a.a(K());
    }

    public final void y0(long j) {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = q;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            if (j2 >= j) {
                return;
            }
        } while (!q.compareAndSet(this, j2, j));
    }

    public final void z() {
        A();
    }

    public final void z0(long j) {
        long j2;
        long w2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            long j3 = 1152921504606846975L & j2;
            if (j3 >= j) {
                return;
            } else {
                w2 = w8.w(j3, (int) (j2 >> 60));
            }
        } while (!p.compareAndSet(this, j2, w2));
    }
}
