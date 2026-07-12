package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class pi1 extends gh1 {
    public pi1() {
        this.a.add(tj1.AND);
        this.a.add(tj1.NOT);
        this.a.add(tj1.OR);
    }

    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        int i = vi1.a[iu1.c(str).ordinal()];
        if (i == 1) {
            iu1.f(tj1.AND, 2, list);
            qg1 b = pw1Var.b((qg1) list.get(0));
            return !b.d().booleanValue() ? b : pw1Var.b((qg1) list.get(1));
        }
        if (i == 2) {
            iu1.f(tj1.NOT, 1, list);
            return new sf1(Boolean.valueOf(!pw1Var.b((qg1) list.get(0)).d().booleanValue()));
        }
        if (i != 3) {
            return super.a(str);
        }
        iu1.f(tj1.OR, 2, list);
        qg1 b2 = pw1Var.b((qg1) list.get(0));
        return b2.d().booleanValue() ? b2 : pw1Var.b((qg1) list.get(1));
    }
}
