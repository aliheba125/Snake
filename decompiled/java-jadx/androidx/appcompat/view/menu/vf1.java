package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class vf1 implements Iterator {
    public int m = 0;
    public final /* synthetic */ pf1 n;

    public vf1(pf1 pf1Var) {
        this.n = pf1Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.m < this.n.v();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (this.m < this.n.v()) {
            pf1 pf1Var = this.n;
            int i = this.m;
            this.m = i + 1;
            return pf1Var.s(i);
        }
        throw new NoSuchElementException("Out of bounds index: " + this.m);
    }
}
