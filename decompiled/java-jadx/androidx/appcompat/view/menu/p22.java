package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class p22 implements Runnable {
    public final /* synthetic */ fh1 m;
    public final /* synthetic */ d02 n;

    public p22(d02 d02Var, fh1 fh1Var) {
        this.n = d02Var;
        this.m = fh1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.n.i().z(this.m)) {
            this.n.t().U(false);
        } else {
            this.n.l().J().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(this.m.a()));
        }
    }
}
