package androidx.lifecycle;

import androidx.appcompat.view.menu.b61;
import androidx.appcompat.view.menu.gi;
import androidx.appcompat.view.menu.mr0;
import androidx.appcompat.view.menu.nr0;
import androidx.appcompat.view.menu.rr0;
import androidx.appcompat.view.menu.y51;
import androidx.appcompat.view.menu.z50;
import androidx.lifecycle.f;
import androidx.lifecycle.r;

/* loaded from: classes.dex */
public abstract class p {
    public static final gi.b a = new b();
    public static final gi.b b = new c();
    public static final gi.b c = new a();

    public static final class a implements gi.b {
    }

    public static final class b implements gi.b {
    }

    public static final class c implements gi.b {
    }

    public static final class d implements r.b {
        @Override // androidx.lifecycle.r.b
        public y51 b(Class cls, gi giVar) {
            z50.e(cls, "modelClass");
            z50.e(giVar, "extras");
            return new nr0();
        }
    }

    public static final void a(rr0 rr0Var) {
        z50.e(rr0Var, "<this>");
        f.b b2 = rr0Var.h().b();
        if (b2 != f.b.INITIALIZED && b2 != f.b.CREATED) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (rr0Var.l().c("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            mr0 mr0Var = new mr0(rr0Var.l(), (b61) rr0Var);
            rr0Var.l().h("androidx.lifecycle.internal.SavedStateHandlesProvider", mr0Var);
            rr0Var.h().a(new o(mr0Var));
        }
    }

    public static final nr0 b(b61 b61Var) {
        z50.e(b61Var, "<this>");
        return (nr0) new r(b61Var, new d()).b("androidx.lifecycle.internal.SavedStateHandlesVM", nr0.class);
    }
}
