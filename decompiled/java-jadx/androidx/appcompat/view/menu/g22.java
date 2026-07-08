package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class g22 extends i22 {
    public static final Class c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX WARN: Multi-variable type inference failed */
    public static List e(Object obj, long j, int i) {
        e22 e22Var;
        List f = f(obj, j);
        if (f.isEmpty()) {
            List e22Var2 = f instanceof c22 ? new e22(i) : ((f instanceof r42) && (f instanceof n12)) ? ((n12) f).e(i) : new ArrayList(i);
            w72.j(obj, j, e22Var2);
            return e22Var2;
        }
        if (c.isAssignableFrom(f.getClass())) {
            ArrayList arrayList = new ArrayList(f.size() + i);
            arrayList.addAll(f);
            w72.j(obj, j, arrayList);
            e22Var = arrayList;
        } else {
            if (!(f instanceof n72)) {
                if (!(f instanceof r42) || !(f instanceof n12)) {
                    return f;
                }
                n12 n12Var = (n12) f;
                if (n12Var.c()) {
                    return f;
                }
                n12 e = n12Var.e(f.size() + i);
                w72.j(obj, j, e);
                return e;
            }
            e22 e22Var3 = new e22(f.size() + i);
            e22Var3.addAll((n72) f);
            w72.j(obj, j, e22Var3);
            e22Var = e22Var3;
        }
        return e22Var;
    }

    public static List f(Object obj, long j) {
        return (List) w72.B(obj, j);
    }

    @Override // androidx.appcompat.view.menu.i22
    public final void b(Object obj, Object obj2, long j) {
        List f = f(obj2, j);
        List e = e(obj, j, f.size());
        int size = e.size();
        int size2 = f.size();
        if (size > 0 && size2 > 0) {
            e.addAll(f);
        }
        if (size > 0) {
            f = e;
        }
        w72.j(obj, j, f);
    }

    @Override // androidx.appcompat.view.menu.i22
    public final void d(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) w72.B(obj, j);
        if (list instanceof c22) {
            unmodifiableList = ((c22) list).m();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof r42) && (list instanceof n12)) {
                n12 n12Var = (n12) list;
                if (n12Var.c()) {
                    n12Var.o();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        w72.j(obj, j, unmodifiableList);
    }

    public g22() {
        super();
    }
}
