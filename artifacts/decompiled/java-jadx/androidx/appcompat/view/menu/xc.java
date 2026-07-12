package androidx.appcompat.view.menu;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class xc extends wc {
    public static boolean k(Collection collection, Iterable iterable) {
        z50.e(collection, "<this>");
        z50.e(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static final boolean l(Iterable iterable, fw fwVar, boolean z) {
        Iterator it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (((Boolean) fwVar.i(it.next())).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }

    public static boolean m(Iterable iterable, fw fwVar) {
        z50.e(iterable, "<this>");
        z50.e(fwVar, "predicate");
        return l(iterable, fwVar, false);
    }
}
