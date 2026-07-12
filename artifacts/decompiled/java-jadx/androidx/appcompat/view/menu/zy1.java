package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zy1 implements Callable {
    public final /* synthetic */ String a;
    public final /* synthetic */ kx1 b;

    public zy1(kx1 kx1Var, String str) {
        this.b = kx1Var;
        this.a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.b.l;
        o82Var.o0();
        o82Var2 = this.b.l;
        return o82Var2.e0().M0(this.a);
    }
}
