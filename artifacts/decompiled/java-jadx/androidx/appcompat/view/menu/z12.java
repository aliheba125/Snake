package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class z12 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ String n = null;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ d02 q;

    public z12(d02 d02Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.q = d02Var;
        this.m = atomicReference;
        this.o = str2;
        this.p = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.q.a.J().S(this.m, null, this.o, this.p);
    }
}
