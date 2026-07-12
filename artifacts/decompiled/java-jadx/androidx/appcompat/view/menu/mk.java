package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class mk implements l41 {
    public final String a;
    public final nx b;

    public mk(Set set, nx nxVar) {
        this.a = e(set);
        this.b = nxVar;
    }

    public static ud c() {
        return ud.e(l41.class).b(il.l(t80.class)).f(new de() { // from class: androidx.appcompat.view.menu.lk
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                l41 d;
                d = mk.d(xdVar);
                return d;
            }
        }).d();
    }

    public static /* synthetic */ l41 d(xd xdVar) {
        return new mk(xdVar.c(t80.class), nx.a());
    }

    public static String e(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            t80 t80Var = (t80) it.next();
            sb.append(t80Var.b());
            sb.append('/');
            sb.append(t80Var.c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // androidx.appcompat.view.menu.l41
    public String a() {
        if (this.b.b().isEmpty()) {
            return this.a;
        }
        return this.a + ' ' + e(this.b.b());
    }
}
