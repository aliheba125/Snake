package androidx.appcompat.view.menu;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class wx1 extends ay1 {
    public int m = 0;
    public final int n;
    public final /* synthetic */ qx1 o;

    public wx1(qx1 qx1Var) {
        this.o = qx1Var;
        this.n = qx1Var.t();
    }

    @Override // androidx.appcompat.view.menu.cy1
    public final byte a() {
        int i = this.m;
        if (i >= this.n) {
            throw new NoSuchElementException();
        }
        this.m = i + 1;
        return this.o.s(i);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.m < this.n;
    }
}
