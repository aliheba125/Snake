package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class rx1 implements Runnable {
    public final /* synthetic */ String m;
    public final /* synthetic */ String n;
    public final /* synthetic */ String o;
    public final /* synthetic */ long p;
    public final /* synthetic */ kx1 q;

    public rx1(kx1 kx1Var, String str, String str2, String str3, long j) {
        this.q = kx1Var;
        this.m = str;
        this.n = str2;
        this.o = str3;
        this.p = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82 o82Var2;
        String str = this.m;
        if (str == null) {
            o82Var2 = this.q.l;
            o82Var2.D(this.n, null);
        } else {
            t32 t32Var = new t32(this.o, str, this.p);
            o82Var = this.q.l;
            o82Var.D(this.n, t32Var);
        }
    }
}
