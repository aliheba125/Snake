package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class y12 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ String n = null;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ d02 r;

    public y12(d02 d02Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.r = d02Var;
        this.m = atomicReference;
        this.o = str2;
        this.p = str3;
        this.q = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.r.a.J().T(this.m, null, this.o, this.p, this.q);
    }
}
