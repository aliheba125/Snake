package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class yg1 implements Iterator {
    public int m = 0;
    public final /* synthetic */ ug1 n;

    public yg1(ug1 ug1Var) {
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
        String str2;
        int i = this.m;
        str = this.n.m;
        if (i >= str.length()) {
            throw new NoSuchElementException();
        }
        str2 = this.n.m;
        int i2 = this.m;
        this.m = i2 + 1;
        return new ug1(String.valueOf(str2.charAt(i2)));
    }
}
