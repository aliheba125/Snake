package androidx.appcompat.view.menu;

import java.lang.Thread;

/* loaded from: classes.dex */
public final class uw1 implements Thread.UncaughtExceptionHandler {
    public final String a;
    public final /* synthetic */ jw1 b;

    public uw1(jw1 jw1Var, String str) {
        this.b = jw1Var;
        mj0.i(str);
        this.a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.b.l().G().b(this.a, th);
    }
}
