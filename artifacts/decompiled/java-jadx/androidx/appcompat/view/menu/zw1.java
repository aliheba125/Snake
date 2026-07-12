package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zw1 extends FutureTask implements Comparable {
    public final long m;
    public final boolean n;
    public final String o;
    public final /* synthetic */ jw1 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zw1(jw1 jw1Var, Runnable runnable, boolean z, String str) {
        super(ol1.a().b(runnable), null);
        AtomicLong atomicLong;
        this.p = jw1Var;
        mj0.i(str);
        atomicLong = jw1.l;
        long andIncrement = atomicLong.getAndIncrement();
        this.m = andIncrement;
        this.o = str;
        this.n = z;
        if (andIncrement == Long.MAX_VALUE) {
            jw1Var.l().G().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        zw1 zw1Var = (zw1) obj;
        boolean z = this.n;
        if (z != zw1Var.n) {
            return z ? -1 : 1;
        }
        long j = this.m;
        long j2 = zw1Var.m;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.p.l().I().b("Two tasks share the same index. index", Long.valueOf(this.m));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        this.p.l().G().b(this.o, th);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zw1(jw1 jw1Var, Callable callable, boolean z, String str) {
        super(ol1.a().a(callable));
        AtomicLong atomicLong;
        this.p = jw1Var;
        mj0.i(str);
        atomicLong = jw1.l;
        long andIncrement = atomicLong.getAndIncrement();
        this.m = andIncrement;
        this.o = str;
        this.n = z;
        if (andIncrement == Long.MAX_VALUE) {
            jw1Var.l().G().a("Tasks index overflow");
        }
    }
}
