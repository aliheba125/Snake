package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class gw0 {
    public static final a f = new a(null);
    public final ViewGroup a;
    public final List b;
    public final List c;
    public boolean d;
    public boolean e;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final gw0 a(ViewGroup viewGroup, mv mvVar) {
            z50.e(viewGroup, "container");
            z50.e(mvVar, "fragmentManager");
            hw0 n0 = mvVar.n0();
            z50.d(n0, "fragmentManager.specialEffectsControllerFactory");
            return b(viewGroup, n0);
        }

        public final gw0 b(ViewGroup viewGroup, hw0 hw0Var) {
            z50.e(viewGroup, "container");
            z50.e(hw0Var, "factory");
            Object tag = viewGroup.getTag(nm0.b);
            if (tag instanceof gw0) {
                return (gw0) tag;
            }
            gw0 a = hw0Var.a(viewGroup);
            z50.d(a, "factory.createController(container)");
            viewGroup.setTag(nm0.b, a);
            return a;
        }
    }

    public static class b {
        public final boolean a;
        public boolean b;
        public boolean c;

        public final void a(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            if (!this.c) {
                c(viewGroup);
            }
            this.c = true;
        }

        public boolean b() {
            return this.a;
        }

        public abstract void c(ViewGroup viewGroup);

        public abstract void d(ViewGroup viewGroup);

        public void e(h7 h7Var, ViewGroup viewGroup) {
            z50.e(h7Var, "backEvent");
            z50.e(viewGroup, "container");
        }

        public void f(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
        }

        public final void g(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            if (!this.b) {
                f(viewGroup);
            }
            this.b = true;
        }
    }

    public static final class c extends d {
        public final tv l;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public c(d.b bVar, d.a aVar, tv tvVar) {
            super(bVar, aVar, r0);
            z50.e(bVar, "finalState");
            z50.e(aVar, "lifecycleImpact");
            z50.e(tvVar, "fragmentStateManager");
            av k = tvVar.k();
            z50.d(k, "fragmentStateManager.fragment");
            this.l = tvVar;
        }

        @Override // androidx.appcompat.view.menu.gw0.d
        public void e() {
            super.e();
            i().m = false;
            this.l.m();
        }

        @Override // androidx.appcompat.view.menu.gw0.d
        public void q() {
            if (o()) {
                return;
            }
            super.q();
            if (j() != d.a.ADDING) {
                if (j() == d.a.REMOVING) {
                    av k = this.l.k();
                    z50.d(k, "fragmentStateManager.fragment");
                    View S0 = k.S0();
                    z50.d(S0, "fragment.requireView()");
                    if (mv.v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Clearing focus ");
                        sb.append(S0.findFocus());
                        sb.append(" on view ");
                        sb.append(S0);
                        sb.append(" for Fragment ");
                        sb.append(k);
                    }
                    S0.clearFocus();
                    return;
                }
                return;
            }
            av k2 = this.l.k();
            z50.d(k2, "fragmentStateManager.fragment");
            View findFocus = k2.H.findFocus();
            if (findFocus != null) {
                k2.Y0(findFocus);
                if (mv.v0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("requestFocus: Saved focused view ");
                    sb2.append(findFocus);
                    sb2.append(" for Fragment ");
                    sb2.append(k2);
                }
            }
            View S02 = i().S0();
            z50.d(S02, "this.fragment.requireView()");
            if (S02.getParent() == null) {
                this.l.b();
                S02.setAlpha(0.0f);
            }
            if (S02.getAlpha() == 0.0f && S02.getVisibility() == 0) {
                S02.setVisibility(4);
            }
            S02.setAlpha(k2.G());
        }
    }

    public static class d {
        public b a;
        public a b;
        public final av c;
        public final List d;
        public boolean e;
        public boolean f;
        public boolean g;
        public boolean h;
        public boolean i;
        public final List j;
        public final List k;

        public enum a {
            NONE,
            ADDING,
            REMOVING
        }

        public enum b {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static final a m = new a(null);

            public static final class a {
                public a() {
                }

                public /* synthetic */ a(lj ljVar) {
                    this();
                }

                public final b a(View view) {
                    z50.e(view, "<this>");
                    return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? b.INVISIBLE : b(view.getVisibility());
                }

                public final b b(int i) {
                    if (i == 0) {
                        return b.VISIBLE;
                    }
                    if (i == 4) {
                        return b.INVISIBLE;
                    }
                    if (i == 8) {
                        return b.GONE;
                    }
                    throw new IllegalArgumentException("Unknown visibility " + i);
                }
            }

            /* renamed from: androidx.appcompat.view.menu.gw0$d$b$b, reason: collision with other inner class name */
            public /* synthetic */ class C0007b {
                public static final /* synthetic */ int[] a;

                static {
                    int[] iArr = new int[b.values().length];
                    try {
                        iArr[b.REMOVED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[b.VISIBLE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[b.GONE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[b.INVISIBLE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    a = iArr;
                }
            }

            public static final b g(int i) {
                return m.b(i);
            }

            public final void e(View view, ViewGroup viewGroup) {
                z50.e(view, "view");
                z50.e(viewGroup, "container");
                int i = C0007b.a[ordinal()];
                if (i == 1) {
                    ViewParent parent = view.getParent();
                    ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup2 != null) {
                        if (mv.v0(2)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("SpecialEffectsController: Removing view ");
                            sb.append(view);
                            sb.append(" from container ");
                            sb.append(viewGroup2);
                        }
                        viewGroup2.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (mv.v0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: Setting view ");
                        sb2.append(view);
                        sb2.append(" to VISIBLE");
                    }
                    ViewParent parent2 = view.getParent();
                    if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                        if (mv.v0(2)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("SpecialEffectsController: Adding view ");
                            sb3.append(view);
                            sb3.append(" to Container ");
                            sb3.append(viewGroup);
                        }
                        viewGroup.addView(view);
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i == 3) {
                    if (mv.v0(2)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("SpecialEffectsController: Setting view ");
                        sb4.append(view);
                        sb4.append(" to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (mv.v0(2)) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("SpecialEffectsController: Setting view ");
                    sb5.append(view);
                    sb5.append(" to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        public /* synthetic */ class c {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[a.values().length];
                try {
                    iArr[a.ADDING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[a.REMOVING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[a.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        public d(b bVar, a aVar, av avVar) {
            z50.e(bVar, "finalState");
            z50.e(aVar, "lifecycleImpact");
            z50.e(avVar, "fragment");
            this.a = bVar;
            this.b = aVar;
            this.c = avVar;
            this.d = new ArrayList();
            this.i = true;
            ArrayList arrayList = new ArrayList();
            this.j = arrayList;
            this.k = arrayList;
        }

        public final void a(Runnable runnable) {
            z50.e(runnable, "listener");
            this.d.add(runnable);
        }

        public final void b(b bVar) {
            z50.e(bVar, "effect");
            this.j.add(bVar);
        }

        public final void c(ViewGroup viewGroup) {
            List u;
            z50.e(viewGroup, "container");
            this.h = false;
            if (this.e) {
                return;
            }
            this.e = true;
            if (this.j.isEmpty()) {
                e();
                return;
            }
            u = ad.u(this.k);
            Iterator it = u.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(viewGroup);
            }
        }

        public final void d(ViewGroup viewGroup, boolean z) {
            z50.e(viewGroup, "container");
            if (this.e) {
                return;
            }
            if (z) {
                this.g = true;
            }
            c(viewGroup);
        }

        public void e() {
            this.h = false;
            if (this.f) {
                return;
            }
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("SpecialEffectsController: ");
                sb.append(this);
                sb.append(" has called complete.");
            }
            this.f = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        public final void f(b bVar) {
            z50.e(bVar, "effect");
            if (this.j.remove(bVar) && this.j.isEmpty()) {
                e();
            }
        }

        public final List g() {
            return this.k;
        }

        public final b h() {
            return this.a;
        }

        public final av i() {
            return this.c;
        }

        public final a j() {
            return this.b;
        }

        public final boolean k() {
            return this.i;
        }

        public final boolean l() {
            return this.e;
        }

        public final boolean m() {
            return this.f;
        }

        public final boolean n() {
            return this.g;
        }

        public final boolean o() {
            return this.h;
        }

        public final void p(b bVar, a aVar) {
            z50.e(bVar, "finalState");
            z50.e(aVar, "lifecycleImpact");
            int i = c.a[aVar.ordinal()];
            if (i == 1) {
                if (this.a == b.REMOVED) {
                    if (mv.v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: For fragment ");
                        sb.append(this.c);
                        sb.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                        sb.append(this.b);
                        sb.append(" to ADDING.");
                    }
                    this.a = b.VISIBLE;
                    this.b = a.ADDING;
                    this.i = true;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (mv.v0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: For fragment ");
                    sb2.append(this.c);
                    sb2.append(" mFinalState = ");
                    sb2.append(this.a);
                    sb2.append(" -> REMOVED. mLifecycleImpact  = ");
                    sb2.append(this.b);
                    sb2.append(" to REMOVING.");
                }
                this.a = b.REMOVED;
                this.b = a.REMOVING;
                this.i = true;
                return;
            }
            if (i == 3 && this.a != b.REMOVED) {
                if (mv.v0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("SpecialEffectsController: For fragment ");
                    sb3.append(this.c);
                    sb3.append(" mFinalState = ");
                    sb3.append(this.a);
                    sb3.append(" -> ");
                    sb3.append(bVar);
                    sb3.append('.');
                }
                this.a = bVar;
            }
        }

        public void q() {
            this.h = true;
        }

        public final void r(boolean z) {
            this.i = z;
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {finalState = " + this.a + " lifecycleImpact = " + this.b + " fragment = " + this.c + '}';
        }
    }

    public /* synthetic */ class e {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.a.values().length];
            try {
                iArr[d.a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public gw0(ViewGroup viewGroup) {
        z50.e(viewGroup, "container");
        this.a = viewGroup;
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    public static final void h(gw0 gw0Var, c cVar) {
        z50.e(gw0Var, "this$0");
        z50.e(cVar, "$operation");
        if (gw0Var.b.contains(cVar)) {
            d.b h = cVar.h();
            View view = cVar.i().H;
            z50.d(view, "operation.fragment.mView");
            h.e(view, gw0Var.a);
        }
    }

    public static final void i(gw0 gw0Var, c cVar) {
        z50.e(gw0Var, "this$0");
        z50.e(cVar, "$operation");
        gw0Var.b.remove(cVar);
        gw0Var.c.remove(cVar);
    }

    public static final gw0 u(ViewGroup viewGroup, mv mvVar) {
        return f.a(viewGroup, mvVar);
    }

    public static final gw0 v(ViewGroup viewGroup, hw0 hw0Var) {
        return f.b(viewGroup, hw0Var);
    }

    public final void A(boolean z) {
        this.d = z;
    }

    public final void c(d dVar) {
        z50.e(dVar, "operation");
        if (dVar.k()) {
            d.b h = dVar.h();
            View S0 = dVar.i().S0();
            z50.d(S0, "operation.fragment.requireView()");
            h.e(S0, this.a);
            dVar.r(false);
        }
    }

    public abstract void d(List list, boolean z);

    public void e(List list) {
        Set x;
        List u;
        List u2;
        z50.e(list, "operations");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            xc.k(arrayList, ((d) it.next()).g());
        }
        x = ad.x(arrayList);
        u = ad.u(x);
        int size = u.size();
        for (int i = 0; i < size; i++) {
            ((b) u.get(i)).d(this.a);
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            c((d) list.get(i2));
        }
        u2 = ad.u(list);
        int size3 = u2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            d dVar = (d) u2.get(i3);
            if (dVar.g().isEmpty()) {
                dVar.e();
            }
        }
    }

    public final void f() {
        mv.v0(3);
        y(this.c);
        e(this.c);
    }

    public final void g(d.b bVar, d.a aVar, tv tvVar) {
        synchronized (this.b) {
            try {
                av k = tvVar.k();
                z50.d(k, "fragmentStateManager.fragment");
                d o = o(k);
                if (o == null) {
                    if (tvVar.k().m) {
                        av k2 = tvVar.k();
                        z50.d(k2, "fragmentStateManager.fragment");
                        o = p(k2);
                    } else {
                        o = null;
                    }
                }
                if (o != null) {
                    o.p(bVar, aVar);
                    return;
                }
                final c cVar = new c(bVar, aVar, tvVar);
                this.b.add(cVar);
                cVar.a(new Runnable() { // from class: androidx.appcompat.view.menu.ew0
                    @Override // java.lang.Runnable
                    public final void run() {
                        gw0.h(gw0.this, cVar);
                    }
                });
                cVar.a(new Runnable() { // from class: androidx.appcompat.view.menu.fw0
                    @Override // java.lang.Runnable
                    public final void run() {
                        gw0.i(gw0.this, cVar);
                    }
                });
                r31 r31Var = r31.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(d.b bVar, tv tvVar) {
        z50.e(bVar, "finalState");
        z50.e(tvVar, "fragmentStateManager");
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing add operation for fragment ");
            sb.append(tvVar.k());
        }
        g(bVar, d.a.ADDING, tvVar);
    }

    public final void k(tv tvVar) {
        z50.e(tvVar, "fragmentStateManager");
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing hide operation for fragment ");
            sb.append(tvVar.k());
        }
        g(d.b.GONE, d.a.NONE, tvVar);
    }

    public final void l(tv tvVar) {
        z50.e(tvVar, "fragmentStateManager");
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing remove operation for fragment ");
            sb.append(tvVar.k());
        }
        g(d.b.REMOVED, d.a.REMOVING, tvVar);
    }

    public final void m(tv tvVar) {
        z50.e(tvVar, "fragmentStateManager");
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing show operation for fragment ");
            sb.append(tvVar.k());
        }
        g(d.b.VISIBLE, d.a.NONE, tvVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x013a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x016f A[Catch: all -> 0x0056, TryCatch #0 {all -> 0x0056, blocks: (B:12:0x0017, B:14:0x0020, B:15:0x0031, B:17:0x0037, B:19:0x0043, B:20:0x0059, B:23:0x0064, B:28:0x0193, B:32:0x006a, B:33:0x007b, B:35:0x0081, B:37:0x008d, B:38:0x009a, B:41:0x00ab, B:46:0x00b1, B:50:0x00c4, B:51:0x00e9, B:53:0x00ef, B:55:0x0102, B:57:0x010c, B:61:0x0130, B:68:0x0116, B:69:0x011a, B:71:0x0120, B:79:0x013c, B:81:0x0140, B:82:0x014c, B:84:0x0152, B:86:0x0162, B:89:0x016b, B:91:0x016f, B:92:0x018e, B:94:0x0178, B:96:0x0182), top: B:11:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n() {
        boolean z;
        if (this.e) {
            return;
        }
        if (!this.a.isAttachedToWindow()) {
            q();
            this.d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (this.b.isEmpty()) {
                    List<d> w = ad.w(this.c);
                    this.c.clear();
                    for (d dVar : w) {
                        if (mv.v0(2)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("SpecialEffectsController: Cancelling operation ");
                            sb.append(dVar);
                            sb.append(" with no incoming pendingOperations");
                        }
                        dVar.d(this.a, false);
                        if (!dVar.m()) {
                            this.c.add(dVar);
                        }
                    }
                } else {
                    List<d> w2 = ad.w(this.c);
                    this.c.clear();
                    for (d dVar2 : w2) {
                        if (mv.v0(2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("SpecialEffectsController: Cancelling operation ");
                            sb2.append(dVar2);
                        }
                        dVar2.d(this.a, dVar2.i().m);
                        if (!dVar2.m()) {
                            this.c.add(dVar2);
                        }
                    }
                    z();
                    List<d> w3 = ad.w(this.b);
                    if (w3.isEmpty()) {
                        return;
                    }
                    this.b.clear();
                    this.c.addAll(w3);
                    mv.v0(2);
                    d(w3, this.d);
                    ao0 ao0Var = new ao0();
                    boolean z2 = true;
                    ao0Var.m = true;
                    boolean z3 = true;
                    for (d dVar3 : w3) {
                        if (!dVar3.g().isEmpty()) {
                            List g = dVar3.g();
                            if (!(g instanceof Collection) || !g.isEmpty()) {
                                Iterator it = g.iterator();
                                while (it.hasNext()) {
                                    if (!((b) it.next()).b()) {
                                    }
                                }
                            }
                            z = true;
                            ao0Var.m = z;
                            if (dVar3.i().m) {
                                z3 = false;
                            }
                        }
                        z = false;
                        ao0Var.m = z;
                        if (dVar3.i().m) {
                        }
                    }
                    if (ao0Var.m) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it2 = w3.iterator();
                        while (it2.hasNext()) {
                            xc.k(arrayList, ((d) it2.next()).g());
                        }
                        if (!arrayList.isEmpty()) {
                            ao0Var.m = z2;
                            if (z3) {
                                y(w3);
                                e(w3);
                            } else if (z2) {
                                y(w3);
                                int size = w3.size();
                                for (int i = 0; i < size; i++) {
                                    c((d) w3.get(i));
                                }
                            }
                            this.d = false;
                            mv.v0(2);
                        }
                    }
                    z2 = false;
                    ao0Var.m = z2;
                    if (z3) {
                    }
                    this.d = false;
                    mv.v0(2);
                }
                r31 r31Var = r31.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final d o(av avVar) {
        Object obj;
        Iterator it = this.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            d dVar = (d) obj;
            if (z50.a(dVar.i(), avVar) && !dVar.l()) {
                break;
            }
        }
        return (d) obj;
    }

    public final d p(av avVar) {
        Object obj;
        Iterator it = this.c.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            d dVar = (d) obj;
            if (z50.a(dVar.i(), avVar) && !dVar.l()) {
                break;
            }
        }
        return (d) obj;
    }

    public final void q() {
        mv.v0(2);
        boolean isAttachedToWindow = this.a.isAttachedToWindow();
        synchronized (this.b) {
            try {
                z();
                y(this.b);
                for (d dVar : ad.w(this.c)) {
                    if (mv.v0(2)) {
                        String str = isAttachedToWindow ? "" : "Container " + this.a + " is not attached to window. ";
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        sb.append(str);
                        sb.append("Cancelling running operation ");
                        sb.append(dVar);
                    }
                    dVar.c(this.a);
                }
                for (d dVar2 : ad.w(this.b)) {
                    if (mv.v0(2)) {
                        String str2 = isAttachedToWindow ? "" : "Container " + this.a + " is not attached to window. ";
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(str2);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(dVar2);
                    }
                    dVar2.c(this.a);
                }
                r31 r31Var = r31.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r() {
        if (this.e) {
            mv.v0(2);
            this.e = false;
            n();
        }
    }

    public final d.a s(tv tvVar) {
        z50.e(tvVar, "fragmentStateManager");
        av k = tvVar.k();
        z50.d(k, "fragmentStateManager.fragment");
        d o = o(k);
        d.a j = o != null ? o.j() : null;
        d p = p(k);
        d.a j2 = p != null ? p.j() : null;
        int i = j == null ? -1 : e.a[j.ordinal()];
        return (i == -1 || i == 1) ? j2 : j;
    }

    public final ViewGroup t() {
        return this.a;
    }

    public final void w() {
        Object obj;
        synchronized (this.b) {
            try {
                z();
                List list = this.b;
                ListIterator listIterator = list.listIterator(list.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        obj = null;
                        break;
                    }
                    obj = listIterator.previous();
                    d dVar = (d) obj;
                    d.b.a aVar = d.b.m;
                    View view = dVar.i().H;
                    z50.d(view, "operation.fragment.mView");
                    d.b a2 = aVar.a(view);
                    d.b h = dVar.h();
                    d.b bVar = d.b.VISIBLE;
                    if (h == bVar && a2 != bVar) {
                        break;
                    }
                }
                d dVar2 = (d) obj;
                av i = dVar2 != null ? dVar2.i() : null;
                this.e = i != null ? i.X() : false;
                r31 r31Var = r31.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void x(h7 h7Var) {
        Set x;
        List u;
        z50.e(h7Var, "backEvent");
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Processing Progress ");
            sb.append(h7Var.a());
        }
        List list = this.c;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            xc.k(arrayList, ((d) it.next()).g());
        }
        x = ad.x(arrayList);
        u = ad.u(x);
        int size = u.size();
        for (int i = 0; i < size; i++) {
            ((b) u.get(i)).e(h7Var, this.a);
        }
    }

    public final void y(List list) {
        Set x;
        List u;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((d) list.get(i)).q();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            xc.k(arrayList, ((d) it.next()).g());
        }
        x = ad.x(arrayList);
        u = ad.u(x);
        int size2 = u.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((b) u.get(i2)).g(this.a);
        }
    }

    public final void z() {
        for (d dVar : this.b) {
            if (dVar.j() == d.a.ADDING) {
                View S0 = dVar.i().S0();
                z50.d(S0, "fragment.requireView()");
                dVar.p(d.b.m.b(S0.getVisibility()), d.a.NONE);
            }
        }
    }
}
