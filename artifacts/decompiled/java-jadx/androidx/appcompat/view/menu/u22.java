package androidx.appcompat.view.menu;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class u22 extends fx1 implements p12, r42, RandomAccess {
    public static final u22 p = new u22(new long[0], 0, false);
    public long[] n;
    public int o;

    public u22(long[] jArr, int i, boolean z) {
        super(z);
        this.n = jArr;
        this.o = i;
    }

    public static u22 g() {
        return p;
    }

    @Override // androidx.appcompat.view.menu.n12
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final p12 e(int i) {
        if (i >= this.o) {
            return new u22(Arrays.copyOf(this.n, i), this.o, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        d();
        if (i < 0 || i > (i2 = this.o)) {
            throw new IndexOutOfBoundsException(h(i));
        }
        long[] jArr = this.n;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.n, i, jArr2, i + 1, this.o - i);
            this.n = jArr2;
        }
        this.n[i] = longValue;
        this.o++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        d();
        v02.e(collection);
        if (!(collection instanceof u22)) {
            return super.addAll(collection);
        }
        u22 u22Var = (u22) collection;
        int i = u22Var.o;
        if (i == 0) {
            return false;
        }
        int i2 = this.o;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.n;
        if (i3 > jArr.length) {
            this.n = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(u22Var.n, 0, this.n, this.o, u22Var.o);
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
        if (!(obj instanceof u22)) {
            return super.equals(obj);
        }
        u22 u22Var = (u22) obj;
        if (this.o != u22Var.o) {
            return false;
        }
        long[] jArr = u22Var.n;
        for (int i = 0; i < this.o; i++) {
            if (this.n[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final void f(long j) {
        d();
        int i = this.o;
        long[] jArr = this.n;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.n = jArr2;
        }
        long[] jArr3 = this.n;
        int i2 = this.o;
        this.o = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(j(i));
    }

    public final String h(int i) {
        return "Index:" + i + ", Size:" + this.o;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.o; i2++) {
            i = (i * 31) + v02.b(this.n[i2]);
        }
        return i;
    }

    public final void i(int i) {
        if (i < 0 || i >= this.o) {
            throw new IndexOutOfBoundsException(h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.n[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.p12
    public final long j(int i) {
        i(i);
        return this.n[i];
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        i(i);
        long[] jArr = this.n;
        long j = jArr[i];
        if (i < this.o - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.o--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        d();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.n;
        System.arraycopy(jArr, i2, jArr, i, this.o - i2);
        this.o -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        d();
        i(i);
        long[] jArr = this.n;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.o;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        f(((Long) obj).longValue());
        return true;
    }
}
