package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ba0;
import androidx.appcompat.view.menu.kh;
import androidx.appcompat.view.menu.q60;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class b70 implements q60, lb, oh0 {
    public static final AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(b70.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(b70.class, Object.class, "_parentHandle");
    private volatile Object _parentHandle;
    private volatile Object _state;

    public static final class a extends z60 {
        public final b70 q;
        public final b r;
        public final kb s;
        public final Object t;

        public a(b70 b70Var, b bVar, kb kbVar, Object obj) {
            this.q = b70Var;
            this.r = bVar;
            this.s = kbVar;
            this.t = obj;
        }

        @Override // androidx.appcompat.view.menu.fw
        public /* bridge */ /* synthetic */ Object i(Object obj) {
            w((Throwable) obj);
            return r31.a;
        }

        @Override // androidx.appcompat.view.menu.pd
        public void w(Throwable th) {
            this.q.R(this.r, this.s, this.t);
        }
    }

    public static final class b implements t40 {
        public static final AtomicIntegerFieldUpdater n = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isCompleting");
        public static final AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_rootCause");
        public static final AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_exceptionsHolder");
        private volatile Object _exceptionsHolder;
        private volatile int _isCompleting;
        private volatile Object _rootCause;
        public final ze0 m;

        public b(ze0 ze0Var, boolean z, Throwable th) {
            this.m = ze0Var;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        public final void a(Throwable th) {
            Throwable e = e();
            if (e == null) {
                m(th);
                return;
            }
            if (th == e) {
                return;
            }
            Object d = d();
            if (d == null) {
                l(th);
                return;
            }
            if (d instanceof Throwable) {
                if (th == d) {
                    return;
                }
                ArrayList b = b();
                b.add(d);
                b.add(th);
                l(b);
                return;
            }
            if (d instanceof ArrayList) {
                ((ArrayList) d).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + d).toString());
        }

        public final ArrayList b() {
            return new ArrayList(4);
        }

        @Override // androidx.appcompat.view.menu.t40
        public boolean c() {
            return e() == null;
        }

        public final Object d() {
            return p.get(this);
        }

        public final Throwable e() {
            return (Throwable) o.get(this);
        }

        @Override // androidx.appcompat.view.menu.t40
        public ze0 f() {
            return this.m;
        }

        public final boolean g() {
            return e() != null;
        }

        public final boolean h() {
            return n.get(this) != 0;
        }

        public final boolean i() {
            my0 my0Var;
            Object d = d();
            my0Var = c70.e;
            return d == my0Var;
        }

        public final List j(Throwable th) {
            ArrayList arrayList;
            my0 my0Var;
            Object d = d();
            if (d == null) {
                arrayList = b();
            } else if (d instanceof Throwable) {
                ArrayList b = b();
                b.add(d);
                arrayList = b;
            } else {
                if (!(d instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + d).toString());
                }
                arrayList = (ArrayList) d;
            }
            Throwable e = e();
            if (e != null) {
                arrayList.add(0, e);
            }
            if (th != null && !z50.a(th, e)) {
                arrayList.add(th);
            }
            my0Var = c70.e;
            l(my0Var);
            return arrayList;
        }

        public final void k(boolean z) {
            n.set(this, z ? 1 : 0);
        }

        public final void l(Object obj) {
            p.set(this, obj);
        }

        public final void m(Throwable th) {
            o.set(this, th);
        }

        public String toString() {
            return "Finishing[cancelling=" + g() + ", completing=" + h() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + f() + ']';
        }
    }

    public static final class c extends ba0.a {
        public final /* synthetic */ b70 d;
        public final /* synthetic */ Object e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ba0 ba0Var, b70 b70Var, Object obj) {
            super(ba0Var);
            this.d = b70Var;
            this.e = obj;
        }

        @Override // androidx.appcompat.view.menu.e5
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Object d(ba0 ba0Var) {
            if (this.d.c0() == this.e) {
                return null;
            }
            return aa0.a();
        }
    }

    public b70(boolean z) {
        this._state = z ? c70.g : c70.f;
    }

    public static /* synthetic */ CancellationException A0(b70 b70Var, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return b70Var.z0(th, str);
    }

    @Override // androidx.appcompat.view.menu.q60
    public final jb B(lb lbVar) {
        mm d = q60.a.d(this, true, false, new kb(lbVar), 2, null);
        z50.c(d, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (jb) d;
    }

    public final String B0() {
        return m0() + '{' + y0(c0()) + '}';
    }

    public final boolean C0(t40 t40Var, Object obj) {
        if (!q.a(m, this, t40Var, c70.g(obj))) {
            return false;
        }
        q0(null);
        r0(obj);
        Q(t40Var, obj);
        return true;
    }

    public final boolean D0(t40 t40Var, Throwable th) {
        ze0 a0 = a0(t40Var);
        if (a0 == null) {
            return false;
        }
        if (!q.a(m, this, t40Var, new b(a0, false, th))) {
            return false;
        }
        o0(a0, th);
        return true;
    }

    public final Object E0(Object obj, Object obj2) {
        my0 my0Var;
        my0 my0Var2;
        if (!(obj instanceof t40)) {
            my0Var2 = c70.a;
            return my0Var2;
        }
        if ((!(obj instanceof zn) && !(obj instanceof z60)) || (obj instanceof kb) || (obj2 instanceof nd)) {
            return F0((t40) obj, obj2);
        }
        if (C0((t40) obj, obj2)) {
            return obj2;
        }
        my0Var = c70.c;
        return my0Var;
    }

    public final Object F0(t40 t40Var, Object obj) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        ze0 a0 = a0(t40Var);
        if (a0 == null) {
            my0Var3 = c70.c;
            return my0Var3;
        }
        b bVar = t40Var instanceof b ? (b) t40Var : null;
        if (bVar == null) {
            bVar = new b(a0, false, null);
        }
        bo0 bo0Var = new bo0();
        synchronized (bVar) {
            if (bVar.h()) {
                my0Var2 = c70.a;
                return my0Var2;
            }
            bVar.k(true);
            if (bVar != t40Var && !q.a(m, this, t40Var, bVar)) {
                my0Var = c70.c;
                return my0Var;
            }
            boolean g = bVar.g();
            nd ndVar = obj instanceof nd ? (nd) obj : null;
            if (ndVar != null) {
                bVar.a(ndVar.a);
            }
            Throwable e = Boolean.valueOf(true ^ g).booleanValue() ? bVar.e() : null;
            bo0Var.m = e;
            r31 r31Var = r31.a;
            if (e != null) {
                o0(a0, e);
            }
            kb U = U(t40Var);
            return (U == null || !G0(bVar, U, obj)) ? T(bVar, obj) : c70.b;
        }
    }

    public final boolean G(Object obj, ze0 ze0Var, z60 z60Var) {
        int v;
        c cVar = new c(z60Var, this, obj);
        do {
            v = ze0Var.q().v(z60Var, ze0Var, cVar);
            if (v == 1) {
                return true;
            }
        } while (v != 2);
        return false;
    }

    public final boolean G0(b bVar, kb kbVar, Object obj) {
        while (q60.a.d(kbVar.q, false, false, new a(this, bVar, kbVar, obj), 1, null) == af0.m) {
            kbVar = n0(kbVar);
            if (kbVar == null) {
                return false;
            }
        }
        return true;
    }

    public final void H(Throwable th, List list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                pp.a(th, th2);
            }
        }
    }

    public void I(Object obj) {
    }

    public final boolean J(Throwable th) {
        return K(th);
    }

    public final boolean K(Object obj) {
        Object obj2;
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        obj2 = c70.a;
        if (Z() && (obj2 = M(obj)) == c70.b) {
            return true;
        }
        my0Var = c70.a;
        if (obj2 == my0Var) {
            obj2 = j0(obj);
        }
        my0Var2 = c70.a;
        if (obj2 == my0Var2 || obj2 == c70.b) {
            return true;
        }
        my0Var3 = c70.d;
        if (obj2 == my0Var3) {
            return false;
        }
        I(obj2);
        return true;
    }

    public void L(Throwable th) {
        K(th);
    }

    public final Object M(Object obj) {
        my0 my0Var;
        Object E0;
        my0 my0Var2;
        do {
            Object c0 = c0();
            if (!(c0 instanceof t40) || ((c0 instanceof b) && ((b) c0).h())) {
                my0Var = c70.a;
                return my0Var;
            }
            E0 = E0(c0, new nd(S(obj), false, 2, null));
            my0Var2 = c70.c;
        } while (E0 == my0Var2);
        return E0;
    }

    public final boolean N(Throwable th) {
        if (i0()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        jb b0 = b0();
        return (b0 == null || b0 == af0.m) ? z : b0.b(th) || z;
    }

    public String O() {
        return "Job was cancelled";
    }

    public boolean P(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return K(th) && Y();
    }

    public final void Q(t40 t40Var, Object obj) {
        jb b0 = b0();
        if (b0 != null) {
            b0.a();
            w0(af0.m);
        }
        nd ndVar = obj instanceof nd ? (nd) obj : null;
        Throwable th = ndVar != null ? ndVar.a : null;
        if (!(t40Var instanceof z60)) {
            ze0 f = t40Var.f();
            if (f != null) {
                p0(f, th);
                return;
            }
            return;
        }
        try {
            ((z60) t40Var).w(th);
        } catch (Throwable th2) {
            e0(new qd("Exception in completion handler " + t40Var + " for " + this, th2));
        }
    }

    public final void R(b bVar, kb kbVar, Object obj) {
        kb n0 = n0(kbVar);
        if (n0 == null || !G0(bVar, n0, obj)) {
            I(T(bVar, obj));
        }
    }

    public final Throwable S(Object obj) {
        if (obj == null || (obj instanceof Throwable)) {
            Throwable th = (Throwable) obj;
            return th == null ? new r60(O(), null, this) : th;
        }
        z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((oh0) obj).t();
    }

    public final Object T(b bVar, Object obj) {
        boolean g;
        Throwable X;
        nd ndVar = obj instanceof nd ? (nd) obj : null;
        Throwable th = ndVar != null ? ndVar.a : null;
        synchronized (bVar) {
            g = bVar.g();
            List j = bVar.j(th);
            X = X(bVar, j);
            if (X != null) {
                H(X, j);
            }
        }
        if (X != null && X != th) {
            obj = new nd(X, false, 2, null);
        }
        if (X != null && (N(X) || d0(X))) {
            z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((nd) obj).b();
        }
        if (!g) {
            q0(X);
        }
        r0(obj);
        q.a(m, this, bVar, c70.g(obj));
        Q(bVar, obj);
        return obj;
    }

    public final kb U(t40 t40Var) {
        kb kbVar = t40Var instanceof kb ? (kb) t40Var : null;
        if (kbVar != null) {
            return kbVar;
        }
        ze0 f = t40Var.f();
        if (f != null) {
            return n0(f);
        }
        return null;
    }

    public final Object V() {
        Object c0 = c0();
        if (!(!(c0 instanceof t40))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        }
        if (c0 instanceof nd) {
            throw ((nd) c0).a;
        }
        return c70.h(c0);
    }

    public final Throwable W(Object obj) {
        nd ndVar = obj instanceof nd ? (nd) obj : null;
        if (ndVar != null) {
            return ndVar.a;
        }
        return null;
    }

    public final Throwable X(b bVar, List list) {
        Object obj = null;
        if (list.isEmpty()) {
            if (bVar.g()) {
                return new r60(O(), null, this);
            }
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                obj = next;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        return th != null ? th : (Throwable) list.get(0);
    }

    public boolean Y() {
        return true;
    }

    public boolean Z() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.q60
    public final boolean a() {
        int x0;
        do {
            x0 = x0(c0());
            if (x0 == 0) {
                return false;
            }
        } while (x0 != 1);
        return true;
    }

    public final ze0 a0(t40 t40Var) {
        ze0 f = t40Var.f();
        if (f != null) {
            return f;
        }
        if (t40Var instanceof zn) {
            return new ze0();
        }
        if (t40Var instanceof z60) {
            u0((z60) t40Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + t40Var).toString());
    }

    public final jb b0() {
        return (jb) n.get(this);
    }

    @Override // androidx.appcompat.view.menu.q60
    public boolean c() {
        Object c0 = c0();
        return (c0 instanceof t40) && ((t40) c0).c();
    }

    public final Object c0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof pg0)) {
                return obj;
            }
            ((pg0) obj).a(this);
        }
    }

    @Override // androidx.appcompat.view.menu.kh.b, androidx.appcompat.view.menu.kh
    public kh.b d(kh.c cVar) {
        return q60.a.c(this, cVar);
    }

    public boolean d0(Throwable th) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.q60
    public void e(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new r60(O(), null, this);
        }
        L(cancellationException);
    }

    public void e0(Throwable th) {
        throw th;
    }

    public final void f0(q60 q60Var) {
        if (q60Var == null) {
            w0(af0.m);
            return;
        }
        q60Var.a();
        jb B = q60Var.B(this);
        w0(B);
        if (h0()) {
            B.a();
            w0(af0.m);
        }
    }

    public final boolean g0() {
        Object c0 = c0();
        return (c0 instanceof nd) || ((c0 instanceof b) && ((b) c0).g());
    }

    @Override // androidx.appcompat.view.menu.kh.b
    public final kh.c getKey() {
        return q60.d;
    }

    @Override // androidx.appcompat.view.menu.q60
    public final mm h(fw fwVar) {
        return s(false, true, fwVar);
    }

    public final boolean h0() {
        return !(c0() instanceof t40);
    }

    public boolean i0() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.kh
    public kh j(kh.c cVar) {
        return q60.a.e(this, cVar);
    }

    public final Object j0(Object obj) {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        my0 my0Var6;
        Throwable th = null;
        while (true) {
            Object c0 = c0();
            if (c0 instanceof b) {
                synchronized (c0) {
                    if (((b) c0).i()) {
                        my0Var2 = c70.d;
                        return my0Var2;
                    }
                    boolean g = ((b) c0).g();
                    if (obj != null || !g) {
                        if (th == null) {
                            th = S(obj);
                        }
                        ((b) c0).a(th);
                    }
                    Throwable e = g ^ true ? ((b) c0).e() : null;
                    if (e != null) {
                        o0(((b) c0).f(), e);
                    }
                    my0Var = c70.a;
                    return my0Var;
                }
            }
            if (!(c0 instanceof t40)) {
                my0Var3 = c70.d;
                return my0Var3;
            }
            if (th == null) {
                th = S(obj);
            }
            t40 t40Var = (t40) c0;
            if (!t40Var.c()) {
                Object E0 = E0(c0, new nd(th, false, 2, null));
                my0Var5 = c70.a;
                if (E0 == my0Var5) {
                    throw new IllegalStateException(("Cannot happen in " + c0).toString());
                }
                my0Var6 = c70.c;
                if (E0 != my0Var6) {
                    return E0;
                }
            } else if (D0(t40Var, th)) {
                my0Var4 = c70.a;
                return my0Var4;
            }
        }
    }

    public final Object k0(Object obj) {
        Object E0;
        my0 my0Var;
        my0 my0Var2;
        do {
            E0 = E0(c0(), obj);
            my0Var = c70.a;
            if (E0 == my0Var) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, W(obj));
            }
            my0Var2 = c70.c;
        } while (E0 == my0Var2);
        return E0;
    }

    public final z60 l0(fw fwVar, boolean z) {
        z60 z60Var;
        if (z) {
            z60Var = fwVar instanceof s60 ? (s60) fwVar : null;
            if (z60Var == null) {
                z60Var = new g60(fwVar);
            }
        } else {
            z60Var = fwVar instanceof z60 ? (z60) fwVar : null;
            if (z60Var == null) {
                z60Var = new h60(fwVar);
            }
        }
        z60Var.y(this);
        return z60Var;
    }

    public String m0() {
        return hj.a(this);
    }

    public final kb n0(ba0 ba0Var) {
        while (ba0Var.r()) {
            ba0Var = ba0Var.q();
        }
        while (true) {
            ba0Var = ba0Var.p();
            if (!ba0Var.r()) {
                if (ba0Var instanceof kb) {
                    return (kb) ba0Var;
                }
                if (ba0Var instanceof ze0) {
                    return null;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.kh
    public kh o(kh khVar) {
        return q60.a.f(this, khVar);
    }

    public final void o0(ze0 ze0Var, Throwable th) {
        q0(th);
        Object o = ze0Var.o();
        z50.c(o, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        qd qdVar = null;
        for (ba0 ba0Var = (ba0) o; !z50.a(ba0Var, ze0Var); ba0Var = ba0Var.p()) {
            if (ba0Var instanceof s60) {
                z60 z60Var = (z60) ba0Var;
                try {
                    z60Var.w(th);
                } catch (Throwable th2) {
                    if (qdVar != null) {
                        pp.a(qdVar, th2);
                    } else {
                        qdVar = new qd("Exception in completion handler " + z60Var + " for " + this, th2);
                        r31 r31Var = r31.a;
                    }
                }
            }
        }
        if (qdVar != null) {
            e0(qdVar);
        }
        N(th);
    }

    @Override // androidx.appcompat.view.menu.kh
    public Object p(Object obj, tw twVar) {
        return q60.a.b(this, obj, twVar);
    }

    public final void p0(ze0 ze0Var, Throwable th) {
        Object o = ze0Var.o();
        z50.c(o, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        qd qdVar = null;
        for (ba0 ba0Var = (ba0) o; !z50.a(ba0Var, ze0Var); ba0Var = ba0Var.p()) {
            if (ba0Var instanceof z60) {
                z60 z60Var = (z60) ba0Var;
                try {
                    z60Var.w(th);
                } catch (Throwable th2) {
                    if (qdVar != null) {
                        pp.a(qdVar, th2);
                    } else {
                        qdVar = new qd("Exception in completion handler " + z60Var + " for " + this, th2);
                        r31 r31Var = r31.a;
                    }
                }
            }
        }
        if (qdVar != null) {
            e0(qdVar);
        }
    }

    public void q0(Throwable th) {
    }

    public void r0(Object obj) {
    }

    @Override // androidx.appcompat.view.menu.q60
    public final mm s(boolean z, boolean z2, fw fwVar) {
        z60 l0 = l0(fwVar, z);
        while (true) {
            Object c0 = c0();
            if (c0 instanceof zn) {
                zn znVar = (zn) c0;
                if (!znVar.c()) {
                    t0(znVar);
                } else if (q.a(m, this, c0, l0)) {
                    return l0;
                }
            } else {
                if (!(c0 instanceof t40)) {
                    if (z2) {
                        nd ndVar = c0 instanceof nd ? (nd) c0 : null;
                        fwVar.i(ndVar != null ? ndVar.a : null);
                    }
                    return af0.m;
                }
                ze0 f = ((t40) c0).f();
                if (f == null) {
                    z50.c(c0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    u0((z60) c0);
                } else {
                    mm mmVar = af0.m;
                    if (z && (c0 instanceof b)) {
                        synchronized (c0) {
                            try {
                                r3 = ((b) c0).e();
                                if (r3 != null) {
                                    if ((fwVar instanceof kb) && !((b) c0).h()) {
                                    }
                                    r31 r31Var = r31.a;
                                }
                                if (G(c0, f, l0)) {
                                    if (r3 == null) {
                                        return l0;
                                    }
                                    mmVar = l0;
                                    r31 r31Var2 = r31.a;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    if (r3 != null) {
                        if (z2) {
                            fwVar.i(r3);
                        }
                        return mmVar;
                    }
                    if (G(c0, f, l0)) {
                        return l0;
                    }
                }
            }
        }
    }

    public void s0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // androidx.appcompat.view.menu.oh0
    public CancellationException t() {
        CancellationException cancellationException;
        Object c0 = c0();
        if (c0 instanceof b) {
            cancellationException = ((b) c0).e();
        } else if (c0 instanceof nd) {
            cancellationException = ((nd) c0).a;
        } else {
            if (c0 instanceof t40) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + c0).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        if (cancellationException2 != null) {
            return cancellationException2;
        }
        return new r60("Parent job is " + y0(c0), cancellationException, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.appcompat.view.menu.s40] */
    public final void t0(zn znVar) {
        ze0 ze0Var = new ze0();
        if (!znVar.c()) {
            ze0Var = new s40(ze0Var);
        }
        q.a(m, this, znVar, ze0Var);
    }

    public String toString() {
        return B0() + '@' + hj.b(this);
    }

    @Override // androidx.appcompat.view.menu.lb
    public final void u(oh0 oh0Var) {
        K(oh0Var);
    }

    public final void u0(z60 z60Var) {
        z60Var.k(new ze0());
        q.a(m, this, z60Var, z60Var.p());
    }

    public final void v0(z60 z60Var) {
        Object c0;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        zn znVar;
        do {
            c0 = c0();
            if (!(c0 instanceof z60)) {
                if (!(c0 instanceof t40) || ((t40) c0).f() == null) {
                    return;
                }
                z60Var.s();
                return;
            }
            if (c0 != z60Var) {
                return;
            }
            atomicReferenceFieldUpdater = m;
            znVar = c70.g;
        } while (!q.a(atomicReferenceFieldUpdater, this, c0, znVar));
    }

    @Override // androidx.appcompat.view.menu.q60
    public final CancellationException w() {
        Object c0 = c0();
        if (!(c0 instanceof b)) {
            if (c0 instanceof t40) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (c0 instanceof nd) {
                return A0(this, ((nd) c0).a, null, 1, null);
            }
            return new r60(hj.a(this) + " has completed normally", null, this);
        }
        Throwable e = ((b) c0).e();
        if (e != null) {
            CancellationException z0 = z0(e, hj.a(this) + " is cancelling");
            if (z0 != null) {
                return z0;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final void w0(jb jbVar) {
        n.set(this, jbVar);
    }

    public final int x0(Object obj) {
        zn znVar;
        if (!(obj instanceof zn)) {
            if (!(obj instanceof s40)) {
                return 0;
            }
            if (!q.a(m, this, obj, ((s40) obj).f())) {
                return -1;
            }
            s0();
            return 1;
        }
        if (((zn) obj).c()) {
            return 0;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
        znVar = c70.g;
        if (!q.a(atomicReferenceFieldUpdater, this, obj, znVar)) {
            return -1;
        }
        s0();
        return 1;
    }

    public final String y0(Object obj) {
        if (!(obj instanceof b)) {
            return obj instanceof t40 ? ((t40) obj).c() ? "Active" : "New" : obj instanceof nd ? "Cancelled" : "Completed";
        }
        b bVar = (b) obj;
        return bVar.g() ? "Cancelling" : bVar.h() ? "Completing" : "Active";
    }

    public final CancellationException z0(Throwable th, String str) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            if (str == null) {
                str = O();
            }
            cancellationException = new r60(str, th, this);
        }
        return cancellationException;
    }
}
