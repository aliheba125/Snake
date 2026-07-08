package androidx.appcompat.view.menu;

import java.util.Objects;

/* loaded from: classes.dex */
public class io0 extends l40 {
    public static final l40 q = new io0(new Object[0], 0);
    public final transient Object[] o;
    public final transient int p;

    public io0(Object[] objArr, int i) {
        this.o = objArr;
        this.p = i;
    }

    @Override // androidx.appcompat.view.menu.l40, androidx.appcompat.view.menu.k40
    public int d(Object[] objArr, int i) {
        System.arraycopy(this.o, 0, objArr, i, this.p);
        return i + this.p;
    }

    @Override // androidx.appcompat.view.menu.k40
    public Object[] f() {
        return this.o;
    }

    @Override // androidx.appcompat.view.menu.k40
    public int g() {
        return this.p;
    }

    @Override // java.util.List
    public Object get(int i) {
        nj0.g(i, this.p);
        Object obj = this.o[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // androidx.appcompat.view.menu.k40
    public int h() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.k40
    public boolean i() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.p;
    }
}
