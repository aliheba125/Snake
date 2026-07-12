package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract /* synthetic */ class c9 {
    public static final ok a(th thVar, kh khVar, xh xhVar, tw twVar) {
        kh d = lh.d(thVar, khVar);
        rk k80Var = xhVar.g() ? new k80(d, twVar) : new rk(d, true);
        k80Var.K0(xhVar, k80Var, twVar);
        return k80Var;
    }

    public static /* synthetic */ ok b(th thVar, kh khVar, xh xhVar, tw twVar, int i, Object obj) {
        if ((i & 1) != 0) {
            khVar = bo.m;
        }
        if ((i & 2) != 0) {
            xhVar = xh.DEFAULT;
        }
        return b9.a(thVar, khVar, xhVar, twVar);
    }

    public static final q60 c(th thVar, kh khVar, xh xhVar, tw twVar) {
        kh d = lh.d(thVar, khVar);
        nw0 p80Var = xhVar.g() ? new p80(d, twVar) : new nw0(d, true);
        p80Var.K0(xhVar, p80Var, twVar);
        return p80Var;
    }

    public static /* synthetic */ q60 d(th thVar, kh khVar, xh xhVar, tw twVar, int i, Object obj) {
        if ((i & 1) != 0) {
            khVar = bo.m;
        }
        if ((i & 2) != 0) {
            xhVar = xh.DEFAULT;
        }
        return b9.c(thVar, khVar, xhVar, twVar);
    }
}
