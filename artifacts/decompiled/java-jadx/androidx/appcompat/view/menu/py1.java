package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class py1 implements Callable {
    public final /* synthetic */ oi1 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ kx1 c;

    public py1(kx1 kx1Var, oi1 oi1Var, String str) {
        this.c = kx1Var;
        this.a = oi1Var;
        this.b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.c.l;
        o82Var.o0();
        o82Var2 = this.c.l;
        return o82Var2.j0().y(this.a, this.b);
    }
}
