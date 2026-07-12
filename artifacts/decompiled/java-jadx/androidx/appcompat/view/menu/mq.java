package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class mq implements b81 {
    public final WindowLayoutComponent a;
    public final ReentrantLock b;
    public final Map c;
    public final Map d;

    public mq(WindowLayoutComponent windowLayoutComponent) {
        z50.e(windowLayoutComponent, "component");
        this.a = windowLayoutComponent;
        this.b = new ReentrantLock();
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
    }

    @Override // androidx.appcompat.view.menu.b81
    public void a(Context context, Executor executor, pf pfVar) {
        r31 r31Var;
        z50.e(context, "context");
        z50.e(executor, "executor");
        z50.e(pfVar, "callback");
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            ee0 ee0Var = (ee0) this.c.get(context);
            if (ee0Var != null) {
                ee0Var.b(pfVar);
                this.d.put(pfVar, context);
                r31Var = r31.a;
            } else {
                r31Var = null;
            }
            if (r31Var == null) {
                ee0 ee0Var2 = new ee0(context);
                this.c.put(context, ee0Var2);
                this.d.put(pfVar, context);
                ee0Var2.b(pfVar);
                this.a.addWindowLayoutInfoListener(context, ee0Var2);
            }
            r31 r31Var2 = r31.a;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // androidx.appcompat.view.menu.b81
    public void b(pf pfVar) {
        z50.e(pfVar, "callback");
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            Context context = (Context) this.d.get(pfVar);
            if (context == null) {
                reentrantLock.unlock();
                return;
            }
            ee0 ee0Var = (ee0) this.c.get(context);
            if (ee0Var == null) {
                reentrantLock.unlock();
                return;
            }
            ee0Var.d(pfVar);
            this.d.remove(pfVar);
            if (ee0Var.c()) {
                this.c.remove(context);
                this.a.removeWindowLayoutInfoListener(ee0Var);
            }
            r31 r31Var = r31.a;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
