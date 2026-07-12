package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class vu0 extends o40 {
    public final transient Object o;

    public vu0(Object obj) {
        this.o = nj0.i(obj);
    }

    @Override // androidx.appcompat.view.menu.k40, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.o.equals(obj);
    }

    @Override // androidx.appcompat.view.menu.k40
    public int d(Object[] objArr, int i) {
        objArr[i] = this.o;
        return i + 1;
    }

    @Override // androidx.appcompat.view.menu.o40, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.o.hashCode();
    }

    @Override // androidx.appcompat.view.menu.k40
    public boolean i() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String obj = this.o.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public t31 iterator() {
        return j60.c(this.o);
    }
}
