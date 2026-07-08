package androidx.appcompat.view.menu;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class jf1 implements nf1 {
    public final CountDownLatch a = new CountDownLatch(1);

    public /* synthetic */ jf1(ef1 ef1Var) {
    }

    @Override // androidx.appcompat.view.menu.mg0
    public final void a(Object obj) {
        this.a.countDown();
    }

    public final void b() {
        this.a.await();
    }

    @Override // androidx.appcompat.view.menu.fg0
    public final void c() {
        this.a.countDown();
    }

    @Override // androidx.appcompat.view.menu.ig0
    public final void d(Exception exc) {
        this.a.countDown();
    }

    public final boolean e(long j, TimeUnit timeUnit) {
        return this.a.await(j, timeUnit);
    }
}
