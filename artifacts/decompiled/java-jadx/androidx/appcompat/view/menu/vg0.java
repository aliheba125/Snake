package androidx.appcompat.view.menu;

import java.util.Comparator;

/* loaded from: classes.dex */
public abstract class vg0 implements Comparator {
    public static vg0 a(Comparator comparator) {
        return comparator instanceof vg0 ? (vg0) comparator : new id(comparator);
    }

    public static vg0 c() {
        return pe0.m;
    }

    public l40 b(Iterable iterable) {
        return l40.z(this, iterable);
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public vg0 d() {
        return e(ya0.b());
    }

    public vg0 e(pw pwVar) {
        return new f9(pwVar, this);
    }
}
