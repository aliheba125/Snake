package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.m40;
import androidx.appcompat.view.menu.n40;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class p40 extends n40 {
    public final transient o40 o;

    public static final class a extends n40.a {
        public p40 a() {
            Collection entrySet = this.a.entrySet();
            Comparator comparator = this.b;
            if (comparator != null) {
                entrySet = vg0.a(comparator).d().b(entrySet);
            }
            return p40.e(entrySet, this.c);
        }
    }

    public p40(m40 m40Var, int i, Comparator comparator) {
        super(m40Var, i);
        this.o = d(comparator);
    }

    public static o40 d(Comparator comparator) {
        return comparator == null ? o40.u() : q40.E(comparator);
    }

    public static p40 e(Collection collection, Comparator comparator) {
        if (collection.isEmpty()) {
            return f();
        }
        m40.a aVar = new m40.a(collection.size());
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            o40 g = g(comparator, (Collection) entry.getValue());
            if (!g.isEmpty()) {
                aVar.e(key, g);
                i += g.size();
            }
        }
        return new p40(aVar.b(), i, comparator);
    }

    public static p40 f() {
        return Cdo.p;
    }

    public static o40 g(Comparator comparator, Collection collection) {
        return comparator == null ? o40.r(collection) : q40.B(comparator, collection);
    }
}
