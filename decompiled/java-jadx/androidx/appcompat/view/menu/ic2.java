package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class ic2 extends gg1 {
    public final /* synthetic */ bb2 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ic2(h72 h72Var, String str, bb2 bb2Var) {
        super(str);
        this.o = bb2Var;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        iu1.g("getValue", 2, list);
        qg1 b = pw1Var.b((qg1) list.get(0));
        qg1 b2 = pw1Var.b((qg1) list.get(1));
        String h = this.o.h(b.g());
        return h != null ? new ug1(h) : b2;
    }
}
