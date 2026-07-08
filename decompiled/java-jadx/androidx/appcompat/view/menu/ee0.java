package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class ee0 implements pf, Consumer {
    public final Context a;
    public final ReentrantLock b;
    public y91 c;
    public final Set d;

    public ee0(Context context) {
        z50.e(context, "context");
        this.a = context;
        this.b = new ReentrantLock();
        this.d = new LinkedHashSet();
    }

    @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void accept(WindowLayoutInfo windowLayoutInfo) {
        z50.e(windowLayoutInfo, "value");
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            this.c = oq.a.b(this.a, windowLayoutInfo);
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((pf) it.next()).accept(this.c);
            }
            r31 r31Var = r31.a;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void b(pf pfVar) {
        z50.e(pfVar, "listener");
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            y91 y91Var = this.c;
            if (y91Var != null) {
                pfVar.accept(y91Var);
            }
            this.d.add(pfVar);
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final boolean c() {
        return this.d.isEmpty();
    }

    public final void d(pf pfVar) {
        z50.e(pfVar, "listener");
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            this.d.remove(pfVar);
        } finally {
            reentrantLock.unlock();
        }
    }
}
