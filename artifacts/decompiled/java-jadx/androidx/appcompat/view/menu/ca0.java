package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class ca0 {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(ca0.class, Object.class, "_cur");
    private volatile Object _cur;

    public ca0(boolean z) {
        this._cur = new da0(8, z);
    }

    public final boolean a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            da0 da0Var = (da0) atomicReferenceFieldUpdater.get(this);
            int a2 = da0Var.a(obj);
            if (a2 == 0) {
                return true;
            }
            if (a2 == 1) {
                q.a(a, this, da0Var, da0Var.i());
            } else if (a2 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            da0 da0Var = (da0) atomicReferenceFieldUpdater.get(this);
            if (da0Var.d()) {
                return;
            } else {
                q.a(a, this, da0Var, da0Var.i());
            }
        }
    }

    public final int c() {
        return ((da0) a.get(this)).f();
    }

    public final Object d() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            da0 da0Var = (da0) atomicReferenceFieldUpdater.get(this);
            Object j = da0Var.j();
            if (j != da0.h) {
                return j;
            }
            q.a(a, this, da0Var, da0Var.i());
        }
    }
}
