package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class xw0 extends u {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(xw0.class, Object.class, "_state");
    private volatile Object _state;

    @Override // androidx.appcompat.view.menu.u
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(vw0 vw0Var) {
        my0 my0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        my0Var = ww0.a;
        atomicReferenceFieldUpdater.set(this, my0Var);
        return true;
    }

    public final Object e(xg xgVar) {
        xg b;
        my0 my0Var;
        Object c;
        Object c2;
        b = b60.b(xgVar);
        y9 y9Var = new y9(b, 1);
        y9Var.z();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        my0Var = ww0.a;
        if (!q.a(atomicReferenceFieldUpdater, this, my0Var, y9Var)) {
            np0.a aVar = np0.m;
            y9Var.n(np0.a(r31.a));
        }
        Object w = y9Var.w();
        c = c60.c();
        if (w == c) {
            gj.c(xgVar);
        }
        c2 = c60.c();
        return w == c2 ? w : r31.a;
    }

    @Override // androidx.appcompat.view.menu.u
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public xg[] b(vw0 vw0Var) {
        a.set(this, null);
        return t.a;
    }

    public final void g() {
        my0 my0Var;
        my0 my0Var2;
        my0 my0Var3;
        my0 my0Var4;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return;
            }
            my0Var = ww0.b;
            if (obj == my0Var) {
                return;
            }
            my0Var2 = ww0.a;
            if (obj == my0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = a;
                my0Var3 = ww0.b;
                if (q.a(atomicReferenceFieldUpdater2, this, obj, my0Var3)) {
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = a;
                my0Var4 = ww0.a;
                if (q.a(atomicReferenceFieldUpdater3, this, obj, my0Var4)) {
                    np0.a aVar = np0.m;
                    ((y9) obj).n(np0.a(r31.a));
                    return;
                }
            }
        }
    }

    public final boolean h() {
        my0 my0Var;
        my0 my0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        my0Var = ww0.a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, my0Var);
        z50.b(andSet);
        my0Var2 = ww0.b;
        return andSet == my0Var2;
    }
}
