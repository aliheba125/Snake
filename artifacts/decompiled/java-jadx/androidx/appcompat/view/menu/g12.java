package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class g12 implements hx {
    public final /* synthetic */ y72 a;
    public final /* synthetic */ d02 b;

    public g12(d02 d02Var, y72 y72Var) {
        this.b = d02Var;
        this.a = y72Var;
    }

    @Override // androidx.appcompat.view.menu.hx
    public final void a(Object obj) {
        this.b.n();
        this.b.i = false;
        this.b.r0();
        this.b.l().F().b("registerTriggerAsync ran. uri", this.a.m);
    }

    @Override // androidx.appcompat.view.menu.hx
    public final void b(Throwable th) {
        this.b.n();
        this.b.i = false;
        this.b.r0();
        this.b.l().G().b("registerTriggerAsync failed with throwable", th);
    }
}
