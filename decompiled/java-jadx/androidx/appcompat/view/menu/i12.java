package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class i12 implements Runnable {
    public final /* synthetic */ long m;
    public final /* synthetic */ d02 n;

    public i12(d02 d02Var, long j) {
        this.n = d02Var;
        this.m = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.i().k.b(this.m);
        this.n.l().F().b("Session timeout duration set", Long.valueOf(this.m));
    }
}
