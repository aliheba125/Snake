package androidx.appcompat.view.menu;

import java.util.Comparator;
import java.util.SortedSet;

/* loaded from: classes.dex */
public abstract class bw0 {
    public static Comparator a(SortedSet sortedSet) {
        Comparator comparator = sortedSet.comparator();
        return comparator == null ? vg0.c() : comparator;
    }

    public static boolean b(Comparator comparator, Iterable iterable) {
        Comparator comparator2;
        nj0.i(comparator);
        nj0.i(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else {
            if (!(iterable instanceof aw0)) {
                return false;
            }
            comparator2 = ((aw0) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
