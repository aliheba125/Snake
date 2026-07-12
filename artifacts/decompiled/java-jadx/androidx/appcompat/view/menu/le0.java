package androidx.appcompat.view.menu;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public class le0 implements ThreadFactory {
    public final String a;
    public final ThreadFactory b = Executors.defaultThreadFactory();

    public le0(String str) {
        mj0.j(str, "Name must not be null");
        this.a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.b.newThread(new oe1(runnable, 0));
        newThread.setName(this.a);
        return newThread;
    }
}
