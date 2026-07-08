package androidx.appcompat.view.menu;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class cb0 extends bb0 {
    public static Map d() {
        go goVar = go.m;
        z50.c(goVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return goVar;
    }

    public static final Map e(Map map) {
        Map d;
        z50.e(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : bb0.c(map);
        }
        d = d();
        return d;
    }

    public static final void f(Map map, Iterable iterable) {
        z50.e(map, "<this>");
        z50.e(iterable, "pairs");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            lh0 lh0Var = (lh0) it.next();
            map.put(lh0Var.a(), lh0Var.b());
        }
    }

    public static Map g(Iterable iterable) {
        Map d;
        int a;
        z50.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return e(h(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            d = d();
            return d;
        }
        if (size == 1) {
            return bb0.b((lh0) (iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next()));
        }
        a = bb0.a(collection.size());
        return h(iterable, new LinkedHashMap(a));
    }

    public static final Map h(Iterable iterable, Map map) {
        z50.e(iterable, "<this>");
        z50.e(map, "destination");
        f(map, iterable);
        return map;
    }
}
