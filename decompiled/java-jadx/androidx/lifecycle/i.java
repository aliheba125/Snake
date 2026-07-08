package androidx.lifecycle;

import androidx.appcompat.view.menu.a90;
import androidx.appcompat.view.menu.b90;
import androidx.appcompat.view.menu.gr0;
import androidx.appcompat.view.menu.h4;
import androidx.appcompat.view.menu.ke0;
import androidx.appcompat.view.menu.lj;
import androidx.appcompat.view.menu.ww0;
import androidx.appcompat.view.menu.xq;
import androidx.appcompat.view.menu.z50;
import androidx.appcompat.view.menu.z80;
import androidx.lifecycle.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class i extends f {
    public static final a k = new a(null);
    public final boolean b;
    public xq c;
    public f.b d;
    public final WeakReference e;
    public int f;
    public boolean g;
    public boolean h;
    public ArrayList i;
    public final ke0 j;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final f.b a(f.b bVar, f.b bVar2) {
            z50.e(bVar, "state1");
            return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
        }
    }

    public static final class b {
        public f.b a;
        public h b;

        public b(z80 z80Var, f.b bVar) {
            z50.e(bVar, "initialState");
            z50.b(z80Var);
            this.b = b90.f(z80Var);
            this.a = bVar;
        }

        public final void a(a90 a90Var, f.a aVar) {
            z50.e(aVar, "event");
            f.b e = aVar.e();
            this.a = i.k.a(this.a, e);
            h hVar = this.b;
            z50.b(a90Var);
            hVar.c(a90Var, aVar);
            this.a = e;
        }

        public final f.b b() {
            return this.a;
        }
    }

    public i(a90 a90Var, boolean z) {
        this.b = z;
        this.c = new xq();
        f.b bVar = f.b.INITIALIZED;
        this.d = bVar;
        this.i = new ArrayList();
        this.e = new WeakReference(a90Var);
        this.j = ww0.a(bVar);
    }

    @Override // androidx.lifecycle.f
    public void a(z80 z80Var) {
        a90 a90Var;
        z50.e(z80Var, "observer");
        f("addObserver");
        f.b bVar = this.d;
        f.b bVar2 = f.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = f.b.INITIALIZED;
        }
        b bVar3 = new b(z80Var, bVar2);
        if (((b) this.c.k(z80Var, bVar3)) == null && (a90Var = (a90) this.e.get()) != null) {
            boolean z = this.f != 0 || this.g;
            f.b e = e(z80Var);
            this.f++;
            while (bVar3.b().compareTo(e) < 0 && this.c.contains(z80Var)) {
                l(bVar3.b());
                f.a b2 = f.a.Companion.b(bVar3.b());
                if (b2 == null) {
                    throw new IllegalStateException("no event up from " + bVar3.b());
                }
                bVar3.a(a90Var, b2);
                k();
                e = e(z80Var);
            }
            if (!z) {
                m();
            }
            this.f--;
        }
    }

    @Override // androidx.lifecycle.f
    public f.b b() {
        return this.d;
    }

    @Override // androidx.lifecycle.f
    public void c(z80 z80Var) {
        z50.e(z80Var, "observer");
        f("removeObserver");
        this.c.n(z80Var);
    }

    public final void d(a90 a90Var) {
        Iterator descendingIterator = this.c.descendingIterator();
        z50.d(descendingIterator, "observerMap.descendingIterator()");
        while (descendingIterator.hasNext() && !this.h) {
            Map.Entry entry = (Map.Entry) descendingIterator.next();
            z50.d(entry, "next()");
            z80 z80Var = (z80) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.d) > 0 && !this.h && this.c.contains(z80Var)) {
                f.a a2 = f.a.Companion.a(bVar.b());
                if (a2 == null) {
                    throw new IllegalStateException("no event down from " + bVar.b());
                }
                l(a2.e());
                bVar.a(a90Var, a2);
                k();
            }
        }
    }

    public final f.b e(z80 z80Var) {
        b bVar;
        Map.Entry p = this.c.p(z80Var);
        f.b bVar2 = null;
        f.b b2 = (p == null || (bVar = (b) p.getValue()) == null) ? null : bVar.b();
        if (!this.i.isEmpty()) {
            bVar2 = (f.b) this.i.get(r0.size() - 1);
        }
        a aVar = k;
        return aVar.a(aVar.a(this.d, b2), bVar2);
    }

    public final void f(String str) {
        if (!this.b || h4.f().b()) {
            return;
        }
        throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
    }

    public final void g(a90 a90Var) {
        gr0.d g = this.c.g();
        z50.d(g, "observerMap.iteratorWithAdditions()");
        while (g.hasNext() && !this.h) {
            Map.Entry entry = (Map.Entry) g.next();
            z80 z80Var = (z80) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.d) < 0 && !this.h && this.c.contains(z80Var)) {
                l(bVar.b());
                f.a b2 = f.a.Companion.b(bVar.b());
                if (b2 == null) {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
                bVar.a(a90Var, b2);
                k();
            }
        }
    }

    public void h(f.a aVar) {
        z50.e(aVar, "event");
        f("handleLifecycleEvent");
        j(aVar.e());
    }

    public final boolean i() {
        if (this.c.size() == 0) {
            return true;
        }
        Map.Entry d = this.c.d();
        z50.b(d);
        f.b b2 = ((b) d.getValue()).b();
        Map.Entry h = this.c.h();
        z50.b(h);
        f.b b3 = ((b) h.getValue()).b();
        return b2 == b3 && this.d == b3;
    }

    public final void j(f.b bVar) {
        f.b bVar2 = this.d;
        if (bVar2 == bVar) {
            return;
        }
        if (bVar2 == f.b.INITIALIZED && bVar == f.b.DESTROYED) {
            throw new IllegalStateException(("no event down from " + this.d + " in component " + this.e.get()).toString());
        }
        this.d = bVar;
        if (this.g || this.f != 0) {
            this.h = true;
            return;
        }
        this.g = true;
        m();
        this.g = false;
        if (this.d == f.b.DESTROYED) {
            this.c = new xq();
        }
    }

    public final void k() {
        this.i.remove(r0.size() - 1);
    }

    public final void l(f.b bVar) {
        this.i.add(bVar);
    }

    public final void m() {
        a90 a90Var = (a90) this.e.get();
        if (a90Var == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (!i()) {
            this.h = false;
            f.b bVar = this.d;
            Map.Entry d = this.c.d();
            z50.b(d);
            if (bVar.compareTo(((b) d.getValue()).b()) < 0) {
                d(a90Var);
            }
            Map.Entry h = this.c.h();
            if (!this.h && h != null && this.d.compareTo(((b) h.getValue()).b()) > 0) {
                g(a90Var);
            }
        }
        this.h = false;
        this.j.setValue(b());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(a90 a90Var) {
        this(a90Var, true);
        z50.e(a90Var, "provider");
    }
}
