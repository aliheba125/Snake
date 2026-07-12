package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes.dex */
public final class db extends js0 {
    public final v8 q;
    public final AtomicReferenceArray r;

    public db(long j, db dbVar, v8 v8Var, int i) {
        super(j, dbVar, i);
        this.q = v8Var;
        this.r = new AtomicReferenceArray(w8.b * 2);
    }

    public final void A(int i, Object obj) {
        this.r.set((i * 2) + 1, obj);
    }

    public final void B(int i, Object obj) {
        z(i, obj);
    }

    @Override // androidx.appcompat.view.menu.js0
    public int n() {
        return w8.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0063, code lost:
    
        s(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0066, code lost:
    
        if (r0 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0068, code lost:
    
        r4 = u().n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006e, code lost:
    
        if (r4 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0070, code lost:
    
        androidx.appcompat.view.menu.ng0.b(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0073, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // androidx.appcompat.view.menu.js0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void o(int i, Throwable th, kh khVar) {
        fw fwVar;
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        my0 my0Var5;
        int i2 = w8.b;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        Object v = v(i);
        while (true) {
            Object w = w(i);
            if (!(w instanceof m71) && !(w instanceof n71)) {
                my0Var = w8.j;
                if (w == my0Var) {
                    break;
                }
                my0Var2 = w8.k;
                if (w == my0Var2) {
                    break;
                }
                my0Var3 = w8.g;
                if (w != my0Var3) {
                    my0Var4 = w8.f;
                    if (w != my0Var4) {
                        my0Var5 = w8.i;
                        if (w == my0Var5 || w == w8.d || w == w8.z()) {
                            return;
                        }
                        throw new IllegalStateException(("unexpected state: " + w).toString());
                    }
                } else {
                    continue;
                }
            } else {
                if (r(i, w, z ? w8.j : w8.k)) {
                    s(i);
                    x(i, !z);
                    if (!z || (fwVar = u().n) == null) {
                        return;
                    }
                    ng0.b(fwVar, v, khVar);
                    return;
                }
            }
        }
    }

    public final boolean r(int i, Object obj, Object obj2) {
        return cb.a(this.r, (i * 2) + 1, obj, obj2);
    }

    public final void s(int i) {
        z(i, null);
    }

    public final Object t(int i, Object obj) {
        return this.r.getAndSet((i * 2) + 1, obj);
    }

    public final v8 u() {
        v8 v8Var = this.q;
        z50.b(v8Var);
        return v8Var;
    }

    public final Object v(int i) {
        return this.r.get(i * 2);
    }

    public final Object w(int i) {
        return this.r.get((i * 2) + 1);
    }

    public final void x(int i, boolean z) {
        if (z) {
            u().A0((this.o * w8.b) + i);
        }
        p();
    }

    public final Object y(int i) {
        Object v = v(i);
        s(i);
        return v;
    }

    public final void z(int i, Object obj) {
        this.r.lazySet(i * 2, obj);
    }
}
