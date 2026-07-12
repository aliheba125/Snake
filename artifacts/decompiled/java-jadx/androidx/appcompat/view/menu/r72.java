package androidx.appcompat.view.menu;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class r72 implements Iterator {
    public Iterator m;
    public final /* synthetic */ n72 n;

    public r72(n72 n72Var) {
        c22 c22Var;
        this.n = n72Var;
        c22Var = n72Var.m;
        this.m = c22Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.m.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.m.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
