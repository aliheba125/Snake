package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class z22 extends gg1 {
    public final cf1 o;

    public z22(cf1 cf1Var) {
        super("internal.eventLogger");
        this.o = cf1Var;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        iu1.g(this.m, 3, list);
        String g = pw1Var.b((qg1) list.get(0)).g();
        long a = (long) iu1.a(pw1Var.b((qg1) list.get(1)).f().doubleValue());
        qg1 b = pw1Var.b((qg1) list.get(2));
        this.o.c(g, a, b instanceof og1 ? iu1.e((og1) b) : new HashMap());
        return qg1.e;
    }
}
