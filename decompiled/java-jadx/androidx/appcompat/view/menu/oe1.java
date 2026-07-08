package androidx.appcompat.view.menu;

import android.os.Process;

/* loaded from: classes.dex */
public final class oe1 implements Runnable {
    public final Runnable m;

    public oe1(Runnable runnable, int i) {
        this.m = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.m.run();
    }
}
