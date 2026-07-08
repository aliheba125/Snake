package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class bw1 implements hf2 {
    public final /* synthetic */ rv1 a;

    public bw1(rv1 rv1Var) {
        this.a = rv1Var;
    }

    @Override // androidx.appcompat.view.menu.hf2
    public final void a(qe2 qe2Var, String str, List list, boolean z, boolean z2) {
        int i = fw1.a[qe2Var.ordinal()];
        st1 J = i != 1 ? i != 2 ? i != 3 ? i != 4 ? this.a.l().J() : this.a.l().K() : z ? this.a.l().N() : !z2 ? this.a.l().M() : this.a.l().L() : z ? this.a.l().I() : !z2 ? this.a.l().H() : this.a.l().G() : this.a.l().F();
        int size = list.size();
        if (size == 1) {
            J.b(str, list.get(0));
            return;
        }
        if (size == 2) {
            J.c(str, list.get(0), list.get(1));
        } else if (size != 3) {
            J.a(str);
        } else {
            J.d(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
