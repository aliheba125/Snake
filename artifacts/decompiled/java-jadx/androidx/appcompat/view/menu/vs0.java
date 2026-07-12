package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class vs0 extends us0 {
    public static final Collection c(ps0 ps0Var, Collection collection) {
        z50.e(ps0Var, "<this>");
        z50.e(collection, "destination");
        Iterator it = ps0Var.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
        return collection;
    }

    public static List d(ps0 ps0Var) {
        z50.e(ps0Var, "<this>");
        return sc.h(e(ps0Var));
    }

    public static final List e(ps0 ps0Var) {
        z50.e(ps0Var, "<this>");
        return (List) c(ps0Var, new ArrayList());
    }
}
