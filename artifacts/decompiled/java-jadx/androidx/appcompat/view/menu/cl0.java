package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class cl0 implements x41 {
    public boolean a = false;
    public boolean b = false;
    public ir c;
    public final zk0 d;

    public cl0(zk0 zk0Var) {
        this.d = zk0Var;
    }

    public final void a() {
        if (this.a) {
            throw new no("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
    }

    public void b(ir irVar, boolean z) {
        this.a = false;
        this.c = irVar;
        this.b = z;
    }

    @Override // androidx.appcompat.view.menu.x41
    public x41 c(String str) {
        a();
        this.d.g(this.c, str, this.b);
        return this;
    }

    @Override // androidx.appcompat.view.menu.x41
    public x41 d(boolean z) {
        a();
        this.d.l(this.c, z, this.b);
        return this;
    }
}
