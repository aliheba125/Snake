package androidx.appcompat.view.menu;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class x52 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ String n;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ cb2 q;
    public final /* synthetic */ boolean r;
    public final /* synthetic */ h42 s;

    public x52(h42 h42Var, AtomicReference atomicReference, String str, String str2, String str3, cb2 cb2Var, boolean z) {
        this.s = h42Var;
        this.m = atomicReference;
        this.n = str;
        this.o = str2;
        this.p = str3;
        this.q = cb2Var;
        this.r = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        synchronized (this.m) {
            try {
                try {
                    xs1Var = this.s.d;
                } catch (RemoteException e) {
                    this.s.l().G().d("(legacy) Failed to get user properties; remote exception", pt1.v(this.n), this.o, e);
                    this.m.set(Collections.emptyList());
                }
                if (xs1Var == null) {
                    this.s.l().G().d("(legacy) Failed to get user properties; not connected to service", pt1.v(this.n), this.o, this.p);
                    this.m.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.n)) {
                    mj0.i(this.q);
                    this.m.set(xs1Var.m1(this.o, this.p, this.r, this.q));
                } else {
                    this.m.set(xs1Var.r0(this.n, this.o, this.p, this.r));
                }
                this.s.g0();
                this.m.notify();
            } finally {
                this.m.notify();
            }
        }
    }
}
