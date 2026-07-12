package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class he1 implements Runnable {
    public final /* synthetic */ String m;
    public final /* synthetic */ long n;
    public final /* synthetic */ oh1 o;

    public he1(oh1 oh1Var, String str, long j) {
        this.o = oh1Var;
        this.m = str;
        this.n = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        oh1.y(this.o, this.m, this.n);
    }
}
