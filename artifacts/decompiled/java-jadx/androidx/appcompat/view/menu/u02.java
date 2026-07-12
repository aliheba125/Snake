package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class u02 implements Executor {
    public final /* synthetic */ d02 m;

    public u02(d02 d02Var) {
        this.m = d02Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.m.h().D(runnable);
    }
}
