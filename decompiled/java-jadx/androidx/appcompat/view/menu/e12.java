package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class e12 implements Runnable {
    public final /* synthetic */ boolean m;
    public final /* synthetic */ d02 n;

    public e12(d02 d02Var, boolean z) {
        this.n = d02Var;
        this.m = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean p = this.n.a.p();
        boolean o = this.n.a.o();
        this.n.a.m(this.m);
        if (o == this.m) {
            this.n.a.l().K().b("Default data collection state already set to", Boolean.valueOf(this.m));
        }
        if (this.n.a.p() == p || this.n.a.p() != this.n.a.o()) {
            this.n.a.l().M().c("Default data collection is different than actual status", Boolean.valueOf(this.m), Boolean.valueOf(p));
        }
        this.n.t0();
    }
}
