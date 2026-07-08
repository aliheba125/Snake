package androidx.appcompat.view.menu;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class ri1 implements Comparator {
    public final /* synthetic */ gg1 m;
    public final /* synthetic */ pw1 n;

    public ri1(gg1 gg1Var, pw1 pw1Var) {
        this.m = gg1Var;
        this.n = pw1Var;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        qg1 qg1Var = (qg1) obj;
        qg1 qg1Var2 = (qg1) obj2;
        gg1 gg1Var = this.m;
        pw1 pw1Var = this.n;
        if (qg1Var instanceof eh1) {
            return !(qg1Var2 instanceof eh1) ? 1 : 0;
        }
        if (qg1Var2 instanceof eh1) {
            return -1;
        }
        return gg1Var == null ? qg1Var.g().compareTo(qg1Var2.g()) : (int) iu1.a(gg1Var.a(pw1Var, Arrays.asList(qg1Var, qg1Var2)).f().doubleValue());
    }
}
