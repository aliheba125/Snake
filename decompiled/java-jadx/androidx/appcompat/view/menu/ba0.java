package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class ba0 {
    public static final AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(ba0.class, Object.class, "_next");
    public static final AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(ba0.class, Object.class, "_prev");
    public static final AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(ba0.class, Object.class, "_removedRef");
    private volatile Object _next = this;
    private volatile Object _prev = this;
    private volatile Object _removedRef;

    public static abstract class a extends e5 {
        public final ba0 b;
        public ba0 c;

        public a(ba0 ba0Var) {
            this.b = ba0Var;
        }

        @Override // androidx.appcompat.view.menu.e5
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(ba0 ba0Var, Object obj) {
            boolean z = obj == null;
            ba0 ba0Var2 = z ? this.b : this.c;
            if (ba0Var2 != null && q.a(ba0.m, ba0Var, this, ba0Var2) && z) {
                ba0 ba0Var3 = this.b;
                ba0 ba0Var4 = this.c;
                z50.b(ba0Var4);
                ba0Var3.n(ba0Var4);
            }
        }
    }

    public final boolean k(ba0 ba0Var) {
        n.lazySet(ba0Var, this);
        m.lazySet(ba0Var, this);
        while (o() == this) {
            if (q.a(m, this, this, ba0Var)) {
                ba0Var.n(this);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        if (androidx.appcompat.view.menu.q.a(r4, r3, r2, ((androidx.appcompat.view.menu.to0) r5).a) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ba0 l(pg0 pg0Var) {
        while (true) {
            ba0 ba0Var = (ba0) n.get(this);
            ba0 ba0Var2 = ba0Var;
            while (true) {
                ba0 ba0Var3 = null;
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
                    Object obj = atomicReferenceFieldUpdater.get(ba0Var2);
                    if (obj == this) {
                        if (ba0Var == ba0Var2 || q.a(n, this, ba0Var, ba0Var2)) {
                            return ba0Var2;
                        }
                    } else {
                        if (r()) {
                            return null;
                        }
                        if (obj == pg0Var) {
                            return ba0Var2;
                        }
                        if (obj instanceof pg0) {
                            ((pg0) obj).a(ba0Var2);
                            break;
                        }
                        if (!(obj instanceof to0)) {
                            z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                            ba0Var3 = ba0Var2;
                            ba0Var2 = (ba0) obj;
                        } else {
                            if (ba0Var3 != null) {
                                break;
                            }
                            ba0Var2 = (ba0) n.get(ba0Var2);
                        }
                    }
                }
                ba0Var2 = ba0Var3;
            }
        }
    }

    public final ba0 m(ba0 ba0Var) {
        while (ba0Var.r()) {
            ba0Var = (ba0) n.get(ba0Var);
        }
        return ba0Var;
    }

    public final void n(ba0 ba0Var) {
        ba0 ba0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = n;
        do {
            ba0Var2 = (ba0) atomicReferenceFieldUpdater.get(ba0Var);
            if (o() != ba0Var) {
                return;
            }
        } while (!q.a(n, ba0Var, ba0Var2, this));
        if (r()) {
            ba0Var.l(null);
        }
    }

    public final Object o() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof pg0)) {
                return obj;
            }
            ((pg0) obj).a(this);
        }
    }

    public final ba0 p() {
        return aa0.b(o());
    }

    public final ba0 q() {
        ba0 l = l(null);
        return l == null ? m((ba0) n.get(this)) : l;
    }

    public boolean r() {
        return o() instanceof to0;
    }

    public boolean s() {
        return t() == null;
    }

    public final ba0 t() {
        Object o2;
        ba0 ba0Var;
        do {
            o2 = o();
            if (o2 instanceof to0) {
                return ((to0) o2).a;
            }
            if (o2 == this) {
                return (ba0) o2;
            }
            z50.c(o2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            ba0Var = (ba0) o2;
        } while (!q.a(m, this, o2, ba0Var.u()));
        ba0Var.l(null);
        return null;
    }

    public String toString() {
        return new rk0(this) { // from class: androidx.appcompat.view.menu.ba0.b
            @Override // androidx.appcompat.view.menu.o70
            public Object get() {
                return hj.a(this.n);
            }
        } + '@' + hj.b(this);
    }

    public final to0 u() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
        to0 to0Var = (to0) atomicReferenceFieldUpdater.get(this);
        if (to0Var != null) {
            return to0Var;
        }
        to0 to0Var2 = new to0(this);
        atomicReferenceFieldUpdater.lazySet(this, to0Var2);
        return to0Var2;
    }

    public final int v(ba0 ba0Var, ba0 ba0Var2, a aVar) {
        n.lazySet(ba0Var, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
        atomicReferenceFieldUpdater.lazySet(ba0Var, ba0Var2);
        aVar.c = ba0Var2;
        if (q.a(atomicReferenceFieldUpdater, this, ba0Var2, aVar)) {
            return aVar.a(this) == null ? 1 : 2;
        }
        return 0;
    }
}
