package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public final class g60 extends s60 {
    public static final AtomicIntegerFieldUpdater r = AtomicIntegerFieldUpdater.newUpdater(g60.class, "_invoked");
    private volatile int _invoked;
    public final fw q;

    public g60(fw fwVar) {
        this.q = fwVar;
    }

    @Override // androidx.appcompat.view.menu.fw
    public /* bridge */ /* synthetic */ Object i(Object obj) {
        w((Throwable) obj);
        return r31.a;
    }

    @Override // androidx.appcompat.view.menu.pd
    public void w(Throwable th) {
        if (r.compareAndSet(this, 0, 1)) {
            this.q.i(th);
        }
    }
}
