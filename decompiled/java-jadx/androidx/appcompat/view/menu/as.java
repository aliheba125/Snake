package androidx.appcompat.view.menu;

import android.text.TextUtils;
import androidx.appcompat.view.menu.a11;
import androidx.appcompat.view.menu.cs;
import androidx.appcompat.view.menu.l50;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class as implements bs {
    public static final Object m = new Object();
    public static final ThreadFactory n = new a();
    public final or a;
    public final vr b;
    public final zh0 c;
    public final t41 d;
    public final j80 e;
    public final rn0 f;
    public final Object g;
    public final ExecutorService h;
    public final Executor i;
    public String j;
    public Set k;
    public final List l;

    public class a implements ThreadFactory {
        public final AtomicInteger a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.a.getAndIncrement())));
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[a11.b.values().length];
            b = iArr;
            try {
                iArr[a11.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[a11.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[a11.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[l50.b.values().length];
            a = iArr2;
            try {
                iArr2[l50.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[l50.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public as(final or orVar, el0 el0Var, ExecutorService executorService, Executor executor) {
        this(executorService, executor, orVar, new vr(orVar.j(), el0Var), new zh0(orVar), t41.c(), new j80(new el0() { // from class: androidx.appcompat.view.menu.xr
            @Override // androidx.appcompat.view.menu.el0
            public final Object get() {
                e40 z;
                z = as.z(or.this);
                return z;
            }
        }), new rn0());
    }

    public static as q() {
        return r(or.k());
    }

    public static as r(or orVar) {
        mj0.b(orVar != null, "Null is not a valid value of FirebaseApp.");
        return (as) orVar.i(bs.class);
    }

    public static /* synthetic */ e40 z(or orVar) {
        return new e40(orVar);
    }

    public final void A() {
        mj0.f(n(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        mj0.f(u(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        mj0.f(m(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        mj0.b(t41.h(n()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        mj0.b(t41.g(m()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    public final String B(ai0 ai0Var) {
        if ((!this.a.l().equals("CHIME_ANDROID_SDK") && !this.a.t()) || !ai0Var.m()) {
            return this.f.a();
        }
        String f = p().f();
        return TextUtils.isEmpty(f) ? this.f.a() : f;
    }

    public final ai0 C(ai0 ai0Var) {
        l50 d = this.b.d(m(), ai0Var.d(), u(), n(), (ai0Var.d() == null || ai0Var.d().length() != 11) ? null : p().i());
        int i = b.a[d.e().ordinal()];
        if (i == 1) {
            return ai0Var.s(d.c(), d.d(), this.d.b(), d.b().c(), d.b().d());
        }
        if (i == 2) {
            return ai0Var.q("BAD CONFIG");
        }
        throw new cs("Firebase Installations Service is unavailable. Please try again later.", cs.a.UNAVAILABLE);
    }

    public final void D(Exception exc) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((yw0) it.next()).b(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void E(ai0 ai0Var) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((yw0) it.next()).a(ai0Var)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void F(String str) {
        this.j = str;
    }

    public final synchronized void G(ai0 ai0Var, ai0 ai0Var2) {
        if (this.k.size() != 0 && !TextUtils.equals(ai0Var.d(), ai0Var2.d())) {
            Iterator it = this.k.iterator();
            if (it.hasNext()) {
                jy0.a(it.next());
                ai0Var2.d();
                throw null;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.bs
    public zy0 a() {
        A();
        String o = o();
        if (o != null) {
            return jz0.e(o);
        }
        zy0 h = h();
        this.h.execute(new Runnable() { // from class: androidx.appcompat.view.menu.wr
            @Override // java.lang.Runnable
            public final void run() {
                as.this.x();
            }
        });
        return h;
    }

    @Override // androidx.appcompat.view.menu.bs
    public zy0 b(final boolean z) {
        A();
        zy0 g = g();
        this.h.execute(new Runnable() { // from class: androidx.appcompat.view.menu.zr
            @Override // java.lang.Runnable
            public final void run() {
                as.this.y(z);
            }
        });
        return g;
    }

    public final zy0 g() {
        bz0 bz0Var = new bz0();
        i(new kx(this.d, bz0Var));
        return bz0Var.a();
    }

    public final zy0 h() {
        bz0 bz0Var = new bz0();
        i(new lx(bz0Var));
        return bz0Var.a();
    }

    public final void i(yw0 yw0Var) {
        synchronized (this.g) {
            this.l.add(yw0Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w(boolean z) {
        ai0 C;
        ai0 s = s();
        try {
            if (!s.i() && !s.l()) {
                if (!z && !this.d.f(s)) {
                    return;
                }
                C = l(s);
                v(C);
                G(s, C);
                if (C.k()) {
                    F(C.d());
                }
                if (!C.i()) {
                    D(new cs(cs.a.BAD_CONFIG));
                    return;
                } else if (C.j()) {
                    D(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                    return;
                } else {
                    E(C);
                    return;
                }
            }
            C = C(s);
            v(C);
            G(s, C);
            if (C.k()) {
            }
            if (!C.i()) {
            }
        } catch (cs e) {
            D(e);
        }
    }

    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final void y(final boolean z) {
        ai0 t = t();
        if (z) {
            t = t.p();
        }
        E(t);
        this.i.execute(new Runnable() { // from class: androidx.appcompat.view.menu.yr
            @Override // java.lang.Runnable
            public final void run() {
                as.this.w(z);
            }
        });
    }

    public final ai0 l(ai0 ai0Var) {
        a11 e = this.b.e(m(), ai0Var.d(), u(), ai0Var.f());
        int i = b.b[e.b().ordinal()];
        if (i == 1) {
            return ai0Var.o(e.c(), e.d(), this.d.b());
        }
        if (i == 2) {
            return ai0Var.q("BAD CONFIG");
        }
        if (i != 3) {
            throw new cs("Firebase Installations Service is unavailable. Please try again later.", cs.a.UNAVAILABLE);
        }
        F(null);
        return ai0Var.r();
    }

    public String m() {
        return this.a.m().b();
    }

    public String n() {
        return this.a.m().c();
    }

    public final synchronized String o() {
        return this.j;
    }

    public final e40 p() {
        return (e40) this.e.get();
    }

    /* JADX WARN: Finally extract failed */
    public final ai0 s() {
        ai0 d;
        synchronized (m) {
            try {
                hi a2 = hi.a(this.a.j(), "generatefid.lock");
                try {
                    d = this.c.d();
                    if (a2 != null) {
                        a2.b();
                    }
                } catch (Throwable th) {
                    if (a2 != null) {
                        a2.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d;
    }

    /* JADX WARN: Finally extract failed */
    public final ai0 t() {
        ai0 d;
        synchronized (m) {
            try {
                hi a2 = hi.a(this.a.j(), "generatefid.lock");
                try {
                    d = this.c.d();
                    if (d.j()) {
                        d = this.c.b(d.t(B(d)));
                    }
                    if (a2 != null) {
                        a2.b();
                    }
                } catch (Throwable th) {
                    if (a2 != null) {
                        a2.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d;
    }

    public String u() {
        return this.a.m().e();
    }

    /* JADX WARN: Finally extract failed */
    public final void v(ai0 ai0Var) {
        synchronized (m) {
            try {
                hi a2 = hi.a(this.a.j(), "generatefid.lock");
                try {
                    this.c.b(ai0Var);
                    if (a2 != null) {
                        a2.b();
                    }
                } catch (Throwable th) {
                    if (a2 != null) {
                        a2.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final /* synthetic */ void x() {
        y(false);
    }

    public as(ExecutorService executorService, Executor executor, or orVar, vr vrVar, zh0 zh0Var, t41 t41Var, j80 j80Var, rn0 rn0Var) {
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.a = orVar;
        this.b = vrVar;
        this.c = zh0Var;
        this.d = t41Var;
        this.e = j80Var;
        this.f = rn0Var;
        this.h = executorService;
        this.i = executor;
    }
}
