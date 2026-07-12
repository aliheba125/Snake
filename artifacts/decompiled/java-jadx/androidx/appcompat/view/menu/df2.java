package androidx.appcompat.view.menu;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class df2 implements Executor {
    public final Handler m = new ge1(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.m.post(runnable);
    }
}
