package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class lf1 implements Iterator {
    public final /* synthetic */ Iterator m;
    public final /* synthetic */ Iterator n;

    public lf1(pf1 pf1Var, Iterator it, Iterator it2) {
        this.m = it;
        this.n = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.m.hasNext()) {
            return true;
        }
        return this.n.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (this.m.hasNext()) {
            return new ug1(((Integer) this.m.next()).toString());
        }
        if (this.n.hasNext()) {
            return new ug1((String) this.n.next());
        }
        throw new NoSuchElementException();
    }
}
