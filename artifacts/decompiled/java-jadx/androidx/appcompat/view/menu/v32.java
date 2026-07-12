package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class v32 implements Runnable {
    public final /* synthetic */ Bundle m;
    public final /* synthetic */ t32 n;
    public final /* synthetic */ t32 o;
    public final /* synthetic */ long p;
    public final /* synthetic */ r32 q;

    public v32(r32 r32Var, Bundle bundle, t32 t32Var, t32 t32Var2, long j) {
        this.q = r32Var;
        this.m = bundle;
        this.n = t32Var;
        this.o = t32Var2;
        this.p = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r32.J(this.q, this.m, this.n, this.o, this.p);
    }
}
