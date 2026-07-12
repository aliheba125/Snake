package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zx1 implements Callable {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ kx1 d;

    public zx1(kx1 kx1Var, String str, String str2, String str3) {
        this.d = kx1Var;
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.d.l;
        o82Var.o0();
        o82Var2 = this.d.l;
        return o82Var2.e0().y0(this.a, this.b, this.c);
    }
}
