package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class lf2 extends gg1 {
    public ue1 o;

    public lf2(ue1 ue1Var) {
        super("internal.registerCallback");
        this.o = ue1Var;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        iu1.g(this.m, 3, list);
        String g = pw1Var.b((qg1) list.get(0)).g();
        qg1 b = pw1Var.b((qg1) list.get(1));
        if (!(b instanceof sg1)) {
            throw new IllegalArgumentException("Invalid callback type");
        }
        qg1 b2 = pw1Var.b((qg1) list.get(2));
        if (!(b2 instanceof og1)) {
            throw new IllegalArgumentException("Invalid callback params");
        }
        og1 og1Var = (og1) b2;
        if (!og1Var.k("type")) {
            throw new IllegalArgumentException("Undefined rule type");
        }
        this.o.c(g, og1Var.k("priority") ? iu1.i(og1Var.h("priority").f().doubleValue()) : 1000, (sg1) b, og1Var.h("type").g());
        return qg1.e;
    }
}
