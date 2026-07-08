package androidx.appcompat.view.menu;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class lo0 extends q40 {
    public static final lo0 r = new lo0(l40.u(), vg0.c());
    public final transient l40 q;

    public lo0(l40 l40Var, Comparator comparator) {
        super(comparator);
        this.q = l40Var;
    }

    @Override // androidx.appcompat.view.menu.q40
    public q40 C() {
        Comparator reverseOrder = Collections.reverseOrder(this.o);
        return isEmpty() ? q40.E(reverseOrder) : new lo0(this.q.y(), reverseOrder);
    }

    @Override // androidx.appcompat.view.menu.q40
    public q40 H(Object obj, boolean z) {
        return R(0, S(obj, z));
    }

    @Override // androidx.appcompat.view.menu.q40
    public q40 K(Object obj, boolean z, Object obj2, boolean z2) {
        return N(obj, z).H(obj2, z2);
    }

    @Override // androidx.appcompat.view.menu.q40
    public q40 N(Object obj, boolean z) {
        return R(U(obj, z), size());
    }

    @Override // java.util.NavigableSet
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public t31 descendingIterator() {
        return this.q.y().iterator();
    }

    public lo0 R(int i, int i2) {
        return (i == 0 && i2 == size()) ? this : i < i2 ? new lo0(this.q.subList(i, i2), this.o) : q40.E(this.o);
    }

    public int S(Object obj, boolean z) {
        int binarySearch = Collections.binarySearch(this.q, nj0.i(obj), comparator());
        return binarySearch >= 0 ? z ? binarySearch + 1 : binarySearch : ~binarySearch;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public t31 iterator() {
        return this.q.iterator();
    }

    public int U(Object obj, boolean z) {
        int binarySearch = Collections.binarySearch(this.q, nj0.i(obj), comparator());
        return binarySearch >= 0 ? z ? binarySearch : binarySearch + 1 : ~binarySearch;
    }

    public final int V(Object obj) {
        return Collections.binarySearch(this.q, obj, W());
    }

    public Comparator W() {
        return this.o;
    }

    @Override // java.util.NavigableSet
    public Object ceiling(Object obj) {
        int U = U(obj, true);
        if (U == size()) {
            return null;
        }
        return this.q.get(U);
    }

    @Override // androidx.appcompat.view.menu.k40, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return V(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        if (collection instanceof he0) {
            collection = ((he0) collection).l();
        }
        if (!bw0.b(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        t31 it = iterator();
        Iterator it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        Object next2 = it.next();
        while (true) {
            try {
                int O = O(next2, next);
                if (O < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (O == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (O > 0) {
                    break;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.k40
    public int d(Object[] objArr, int i) {
        return this.q.d(objArr, i);
    }

    @Override // androidx.appcompat.view.menu.o40, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!bw0.b(this.o, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            t31 it2 = iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                Object next2 = it.next();
                if (next2 == null || O(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // androidx.appcompat.view.menu.k40
    public Object[] f() {
        return this.q.f();
    }

    @Override // java.util.SortedSet
    public Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.q.get(0);
    }

    @Override // java.util.NavigableSet
    public Object floor(Object obj) {
        int S = S(obj, true) - 1;
        if (S == -1) {
            return null;
        }
        return this.q.get(S);
    }

    @Override // androidx.appcompat.view.menu.k40
    public int g() {
        return this.q.g();
    }

    @Override // androidx.appcompat.view.menu.k40
    public int h() {
        return this.q.h();
    }

    @Override // java.util.NavigableSet
    public Object higher(Object obj) {
        int U = U(obj, false);
        if (U == size()) {
            return null;
        }
        return this.q.get(U);
    }

    @Override // androidx.appcompat.view.menu.k40
    public boolean i() {
        return this.q.i();
    }

    @Override // java.util.SortedSet
    public Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.q.get(size() - 1);
    }

    @Override // java.util.NavigableSet
    public Object lower(Object obj) {
        int S = S(obj, false) - 1;
        if (S == -1) {
            return null;
        }
        return this.q.get(S);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.q.size();
    }
}
