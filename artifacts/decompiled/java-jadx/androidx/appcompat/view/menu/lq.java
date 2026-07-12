package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.view.menu.qf;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class lq implements b81 {
    public final WindowLayoutComponent a;
    public final qf b;
    public final ReentrantLock c;
    public final Map d;
    public final Map e;
    public final Map f;

    public /* synthetic */ class a extends fx implements fw {
        public a(Object obj) {
            super(1, obj, ee0.class, "accept", "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V", 0);
        }

        @Override // androidx.appcompat.view.menu.fw
        public /* bridge */ /* synthetic */ Object i(Object obj) {
            k((WindowLayoutInfo) obj);
            return r31.a;
        }

        public final void k(WindowLayoutInfo windowLayoutInfo) {
            z50.e(windowLayoutInfo, "p0");
            ((ee0) this.n).accept(windowLayoutInfo);
        }
    }

    public lq(WindowLayoutComponent windowLayoutComponent, qf qfVar) {
        z50.e(windowLayoutComponent, "component");
        z50.e(qfVar, "consumerAdapter");
        this.a = windowLayoutComponent;
        this.b = qfVar;
        this.c = new ReentrantLock();
        this.d = new LinkedHashMap();
        this.e = new LinkedHashMap();
        this.f = new LinkedHashMap();
    }

    @Override // androidx.appcompat.view.menu.b81
    public void a(Context context, Executor executor, pf pfVar) {
        r31 r31Var;
        z50.e(context, "context");
        z50.e(executor, "executor");
        z50.e(pfVar, "callback");
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            ee0 ee0Var = (ee0) this.d.get(context);
            if (ee0Var != null) {
                ee0Var.b(pfVar);
                this.e.put(pfVar, context);
                r31Var = r31.a;
            } else {
                r31Var = null;
            }
            if (r31Var == null) {
                ee0 ee0Var2 = new ee0(context);
                this.d.put(context, ee0Var2);
                this.e.put(pfVar, context);
                ee0Var2.b(pfVar);
                if (!(context instanceof Activity)) {
                    ee0Var2.accept(new WindowLayoutInfo(sc.e()));
                    reentrantLock.unlock();
                    return;
                } else {
                    this.f.put(ee0Var2, this.b.c(this.a, do0.b(WindowLayoutInfo.class), "addWindowLayoutInfoListener", "removeWindowLayoutInfoListener", (Activity) context, new a(ee0Var2)));
                }
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
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            Context context = (Context) this.e.get(pfVar);
            if (context == null) {
                reentrantLock.unlock();
                return;
            }
            ee0 ee0Var = (ee0) this.d.get(context);
            if (ee0Var == null) {
                reentrantLock.unlock();
                return;
            }
            ee0Var.d(pfVar);
            this.e.remove(pfVar);
            if (ee0Var.c()) {
                this.d.remove(context);
                qf.b bVar = (qf.b) this.f.remove(ee0Var);
                if (bVar != null) {
                    bVar.a();
                }
            }
            r31 r31Var = r31.a;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
