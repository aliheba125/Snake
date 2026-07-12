package androidx.appcompat.view.menu;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class t72 implements ListIterator {
    public ListIterator m;
    public final /* synthetic */ int n;
    public final /* synthetic */ n72 o;

    public t72(n72 n72Var, int i) {
        c22 c22Var;
        this.o = n72Var;
        this.n = i;
        c22Var = n72Var.m;
        this.m = c22Var.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.m.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.m.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.m.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.m.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ Object previous() {
        return (String) this.m.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.m.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
