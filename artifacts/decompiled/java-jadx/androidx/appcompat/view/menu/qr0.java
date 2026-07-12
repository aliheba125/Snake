package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public final class qr0 {
    public static final a d = new a(null);
    public final rr0 a;
    public final pr0 b;
    public boolean c;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final qr0 a(rr0 rr0Var) {
            z50.e(rr0Var, "owner");
            return new qr0(rr0Var, null);
        }
    }

    public /* synthetic */ qr0(rr0 rr0Var, lj ljVar) {
        this(rr0Var);
    }

    public static final qr0 a(rr0 rr0Var) {
        return d.a(rr0Var);
    }

    public final pr0 b() {
        return this.b;
    }

    public final void c() {
        androidx.lifecycle.f h = this.a.h();
        if (h.b() != f.b.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        h.a(new xn0(this.a));
        this.b.e(h);
        this.c = true;
    }

    public final void d(Bundle bundle) {
        if (!this.c) {
            c();
        }
        androidx.lifecycle.f h = this.a.h();
        if (!h.b().e(f.b.STARTED)) {
            this.b.f(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + h.b()).toString());
    }

    public final void e(Bundle bundle) {
        z50.e(bundle, "outBundle");
        this.b.g(bundle);
    }

    public qr0(rr0 rr0Var) {
        this.a = rr0Var;
        this.b = new pr0();
    }
}
