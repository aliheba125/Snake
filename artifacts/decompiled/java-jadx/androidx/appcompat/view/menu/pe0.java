package androidx.appcompat.view.menu;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class pe0 extends vg0 implements Serializable {
    public static final pe0 m = new pe0();

    @Override // androidx.appcompat.view.menu.vg0, java.util.Comparator
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable comparable, Comparable comparable2) {
        nj0.i(comparable);
        nj0.i(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
