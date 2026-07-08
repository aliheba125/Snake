package androidx.appcompat.view.menu;

import android.view.View;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class yv {
    public static final yv a;
    public static final aw b;
    public static final aw c;

    static {
        yv yvVar = new yv();
        a = yvVar;
        b = new zv();
        c = yvVar.b();
    }

    public static final void a(av avVar, av avVar2, boolean z, o4 o4Var, boolean z2) {
        z50.e(avVar, "inFragment");
        z50.e(avVar2, "outFragment");
        z50.e(o4Var, "sharedElements");
        if (z) {
            avVar2.t();
        } else {
            avVar.t();
        }
    }

    public static final void c(o4 o4Var, o4 o4Var2) {
        z50.e(o4Var, "<this>");
        z50.e(o4Var2, "namedViews");
        int size = o4Var.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            }
            if (!o4Var2.containsKey((String) o4Var.m(size))) {
                o4Var.k(size);
            }
        }
    }

    public static final void d(List list, int i) {
        z50.e(list, "views");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(i);
        }
    }

    public final aw b() {
        try {
            z50.c(bw.class, "null cannot be cast to non-null type java.lang.Class<androidx.fragment.app.FragmentTransitionImpl>");
            return (aw) bw.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
