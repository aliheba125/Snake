package androidx.appcompat.view.menu;

import java.util.Map;

/* loaded from: classes.dex */
public final class nu1 implements Runnable {
    public final au1 m;
    public final int n;
    public final Throwable o;
    public final byte[] p;
    public final String q;
    public final Map r;

    @Override // java.lang.Runnable
    public final void run() {
        this.m.a(this.q, this.n, this.o, this.p, this.r);
    }

    public nu1(String str, au1 au1Var, int i, Throwable th, byte[] bArr, Map map) {
        mj0.i(au1Var);
        this.m = au1Var;
        this.n = i;
        this.o = th;
        this.p = bArr;
        this.q = str;
        this.r = map;
    }
}
