package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class bf2 extends gg1 {
    public boolean o;
    public boolean p;
    public final /* synthetic */ ke2 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf2(ke2 ke2Var, boolean z, boolean z2) {
        super("log");
        this.q = ke2Var;
        this.o = z;
        this.p = z2;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        hf2 hf2Var;
        hf2 hf2Var2;
        hf2 hf2Var3;
        iu1.k("log", 1, list);
        if (list.size() == 1) {
            hf2Var3 = this.q.o;
            hf2Var3.a(qe2.INFO, pw1Var.b((qg1) list.get(0)).g(), Collections.emptyList(), this.o, this.p);
            return qg1.e;
        }
        qe2 c = qe2.c(iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue()));
        String g = pw1Var.b((qg1) list.get(1)).g();
        if (list.size() == 2) {
            hf2Var2 = this.q.o;
            hf2Var2.a(c, g, Collections.emptyList(), this.o, this.p);
            return qg1.e;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 2; i < Math.min(list.size(), 5); i++) {
            arrayList.add(pw1Var.b((qg1) list.get(i)).g());
        }
        hf2Var = this.q.o;
        hf2Var.a(c, g, arrayList, this.o, this.p);
        return qg1.e;
    }
}
