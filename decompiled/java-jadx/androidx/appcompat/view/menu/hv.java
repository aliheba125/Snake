package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.view.View;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class hv {
    public final mv a;
    public final CopyOnWriteArrayList b;

    public hv(mv mvVar) {
        z50.e(mvVar, "fragmentManager");
        this.a = mvVar;
        this.b = new CopyOnWriteArrayList();
    }

    public final void a(av avVar, Bundle bundle, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().a(avVar, bundle, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void b(av avVar, boolean z) {
        z50.e(avVar, "f");
        this.a.j0();
        throw null;
    }

    public final void c(av avVar, Bundle bundle, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().c(avVar, bundle, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void d(av avVar, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().d(avVar, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void e(av avVar, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().e(avVar, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void f(av avVar, boolean z) {
        z50.e(avVar, "f");
        this.a.j0();
        throw null;
    }

    public final void g(av avVar, Bundle bundle, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().g(avVar, bundle, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void h(av avVar, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().h(avVar, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void i(av avVar, Bundle bundle, boolean z) {
        z50.e(avVar, "f");
        z50.e(bundle, "outState");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().i(avVar, bundle, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void j(av avVar, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().j(avVar, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void k(av avVar, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().k(avVar, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void l(av avVar, View view, Bundle bundle, boolean z) {
        z50.e(avVar, "f");
        z50.e(view, "v");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().l(avVar, view, bundle, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public final void m(av avVar, boolean z) {
        z50.e(avVar, "f");
        av l0 = this.a.l0();
        if (l0 != null) {
            mv C = l0.C();
            z50.d(C, "parent.getParentFragmentManager()");
            C.k0().m(avVar, true);
        }
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }
}
