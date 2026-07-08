package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class fy1 implements Callable {
    public final /* synthetic */ cb2 a;
    public final /* synthetic */ kx1 b;

    public fy1(kx1 kx1Var, cb2 cb2Var) {
        this.b = kx1Var;
        this.a = cb2Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.b.l;
        o82Var.o0();
        o82Var2 = this.b.l;
        return new hg1(o82Var2.e(this.a.m));
    }
}
