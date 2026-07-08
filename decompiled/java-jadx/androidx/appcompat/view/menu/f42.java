package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class f42 implements Runnable {
    public final /* synthetic */ long m;
    public final /* synthetic */ r32 n;

    public f42(r32 r32Var, long j) {
        this.n = r32Var;
        this.m = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.o().v(this.m);
        this.n.e = null;
    }
}
