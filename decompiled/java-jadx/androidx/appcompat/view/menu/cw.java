package androidx.appcompat.view.menu;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.lifecycle.r;

/* loaded from: classes.dex */
public class cw implements androidx.lifecycle.e, rr0, b61 {
    public final av a;
    public final a61 b;
    public final Runnable c;
    public androidx.lifecycle.i d = null;
    public qr0 e = null;

    public cw(av avVar, a61 a61Var, Runnable runnable) {
        this.a = avVar;
        this.b = a61Var;
        this.c = runnable;
    }

    public void a(f.a aVar) {
        this.d.h(aVar);
    }

    @Override // androidx.lifecycle.e
    public gi b() {
        Application application;
        Context applicationContext = this.a.R0().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        ie0 ie0Var = new ie0();
        if (application != null) {
            ie0Var.b(r.a.e, application);
        }
        ie0Var.b(androidx.lifecycle.p.a, this.a);
        ie0Var.b(androidx.lifecycle.p.b, this);
        if (this.a.o() != null) {
            ie0Var.b(androidx.lifecycle.p.c, this.a.o());
        }
        return ie0Var;
    }

    @Override // androidx.appcompat.view.menu.b61
    public a61 c() {
        d();
        return this.b;
    }

    public void d() {
        if (this.d == null) {
            this.d = new androidx.lifecycle.i(this);
            qr0 a = qr0.a(this);
            this.e = a;
            a.c();
            this.c.run();
        }
    }

    public boolean e() {
        return this.d != null;
    }

    public void f(Bundle bundle) {
        this.e.d(bundle);
    }

    public void g(Bundle bundle) {
        this.e.e(bundle);
    }

    @Override // androidx.appcompat.view.menu.a90
    public androidx.lifecycle.f h() {
        d();
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.rr0
    public pr0 l() {
        d();
        return this.e.b();
    }
}
