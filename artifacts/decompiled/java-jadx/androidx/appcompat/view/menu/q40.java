package androidx.appcompat.view.menu;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.NavigableSet;

/* loaded from: classes.dex */
public abstract class q40 extends r40 implements NavigableSet, aw0 {
    public final transient Comparator o;
    public transient q40 p;

    public q40(Comparator comparator) {
        this.o = comparator;
    }

    public static q40 A(Comparator comparator, Iterable iterable) {
        nj0.i(comparator);
        if (bw0.b(comparator, iterable) && (iterable instanceof q40)) {
            q40 q40Var = (q40) iterable;
            if (!q40Var.i()) {
                return q40Var;
            }
        }
        Object[] b = i60.b(iterable);
        return z(comparator, b.length, b);
    }

    public static q40 B(Comparator comparator, Collection collection) {
        return A(comparator, collection);
    }

    public static lo0 E(Comparator comparator) {
        return vg0.c().equals(comparator) ? lo0.r : new lo0(l40.u(), comparator);
    }

    public static int P(Comparator comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    public static q40 z(Comparator comparator, int i, Object... objArr) {
        if (i == 0) {
            return E(comparator);
        }
        sf0.c(objArr, i);
        Arrays.sort(objArr, 0, i, comparator);
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (comparator.compare(obj, objArr[i2 - 1]) != 0) {
                objArr[i2] = obj;
                i2++;
            }
        }
        Arrays.fill(objArr, i2, i, (Object) null);
        if (i2 < objArr.length / 2) {
            objArr = Arrays.copyOf(objArr, i2);
        }
        return new lo0(l40.n(objArr, i2), comparator);
    }

    public abstract q40 C();

    @Override // java.util.NavigableSet
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public q40 descendingSet() {
        q40 q40Var = this.p;
        if (q40Var != null) {
            return q40Var;
        }
        q40 C = C();
        this.p = C;
        C.p = this;
        return C;
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public q40 headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public q40 headSet(Object obj, boolean z) {
        return H(nj0.i(obj), z);
    }

    public abstract q40 H(Object obj, boolean z);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public q40 subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public q40 subSet(Object obj, boolean z, Object obj2, boolean z2) {
        nj0.i(obj);
        nj0.i(obj2);
        nj0.d(this.o.compare(obj, obj2) <= 0);
        return K(obj, z, obj2, z2);
    }

    public abstract q40 K(Object obj, boolean z, Object obj2, boolean z2);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public q40 tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public q40 tailSet(Object obj, boolean z) {
        return N(nj0.i(obj), z);
    }

    public abstract q40 N(Object obj, boolean z);

    public int O(Object obj, Object obj2) {
        return P(this.o, obj, obj2);
    }

    @Override // java.util.SortedSet, androidx.appcompat.view.menu.aw0
    public Comparator comparator() {
        return this.o;
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }
}
