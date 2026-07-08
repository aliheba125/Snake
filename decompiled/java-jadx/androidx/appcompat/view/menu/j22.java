package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class j22 implements Runnable {
    public final /* synthetic */ Boolean m;
    public final /* synthetic */ d02 n;

    public j22(d02 d02Var, Boolean bool) {
        this.n = d02Var;
        this.m = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.S(this.m, true);
    }
}
