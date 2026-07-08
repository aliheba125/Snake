package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class jf implements ps0 {
    public final AtomicReference a;

    public jf(ps0 ps0Var) {
        z50.e(ps0Var, "sequence");
        this.a = new AtomicReference(ps0Var);
    }

    @Override // androidx.appcompat.view.menu.ps0
    public Iterator iterator() {
        ps0 ps0Var = (ps0) this.a.getAndSet(null);
        if (ps0Var != null) {
            return ps0Var.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
