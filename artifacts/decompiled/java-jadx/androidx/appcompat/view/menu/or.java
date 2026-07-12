package androidx.appcompat.view.menu;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.appcompat.view.menu.re;
import androidx.appcompat.view.menu.v7;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class or {
    public static final Object k = new Object();
    public static final Map l = new o4();
    public final Context a;
    public final String b;
    public final os c;
    public final re d;
    public final j80 g;
    public final el0 h;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final AtomicBoolean f = new AtomicBoolean();
    public final List i = new CopyOnWriteArrayList();
    public final List j = new CopyOnWriteArrayList();

    public interface a {
        void a(boolean z);
    }

    public static class b implements v7.a {
        public static AtomicReference a = new AtomicReference();

        public static void c(Context context) {
            if (qi0.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (a.get() == null) {
                    b bVar = new b();
                    if (wd1.a(a, null, bVar)) {
                        v7.c(application);
                        v7.b().a(bVar);
                    }
                }
            }
        }

        @Override // androidx.appcompat.view.menu.v7.a
        public void a(boolean z) {
            synchronized (or.k) {
                try {
                    Iterator it = new ArrayList(or.l.values()).iterator();
                    while (it.hasNext()) {
                        or orVar = (or) it.next();
                        if (orVar.e.get()) {
                            orVar.x(z);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static class c extends BroadcastReceiver {
        public static AtomicReference b = new AtomicReference();
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        public static void b(Context context) {
            if (b.get() == null) {
                c cVar = new c(context);
                if (wd1.a(b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (or.k) {
                try {
                    Iterator it = or.l.values().iterator();
                    while (it.hasNext()) {
                        ((or) it.next()).o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c();
        }
    }

    public or(final Context context, String str, os osVar) {
        this.a = (Context) mj0.i(context);
        this.b = mj0.e(str);
        this.c = (os) mj0.i(osVar);
        tw0 b2 = FirebaseInitProvider.b();
        ps.b("Firebase");
        ps.b("ComponentDiscovery");
        List b3 = ce.c(context, ComponentDiscoveryService.class).b();
        ps.a();
        ps.b("Runtime");
        re.b g = re.k(e31.INSTANCE).d(b3).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(ud.s(context, Context.class, new Class[0])).b(ud.s(this, or.class, new Class[0])).b(ud.s(osVar, os.class, new Class[0])).g(new ge());
        if (o41.a(context) && FirebaseInitProvider.c()) {
            g.b(ud.s(b2, tw0.class, new Class[0]));
        }
        re e = g.e();
        this.d = e;
        ps.a();
        this.g = new j80(new el0() { // from class: androidx.appcompat.view.menu.mr
            @Override // androidx.appcompat.view.menu.el0
            public final Object get() {
                vi u;
                u = or.this.u(context);
                return u;
            }
        });
        this.h = e.d(sj.class);
        g(new a() { // from class: androidx.appcompat.view.menu.nr
            @Override // androidx.appcompat.view.menu.or.a
            public final void a(boolean z) {
                or.this.v(z);
            }
        });
        ps.a();
    }

    public static or k() {
        or orVar;
        synchronized (k) {
            try {
                orVar = (or) l.get("[DEFAULT]");
                if (orVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + dk0.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((sj) orVar.h.get()).l();
            } catch (Throwable th) {
                throw th;
            }
        }
        return orVar;
    }

    public static or p(Context context) {
        synchronized (k) {
            try {
                if (l.containsKey("[DEFAULT]")) {
                    return k();
                }
                os a2 = os.a(context);
                if (a2 == null) {
                    return null;
                }
                return q(context, a2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static or q(Context context, os osVar) {
        return r(context, osVar, "[DEFAULT]");
    }

    public static or r(Context context, os osVar, String str) {
        or orVar;
        b.c(context);
        String w = w(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (k) {
            Map map = l;
            mj0.m(!map.containsKey(w), "FirebaseApp name " + w + " already exists!");
            mj0.j(context, "Application context cannot be null.");
            orVar = new or(context, w, osVar);
            map.put(w, orVar);
        }
        orVar.o();
        return orVar;
    }

    public static String w(String str) {
        return str.trim();
    }

    public boolean equals(Object obj) {
        if (obj instanceof or) {
            return this.b.equals(((or) obj).l());
        }
        return false;
    }

    public void g(a aVar) {
        h();
        if (this.e.get() && v7.b().d()) {
            aVar.a(true);
        }
        this.i.add(aVar);
    }

    public final void h() {
        mj0.m(!this.f.get(), "FirebaseApp was deleted");
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public Object i(Class cls) {
        h();
        return this.d.a(cls);
    }

    public Context j() {
        h();
        return this.a;
    }

    public String l() {
        h();
        return this.b;
    }

    public os m() {
        h();
        return this.c;
    }

    public String n() {
        return x7.a(l().getBytes(Charset.defaultCharset())) + "+" + x7.a(m().c().getBytes(Charset.defaultCharset()));
    }

    public final void o() {
        if (!o41.a(this.a)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            sb.append(l());
            c.b(this.a);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Device unlocked: initializing all Firebase APIs for app ");
        sb2.append(l());
        this.d.n(t());
        ((sj) this.h.get()).l();
    }

    public boolean s() {
        h();
        return ((vi) this.g.get()).b();
    }

    public boolean t() {
        return "[DEFAULT]".equals(l());
    }

    public String toString() {
        return wf0.c(this).a("name", this.b).a("options", this.c).toString();
    }

    public final /* synthetic */ vi u(Context context) {
        return new vi(context, n(), (sl0) this.d.a(sl0.class));
    }

    public final /* synthetic */ void v(boolean z) {
        if (z) {
            return;
        }
        ((sj) this.h.get()).l();
    }

    public final void x(boolean z) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(z);
        }
    }
}
