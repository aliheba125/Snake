package androidx.window.layout.adapter.sidecar;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.view.menu.b81;
import androidx.appcompat.view.menu.g51;
import androidx.appcompat.view.menu.lj;
import androidx.appcompat.view.menu.pf;
import androidx.appcompat.view.menu.r31;
import androidx.appcompat.view.menu.sc;
import androidx.appcompat.view.menu.y91;
import androidx.appcompat.view.menu.z50;
import androidx.window.layout.adapter.sidecar.a;
import androidx.window.layout.adapter.sidecar.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class b implements b81 {
    public static volatile b d;
    public androidx.window.layout.adapter.sidecar.a a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public static final a c = new a(null);
    public static final ReentrantLock e = new ReentrantLock();

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final b a(Context context) {
            z50.e(context, "context");
            if (b.d == null) {
                ReentrantLock reentrantLock = b.e;
                reentrantLock.lock();
                try {
                    if (b.d == null) {
                        b.d = new b(b.c.b(context));
                    }
                    r31 r31Var = r31.a;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            b bVar = b.d;
            z50.b(bVar);
            return bVar;
        }

        public final androidx.window.layout.adapter.sidecar.a b(Context context) {
            z50.e(context, "context");
            try {
                if (!c(SidecarCompat.f.c())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.l()) {
                    return sidecarCompat;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean c(g51 g51Var) {
            return g51Var != null && g51Var.compareTo(g51.r.a()) >= 0;
        }
    }

    /* renamed from: androidx.window.layout.adapter.sidecar.b$b, reason: collision with other inner class name */
    public final class C0057b implements a.InterfaceC0056a {
        public C0057b() {
        }

        @Override // androidx.window.layout.adapter.sidecar.a.InterfaceC0056a
        public void a(Activity activity, y91 y91Var) {
            z50.e(activity, "activity");
            z50.e(y91Var, "newLayout");
            Iterator it = b.this.g().iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (z50.a(cVar.d(), activity)) {
                    cVar.b(y91Var);
                }
            }
        }
    }

    public static final class c {
        public final Activity a;
        public final Executor b;
        public final pf c;
        public y91 d;

        public c(Activity activity, Executor executor, pf pfVar) {
            z50.e(activity, "activity");
            z50.e(executor, "executor");
            z50.e(pfVar, "callback");
            this.a = activity;
            this.b = executor;
            this.c = pfVar;
        }

        public static final void c(c cVar, y91 y91Var) {
            z50.e(cVar, "this$0");
            z50.e(y91Var, "$newLayoutInfo");
            cVar.c.accept(y91Var);
        }

        public final void b(final y91 y91Var) {
            z50.e(y91Var, "newLayoutInfo");
            this.d = y91Var;
            this.b.execute(new Runnable() { // from class: androidx.appcompat.view.menu.ju0
                @Override // java.lang.Runnable
                public final void run() {
                    b.c.c(b.c.this, y91Var);
                }
            });
        }

        public final Activity d() {
            return this.a;
        }

        public final pf e() {
            return this.c;
        }

        public final y91 f() {
            return this.d;
        }
    }

    public b(androidx.window.layout.adapter.sidecar.a aVar) {
        this.a = aVar;
        androidx.window.layout.adapter.sidecar.a aVar2 = this.a;
        if (aVar2 != null) {
            aVar2.a(new C0057b());
        }
    }

    @Override // androidx.appcompat.view.menu.b81
    public void a(Context context, Executor executor, pf pfVar) {
        Object obj;
        z50.e(context, "context");
        z50.e(executor, "executor");
        z50.e(pfVar, "callback");
        r31 r31Var = null;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            ReentrantLock reentrantLock = e;
            reentrantLock.lock();
            try {
                androidx.window.layout.adapter.sidecar.a aVar = this.a;
                if (aVar == null) {
                    pfVar.accept(new y91(sc.e()));
                    return;
                }
                boolean h = h(activity);
                c cVar = new c(activity, executor, pfVar);
                this.b.add(cVar);
                if (h) {
                    Iterator it = this.b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        } else {
                            obj = it.next();
                            if (z50.a(activity, ((c) obj).d())) {
                                break;
                            }
                        }
                    }
                    c cVar2 = (c) obj;
                    y91 f = cVar2 != null ? cVar2.f() : null;
                    if (f != null) {
                        cVar.b(f);
                    }
                } else {
                    aVar.b(activity);
                }
                r31 r31Var2 = r31.a;
                reentrantLock.unlock();
                r31Var = r31.a;
            } finally {
                reentrantLock.unlock();
            }
        }
        if (r31Var == null) {
            pfVar.accept(new y91(sc.e()));
        }
    }

    @Override // androidx.appcompat.view.menu.b81
    public void b(pf pfVar) {
        z50.e(pfVar, "callback");
        synchronized (e) {
            try {
                if (this.a == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar.e() == pfVar) {
                        z50.d(cVar, "callbackWrapper");
                        arrayList.add(cVar);
                    }
                }
                this.b.removeAll(arrayList);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    f(((c) it2.next()).d());
                }
                r31 r31Var = r31.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (z50.a(((c) it.next()).d(), activity)) {
                    return;
                }
            }
        }
        androidx.window.layout.adapter.sidecar.a aVar = this.a;
        if (aVar != null) {
            aVar.c(activity);
        }
    }

    public final CopyOnWriteArrayList g() {
        return this.b;
    }

    public final boolean h(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        if ((copyOnWriteArrayList instanceof Collection) && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (z50.a(((c) it.next()).d(), activity)) {
                return true;
            }
        }
        return false;
    }
}
