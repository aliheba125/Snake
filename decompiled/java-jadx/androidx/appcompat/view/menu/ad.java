package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class ad extends zc {
    public static boolean n(Iterable iterable, Object obj) {
        z50.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).contains(obj) : o(iterable, obj) >= 0;
    }

    public static final int o(Iterable iterable, Object obj) {
        z50.e(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i = 0;
        for (Object obj2 : iterable) {
            if (i < 0) {
                sc.i();
            }
            if (z50.a(obj, obj2)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final Appendable p(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, fw fwVar) {
        z50.e(iterable, "<this>");
        z50.e(appendable, "buffer");
        z50.e(charSequence, "separator");
        z50.e(charSequence2, "prefix");
        z50.e(charSequence3, "postfix");
        z50.e(charSequence4, "truncated");
        appendable.append(charSequence2);
        int i2 = 0;
        for (Object obj : iterable) {
            i2++;
            if (i2 > 1) {
                appendable.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            ox0.a(appendable, obj, fwVar);
        }
        if (i >= 0 && i2 > i) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
        return appendable;
    }

    public static final String q(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, fw fwVar) {
        z50.e(iterable, "<this>");
        z50.e(charSequence, "separator");
        z50.e(charSequence2, "prefix");
        z50.e(charSequence3, "postfix");
        z50.e(charSequence4, "truncated");
        String sb = ((StringBuilder) p(iterable, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, fwVar)).toString();
        z50.d(sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    public static /* synthetic */ String r(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, fw fwVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i2 & 32) != 0) {
            fwVar = null;
        }
        return q(iterable, charSequence, charSequence5, charSequence6, i3, charSequence7, fwVar);
    }

    public static Object s(List list) {
        z50.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(sc.f(list));
    }

    public static final Collection t(Iterable iterable, Collection collection) {
        z50.e(iterable, "<this>");
        z50.e(collection, "destination");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
        return collection;
    }

    public static List u(Iterable iterable) {
        z50.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return sc.h(v(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return sc.e();
        }
        if (size != 1) {
            return w(collection);
        }
        return rc.b(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final List v(Iterable iterable) {
        z50.e(iterable, "<this>");
        return iterable instanceof Collection ? w((Collection) iterable) : (List) t(iterable, new ArrayList());
    }

    public static List w(Collection collection) {
        z50.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set x(Iterable iterable) {
        Set b;
        int a;
        z50.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return ht0.c((Set) t(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            b = ht0.b();
            return b;
        }
        if (size == 1) {
            return gt0.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        a = bb0.a(collection.size());
        return (Set) t(iterable, new LinkedHashSet(a));
    }
}
