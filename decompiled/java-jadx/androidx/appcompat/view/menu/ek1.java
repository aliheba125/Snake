package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ek1 implements Runnable {
    public final /* synthetic */ zy0 m;
    public final /* synthetic */ rm1 n;

    public ek1(rm1 rm1Var, zy0 zy0Var) {
        this.n = rm1Var;
        this.m = zy0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        nf2 nf2Var;
        nf2 nf2Var2;
        nf2 nf2Var3;
        yg ygVar;
        nf2 nf2Var4;
        nf2 nf2Var5;
        if (this.m.k()) {
            nf2Var5 = this.n.c;
            nf2Var5.q();
            return;
        }
        try {
            ygVar = this.n.b;
            Object a = ygVar.a(this.m);
            nf2Var4 = this.n.c;
            nf2Var4.p(a);
        } catch (cq0 e) {
            if (e.getCause() instanceof Exception) {
                nf2Var3 = this.n.c;
                nf2Var3.o((Exception) e.getCause());
            } else {
                nf2Var2 = this.n.c;
                nf2Var2.o(e);
            }
        } catch (Exception e2) {
            nf2Var = this.n.c;
            nf2Var.o(e2);
        }
    }
}
