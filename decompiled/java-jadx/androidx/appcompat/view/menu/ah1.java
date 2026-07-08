package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class ah1 implements Iterator {
    public int m = 0;
    public final /* synthetic */ ug1 n;

    public ah1(ug1 ug1Var) {
        this.n = ug1Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i = this.m;
        str = this.n.m;
        return i < str.length();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        String str;
        int i = this.m;
        str = this.n.m;
        if (i >= str.length()) {
            throw new NoSuchElementException();
        }
        int i2 = this.m;
        this.m = i2 + 1;
        return new ug1(String.valueOf(i2));
    }
}
