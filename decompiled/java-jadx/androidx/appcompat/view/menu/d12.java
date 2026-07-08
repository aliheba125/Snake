package androidx.appcompat.view.menu;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class d12 extends fx1 implements j12, r42, RandomAccess {
    public static final d12 p = new d12(new int[0], 0, false);
    public int[] n;
    public int o;

    public d12(int[] iArr, int i, boolean z) {
        super(z);
        this.n = iArr;
        this.o = i;
    }

    public static d12 g() {
        return p;
    }

    @Override // androidx.appcompat.view.menu.n12
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final j12 e(int i) {
        if (i >= this.o) {
            return new d12(Arrays.copyOf(this.n, i), this.o, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        d();
        if (i < 0 || i > (i2 = this.o)) {
            throw new IndexOutOfBoundsException(i(i));
        }
        int[] iArr = this.n;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.n, i, iArr2, i + 1, this.o - i);
            this.n = iArr2;
        }
        this.n[i] = intValue;
        this.o++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        d();
        v02.e(collection);
        if (!(collection instanceof d12)) {
            return super.addAll(collection);
        }
        d12 d12Var = (d12) collection;
        int i = d12Var.o;
        if (i == 0) {
            return false;
        }
        int i2 = this.o;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.n;
        if (i3 > iArr.length) {
            this.n = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(d12Var.n, 0, this.n, this.o, d12Var.o);
        this.o = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d12)) {
            return super.equals(obj);
        }
        d12 d12Var = (d12) obj;
        if (this.o != d12Var.o) {
            return false;
        }
        int[] iArr = d12Var.n;
        for (int i = 0; i < this.o; i++) {
            if (this.n[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final int f(int i) {
        k(i);
        return this.n[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(f(i));
    }

    public final void h(int i) {
        d();
        int i2 = this.o;
        int[] iArr = this.n;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.n = iArr2;
        }
        int[] iArr3 = this.n;
        int i3 = this.o;
        this.o = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.o; i2++) {
            i = (i * 31) + this.n[i2];
        }
        return i;
    }

    public final String i(int i) {
        return "Index:" + i + ", Size:" + this.o;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.n[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    public final void k(int i) {
        if (i < 0 || i >= this.o) {
            throw new IndexOutOfBoundsException(i(i));
        }
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        k(i);
        int[] iArr = this.n;
        int i2 = iArr[i];
        if (i < this.o - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.o--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        d();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.n;
        System.arraycopy(iArr, i2, iArr, i, this.o - i2);
        this.o -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        d();
        k(i);
        int[] iArr = this.n;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.o;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        h(((Integer) obj).intValue());
        return true;
    }
}
