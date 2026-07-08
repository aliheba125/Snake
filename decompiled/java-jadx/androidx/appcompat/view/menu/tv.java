package androidx.appcompat.view.menu;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.gw0;
import androidx.appcompat.view.menu.q02;
import androidx.fragment.app.FragmentContainerView;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public class tv {
    public final hv a;
    public final uv b;
    public final av c;
    public boolean d = false;
    public int e = -1;

    public class a implements View.OnAttachStateChangeListener {
        public final /* synthetic */ View a;

        public a(View view) {
            this.a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.a.removeOnAttachStateChangeListener(this);
            m51.h0(this.a);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[f.b.values().length];
            a = iArr;
            try {
                iArr[f.b.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[f.b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[f.b.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[f.b.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public tv(hv hvVar, uv uvVar, av avVar) {
        this.a = hvVar;
        this.b = uvVar;
        this.c = avVar;
    }

    public void a() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto ACTIVITY_CREATED: ");
            sb.append(this.c);
        }
        Bundle bundle = this.c.b;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        this.c.w0(bundle2);
        this.a.a(this.c, bundle2, false);
    }

    public void b() {
        av a0 = mv.a0(this.c.G);
        av B = this.c.B();
        if (a0 != null && !a0.equals(B)) {
            av avVar = this.c;
            wv.h(avVar, a0, avVar.x);
        }
        int h = this.b.h(this.c);
        av avVar2 = this.c;
        avVar2.G.addView(avVar2.H, h);
    }

    public void c() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto ATTACHED: ");
            sb.append(this.c);
        }
        av avVar = this.c;
        av avVar2 = avVar.g;
        tv tvVar = null;
        if (avVar2 != null) {
            tv l = this.b.l(avVar2.e);
            if (l == null) {
                throw new IllegalStateException("Fragment " + this.c + " declared target fragment " + this.c.g + " that does not belong to this FragmentManager!");
            }
            av avVar3 = this.c;
            avVar3.h = avVar3.g.e;
            avVar3.g = null;
            tvVar = l;
        } else {
            String str = avVar.h;
            if (str != null && (tvVar = this.b.l(str)) == null) {
                throw new IllegalStateException("Fragment " + this.c + " declared target fragment " + this.c.h + " that does not belong to this FragmentManager!");
            }
        }
        if (tvVar != null) {
            tvVar.m();
        }
        av avVar4 = this.c;
        avVar4.t.j0();
        avVar4.getClass();
        av avVar5 = this.c;
        avVar5.v = avVar5.t.l0();
        this.a.f(this.c, false);
        this.c.x0();
        this.a.b(this.c, false);
    }

    public int d() {
        av avVar = this.c;
        if (avVar.t == null) {
            return avVar.a;
        }
        int i = this.e;
        int i2 = b.a[avVar.Q.ordinal()];
        if (i2 != 1) {
            i = i2 != 2 ? i2 != 3 ? i2 != 4 ? Math.min(i, -1) : Math.min(i, 0) : Math.min(i, 1) : Math.min(i, 5);
        }
        av avVar2 = this.c;
        if (avVar2.o) {
            if (avVar2.p) {
                i = Math.max(this.e, 2);
                View view = this.c.H;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.e < 4 ? Math.min(i, avVar2.a) : Math.min(i, 1);
            }
        }
        if (!this.c.k) {
            i = Math.min(i, 1);
        }
        av avVar3 = this.c;
        ViewGroup viewGroup = avVar3.G;
        gw0.d.a s = viewGroup != null ? gw0.u(viewGroup, avVar3.C()).s(this) : null;
        if (s == gw0.d.a.ADDING) {
            i = Math.min(i, 6);
        } else if (s == gw0.d.a.REMOVING) {
            i = Math.max(i, 3);
        } else {
            av avVar4 = this.c;
            if (avVar4.l) {
                i = avVar4.V() ? Math.min(i, 1) : Math.min(i, -1);
            }
        }
        av avVar5 = this.c;
        if (avVar5.I && avVar5.a < 5) {
            i = Math.min(i, 4);
        }
        av avVar6 = this.c;
        if (avVar6.m && avVar6.G != null) {
            i = Math.max(i, 3);
        }
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("computeExpectedState() of ");
            sb.append(i);
            sb.append(" for ");
            sb.append(this.c);
        }
        return i;
    }

    public void e() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto CREATED: ");
            sb.append(this.c);
        }
        Bundle bundle = this.c.b;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        av avVar = this.c;
        if (avVar.O) {
            avVar.a = 1;
            avVar.T0();
        } else {
            this.a.g(avVar, bundle2, false);
            this.c.z0(bundle2);
            this.a.c(this.c, bundle2, false);
        }
    }

    public void f() {
        String str;
        if (this.c.o) {
            return;
        }
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto CREATE_VIEW: ");
            sb.append(this.c);
        }
        Bundle bundle = this.c.b;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater E0 = this.c.E0(bundle2);
        av avVar = this.c;
        ViewGroup viewGroup2 = avVar.G;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = avVar.x;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) avVar.t.g0().a(this.c.x);
                if (viewGroup == null) {
                    av avVar2 = this.c;
                    if (!avVar2.q) {
                        try {
                            str = avVar2.I().getResourceName(this.c.x);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.c.x) + " (" + str + ") for fragment " + this.c);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    wv.g(this.c, viewGroup);
                }
            }
        }
        av avVar3 = this.c;
        avVar3.G = viewGroup;
        avVar3.B0(E0, viewGroup, bundle2);
        if (this.c.H != null) {
            if (mv.v0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("moveto VIEW_CREATED: ");
                sb2.append(this.c);
            }
            this.c.H.setSaveFromParentEnabled(false);
            av avVar4 = this.c;
            avVar4.H.setTag(nm0.a, avVar4);
            if (viewGroup != null) {
                b();
            }
            av avVar5 = this.c;
            if (avVar5.z) {
                avVar5.H.setVisibility(8);
            }
            if (this.c.H.isAttachedToWindow()) {
                m51.h0(this.c.H);
            } else {
                View view = this.c.H;
                view.addOnAttachStateChangeListener(new a(view));
            }
            this.c.O0();
            hv hvVar = this.a;
            av avVar6 = this.c;
            hvVar.l(avVar6, avVar6.H, bundle2, false);
            int visibility = this.c.H.getVisibility();
            this.c.b1(this.c.H.getAlpha());
            av avVar7 = this.c;
            if (avVar7.G != null && visibility == 0) {
                View findFocus = avVar7.H.findFocus();
                if (findFocus != null) {
                    this.c.Y0(findFocus);
                    if (mv.v0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("requestFocus: Saved focused view ");
                        sb3.append(findFocus);
                        sb3.append(" for Fragment ");
                        sb3.append(this.c);
                    }
                }
                this.c.H.setAlpha(0.0f);
            }
        }
        this.c.a = 2;
    }

    public void g() {
        av e;
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom CREATED: ");
            sb.append(this.c);
        }
        av avVar = this.c;
        boolean z = avVar.l && !avVar.V();
        if (z) {
            av avVar2 = this.c;
            if (!avVar2.n) {
                this.b.z(avVar2.e, null);
            }
        }
        if (z || this.b.n().n(this.c)) {
            this.c.getClass();
            throw null;
        }
        String str = this.c.h;
        if (str != null && (e = this.b.e(str)) != null && e.B) {
            this.c.g = e;
        }
        this.c.a = 0;
    }

    public void h() {
        View view;
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom CREATE_VIEW: ");
            sb.append(this.c);
        }
        av avVar = this.c;
        ViewGroup viewGroup = avVar.G;
        if (viewGroup != null && (view = avVar.H) != null) {
            viewGroup.removeView(view);
        }
        this.c.C0();
        this.a.m(this.c, false);
        av avVar2 = this.c;
        avVar2.G = null;
        avVar2.H = null;
        avVar2.S = null;
        avVar2.T.e(null);
        this.c.p = false;
    }

    public void i() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom ATTACHED: ");
            sb.append(this.c);
        }
        this.c.D0();
        this.a.d(this.c, false);
        av avVar = this.c;
        avVar.a = -1;
        avVar.getClass();
        av avVar2 = this.c;
        avVar2.v = null;
        avVar2.t = null;
        if ((!avVar2.l || avVar2.V()) && !this.b.n().n(this.c)) {
            return;
        }
        if (mv.v0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initState called for fragment: ");
            sb2.append(this.c);
        }
        this.c.S();
    }

    public void j() {
        av avVar = this.c;
        if (avVar.o && avVar.p && !avVar.r) {
            if (mv.v0(3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("moveto CREATE_VIEW: ");
                sb.append(this.c);
            }
            Bundle bundle = this.c.b;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            av avVar2 = this.c;
            avVar2.B0(avVar2.E0(bundle2), null, bundle2);
            View view = this.c.H;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                av avVar3 = this.c;
                avVar3.H.setTag(nm0.a, avVar3);
                av avVar4 = this.c;
                if (avVar4.z) {
                    avVar4.H.setVisibility(8);
                }
                this.c.O0();
                hv hvVar = this.a;
                av avVar5 = this.c;
                hvVar.l(avVar5, avVar5.H, bundle2, false);
                this.c.a = 2;
            }
        }
    }

    public av k() {
        return this.c;
    }

    public final boolean l(View view) {
        if (view == this.c.H) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.c.H) {
                return true;
            }
        }
        return false;
    }

    public void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.d) {
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Ignoring re-entrant call to moveToExpectedState() for ");
                sb.append(k());
                return;
            }
            return;
        }
        try {
            this.d = true;
            boolean z = false;
            while (true) {
                int d = d();
                av avVar = this.c;
                int i = avVar.a;
                if (d == i) {
                    if (!z && i == -1 && avVar.l && !avVar.V() && !this.c.n) {
                        if (mv.v0(3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Cleaning up state of never attached fragment: ");
                            sb2.append(this.c);
                        }
                        this.b.n().e(this.c, true);
                        this.b.q(this);
                        if (mv.v0(3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("initState called for fragment: ");
                            sb3.append(this.c);
                        }
                        this.c.S();
                    }
                    av avVar2 = this.c;
                    if (avVar2.M) {
                        if (avVar2.H != null && (viewGroup = avVar2.G) != null) {
                            gw0 u = gw0.u(viewGroup, avVar2.C());
                            if (this.c.z) {
                                u.k(this);
                            } else {
                                u.m(this);
                            }
                        }
                        av avVar3 = this.c;
                        mv mvVar = avVar3.t;
                        if (mvVar != null) {
                            mvVar.t0(avVar3);
                        }
                        av avVar4 = this.c;
                        avVar4.M = false;
                        avVar4.k0(avVar4.z);
                        this.c.u.B();
                    }
                    this.d = false;
                    return;
                }
                if (d <= i) {
                    switch (i - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            if (avVar.n && this.b.o(avVar.e) == null) {
                                this.b.z(this.c.e, p());
                            }
                            g();
                            break;
                        case 1:
                            h();
                            this.c.a = 1;
                            break;
                        case 2:
                            avVar.p = false;
                            avVar.a = 2;
                            break;
                        case q02.c.c /* 3 */:
                            if (mv.v0(3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("movefrom ACTIVITY_CREATED: ");
                                sb4.append(this.c);
                            }
                            av avVar5 = this.c;
                            if (avVar5.n) {
                                this.b.z(avVar5.e, p());
                            } else if (avVar5.H != null && avVar5.c == null) {
                                q();
                            }
                            av avVar6 = this.c;
                            if (avVar6.H != null && (viewGroup2 = avVar6.G) != null) {
                                gw0.u(viewGroup2, avVar6.C()).l(this);
                            }
                            this.c.a = 3;
                            break;
                        case 4:
                            t();
                            break;
                        case q02.c.e /* 5 */:
                            avVar.a = 5;
                            break;
                        case q02.c.f /* 6 */:
                            n();
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case q02.c.c /* 3 */:
                            a();
                            break;
                        case 4:
                            if (avVar.H != null && (viewGroup3 = avVar.G) != null) {
                                gw0.u(viewGroup3, avVar.C()).j(gw0.d.b.g(this.c.H.getVisibility()), this);
                            }
                            this.c.a = 4;
                            break;
                        case q02.c.e /* 5 */:
                            s();
                            break;
                        case q02.c.f /* 6 */:
                            avVar.a = 6;
                            break;
                        case q02.c.g /* 7 */:
                            o();
                            break;
                    }
                }
                z = true;
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public void n() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom RESUMED: ");
            sb.append(this.c);
        }
        this.c.H0();
        this.a.e(this.c, false);
    }

    public void o() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto RESUMED: ");
            sb.append(this.c);
        }
        View x = this.c.x();
        if (x != null && l(x)) {
            boolean requestFocus = x.requestFocus();
            if (mv.v0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("requestFocus: Restoring focused view ");
                sb2.append(x);
                sb2.append(" ");
                sb2.append(requestFocus ? "succeeded" : "failed");
                sb2.append(" on Fragment ");
                sb2.append(this.c);
                sb2.append(" resulting in focused view ");
                sb2.append(this.c.H.findFocus());
            }
        }
        this.c.Y0(null);
        this.c.K0();
        this.a.h(this.c, false);
        this.b.z(this.c.e, null);
        av avVar = this.c;
        avVar.b = null;
        avVar.c = null;
        avVar.d = null;
    }

    public Bundle p() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        av avVar = this.c;
        if (avVar.a == -1 && (bundle = avVar.b) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new sv(this.c));
        if (this.c.a > -1) {
            Bundle bundle3 = new Bundle();
            this.c.L0(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.a.i(this.c, bundle3, false);
            Bundle bundle4 = new Bundle();
            this.c.V.e(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle X0 = this.c.u.X0();
            if (!X0.isEmpty()) {
                bundle2.putBundle("childFragmentManager", X0);
            }
            if (this.c.H != null) {
                q();
            }
            SparseArray<? extends Parcelable> sparseArray = this.c.c;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = this.c.d;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = this.c.f;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public void q() {
        if (this.c.H == null) {
            return;
        }
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Saving view state for fragment ");
            sb.append(this.c);
            sb.append(" with view ");
            sb.append(this.c.H);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.c.H.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.c.c = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.c.S.g(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.c.d = bundle;
    }

    public void r(int i) {
        this.e = i;
    }

    public void s() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto STARTED: ");
            sb.append(this.c);
        }
        this.c.M0();
        this.a.j(this.c, false);
    }

    public void t() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom STARTED: ");
            sb.append(this.c);
        }
        this.c.N0();
        this.a.k(this.c, false);
    }

    public tv(hv hvVar, uv uvVar, av avVar, Bundle bundle) {
        this.a = hvVar;
        this.b = uvVar;
        this.c = avVar;
        avVar.c = null;
        avVar.d = null;
        avVar.s = 0;
        avVar.p = false;
        avVar.k = false;
        av avVar2 = avVar.g;
        avVar.h = avVar2 != null ? avVar2.e : null;
        avVar.g = null;
        avVar.b = bundle;
        avVar.f = bundle.getBundle("arguments");
    }
}
