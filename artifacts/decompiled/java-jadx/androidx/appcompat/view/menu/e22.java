package androidx.appcompat.view.menu;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class e22 extends fx1 implements c22, RandomAccess {
    public static final e22 o;
    public static final c22 p;
    public final List n;

    static {
        e22 e22Var = new e22(false);
        o = e22Var;
        p = e22Var;
    }

    public e22(int i) {
        this(new ArrayList(i));
    }

    public static String f(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof qx1 ? ((qx1) obj).w() : v02.h((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        d();
        this.n.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // androidx.appcompat.view.menu.c22
    public final List b() {
        return Collections.unmodifiableList(this.n);
    }

    @Override // androidx.appcompat.view.menu.fx1, androidx.appcompat.view.menu.n12
    public final /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        d();
        this.n.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.appcompat.view.menu.n12
    public final /* synthetic */ n12 e(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.n);
        return new e22(arrayList);
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.n.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof qx1) {
            qx1 qx1Var = (qx1) obj;
            String w = qx1Var.w();
            if (qx1Var.x()) {
                this.n.set(i, w);
            }
            return w;
        }
        byte[] bArr = (byte[]) obj;
        String h = v02.h(bArr);
        if (v02.i(bArr)) {
            this.n.set(i, h);
        }
        return h;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // androidx.appcompat.view.menu.c22
    public final Object j(int i) {
        return this.n.get(i);
    }

    @Override // androidx.appcompat.view.menu.c22
    public final c22 m() {
        return c() ? new n72(this) : this;
    }

    @Override // androidx.appcompat.view.menu.c22
    public final void q(qx1 qx1Var) {
        d();
        this.n.add(qx1Var);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        Object remove = this.n.remove(i);
        ((AbstractList) this).modCount++;
        return f(remove);
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        d();
        return f(this.n.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n.size();
    }

    public e22(ArrayList arrayList) {
        this.n = arrayList;
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        d();
        if (collection instanceof c22) {
            collection = ((c22) collection).b();
        }
        boolean addAll = this.n.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    public e22(boolean z) {
        super(false);
        this.n = Collections.emptyList();
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // androidx.appcompat.view.menu.fx1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }
}
