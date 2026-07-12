package androidx.appcompat.view.menu;

import android.animation.Animator;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageParser;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.f;
import androidx.lifecycle.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class av implements ComponentCallbacks, View.OnCreateContextMenuListener, a90, b61, androidx.lifecycle.e, rr0 {
    public static final Object a0 = new Object();
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean F;
    public ViewGroup G;
    public View H;
    public boolean I;
    public e K;
    public boolean M;
    public LayoutInflater N;
    public boolean O;
    public String P;
    public androidx.lifecycle.i R;
    public cw S;
    public r.b U;
    public qr0 V;
    public int W;
    public Bundle b;
    public SparseArray c;
    public Bundle d;
    public Bundle f;
    public av g;
    public int i;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public mv t;
    public av v;
    public int w;
    public int x;
    public String y;
    public boolean z;
    public int a = -1;
    public String e = UUID.randomUUID().toString();
    public String h = null;
    public Boolean j = null;
    public mv u = new nv();
    public boolean E = true;
    public boolean J = true;
    public Runnable L = new a();
    public f.b Q = f.b.RESUMED;
    public je0 T = new je0();
    public final AtomicInteger X = new AtomicInteger();
    public final ArrayList Y = new ArrayList();
    public final f Z = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            av.this.e1();
        }
    }

    public class b extends f {
        public b() {
            super(null);
        }

        @Override // androidx.appcompat.view.menu.av.f
        public void a() {
            av.this.V.c();
            androidx.lifecycle.p.a(av.this);
            Bundle bundle = av.this.b;
            av.this.V.d(bundle != null ? bundle.getBundle("registryState") : null);
        }
    }

    public class c extends dv {
        public c() {
        }

        @Override // androidx.appcompat.view.menu.dv
        public View a(int i) {
            View view = av.this.H;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + av.this + " does not have a view");
        }

        @Override // androidx.appcompat.view.menu.dv
        public boolean b() {
            return av.this.H != null;
        }
    }

    public class d implements androidx.lifecycle.h {
        public d() {
        }

        @Override // androidx.lifecycle.h
        public void c(a90 a90Var, f.a aVar) {
            View view;
            if (aVar != f.a.ON_STOP || (view = av.this.H) == null) {
                return;
            }
            view.cancelPendingInputEvents();
        }
    }

    public static class e {
        public boolean a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public ArrayList g;
        public ArrayList h;
        public Object i = null;
        public Object j;
        public Object k;
        public Object l;
        public Object m;
        public Object n;
        public Boolean o;
        public Boolean p;
        public float q;
        public View r;
        public boolean s;

        public e() {
            Object obj = av.a0;
            this.j = obj;
            this.k = null;
            this.l = obj;
            this.m = null;
            this.n = obj;
            this.q = 1.0f;
            this.r = null;
        }
    }

    public static abstract class f {
        public f() {
        }

        public /* synthetic */ f(a aVar) {
            this();
        }

        public abstract void a();
    }

    public av() {
        R();
    }

    public int A() {
        e eVar = this.K;
        if (eVar == null) {
            return 0;
        }
        return eVar.f;
    }

    public boolean A0(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.z) {
            return false;
        }
        if (this.D && this.E) {
            e0(menu, menuInflater);
            z = true;
        }
        return z | this.u.x(menu, menuInflater);
    }

    public final av B() {
        return this.v;
    }

    public void B0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.u.I0();
        this.r = true;
        this.S = new cw(this, c(), new Runnable() { // from class: androidx.appcompat.view.menu.zu
            @Override // java.lang.Runnable
            public final void run() {
                av.this.Z();
            }
        });
        View f0 = f0(layoutInflater, viewGroup, bundle);
        this.H = f0;
        if (f0 == null) {
            if (this.S.e()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.S = null;
            return;
        }
        this.S.d();
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Setting ViewLifecycleOwner on View ");
            sb.append(this.H);
            sb.append(" for Fragment ");
            sb.append(this);
        }
        h61.a(this.H, this.S);
        k61.a(this.H, this.S);
        j61.a(this.H, this.S);
        this.T.e(this.S);
    }

    public final mv C() {
        mv mvVar = this.t;
        if (mvVar != null) {
            return mvVar;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public void C0() {
        this.u.z();
        if (this.H != null && this.S.h().b().e(f.b.CREATED)) {
            this.S.a(f.a.ON_DESTROY);
        }
        this.a = 1;
        this.F = false;
        h0();
        if (this.F) {
            n90.a(this).b();
            this.r = false;
        } else {
            throw new dy0("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    public boolean D() {
        e eVar = this.K;
        if (eVar == null) {
            return false;
        }
        return eVar.a;
    }

    public void D0() {
        this.a = -1;
        this.F = false;
        i0();
        this.N = null;
        if (this.F) {
            if (this.u.u0()) {
                return;
            }
            this.u.y();
            this.u = new nv();
            return;
        }
        throw new dy0("Fragment " + this + " did not call through to super.onDetach()");
    }

    public int E() {
        e eVar = this.K;
        if (eVar == null) {
            return 0;
        }
        return eVar.d;
    }

    public LayoutInflater E0(Bundle bundle) {
        LayoutInflater j0 = j0(bundle);
        this.N = j0;
        return j0;
    }

    public int F() {
        e eVar = this.K;
        if (eVar == null) {
            return 0;
        }
        return eVar.e;
    }

    public void F0() {
        onLowMemory();
    }

    public float G() {
        e eVar = this.K;
        if (eVar == null) {
            return 1.0f;
        }
        return eVar.q;
    }

    public boolean G0(MenuItem menuItem) {
        if (this.z) {
            return false;
        }
        if (this.D && this.E && m0(menuItem)) {
            return true;
        }
        return this.u.C(menuItem);
    }

    public Object H() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        Object obj = eVar.l;
        return obj == a0 ? v() : obj;
    }

    public void H0() {
        this.u.E();
        if (this.H != null) {
            this.S.a(f.a.ON_PAUSE);
        }
        this.R.h(f.a.ON_PAUSE);
        this.a = 6;
        this.F = false;
        n0();
        if (this.F) {
            return;
        }
        throw new dy0("Fragment " + this + " did not call through to super.onPause()");
    }

    public final Resources I() {
        return R0().getResources();
    }

    public boolean I0(Menu menu) {
        boolean z = false;
        if (this.z) {
            return false;
        }
        if (this.D && this.E) {
            o0(menu);
            z = true;
        }
        return z | this.u.F(menu);
    }

    public Object J() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        Object obj = eVar.j;
        return obj == a0 ? s() : obj;
    }

    public void J0() {
        boolean A0 = this.t.A0(this);
        Boolean bool = this.j;
        if (bool == null || bool.booleanValue() != A0) {
            this.j = Boolean.valueOf(A0);
            p0(A0);
            this.u.G();
        }
    }

    public Object K() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.m;
    }

    public void K0() {
        this.u.I0();
        this.u.Q(true);
        this.a = 7;
        this.F = false;
        q0();
        if (!this.F) {
            throw new dy0("Fragment " + this + " did not call through to super.onResume()");
        }
        androidx.lifecycle.i iVar = this.R;
        f.a aVar = f.a.ON_RESUME;
        iVar.h(aVar);
        if (this.H != null) {
            this.S.a(aVar);
        }
        this.u.H();
    }

    public Object L() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        Object obj = eVar.n;
        return obj == a0 ? K() : obj;
    }

    public void L0(Bundle bundle) {
        r0(bundle);
    }

    public ArrayList M() {
        ArrayList arrayList;
        e eVar = this.K;
        return (eVar == null || (arrayList = eVar.g) == null) ? new ArrayList() : arrayList;
    }

    public void M0() {
        this.u.I0();
        this.u.Q(true);
        this.a = 5;
        this.F = false;
        s0();
        if (!this.F) {
            throw new dy0("Fragment " + this + " did not call through to super.onStart()");
        }
        androidx.lifecycle.i iVar = this.R;
        f.a aVar = f.a.ON_START;
        iVar.h(aVar);
        if (this.H != null) {
            this.S.a(aVar);
        }
        this.u.I();
    }

    public ArrayList N() {
        ArrayList arrayList;
        e eVar = this.K;
        return (eVar == null || (arrayList = eVar.h) == null) ? new ArrayList() : arrayList;
    }

    public void N0() {
        this.u.K();
        if (this.H != null) {
            this.S.a(f.a.ON_STOP);
        }
        this.R.h(f.a.ON_STOP);
        this.a = 4;
        this.F = false;
        t0();
        if (this.F) {
            return;
        }
        throw new dy0("Fragment " + this + " did not call through to super.onStop()");
    }

    public final String O(int i) {
        return I().getString(i);
    }

    public void O0() {
        Bundle bundle = this.b;
        u0(this.H, bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.u.L();
    }

    public View P() {
        return this.H;
    }

    public final void P0(f fVar) {
        if (this.a >= 0) {
            fVar.a();
        } else {
            this.Y.add(fVar);
        }
    }

    public androidx.lifecycle.j Q() {
        return this.T;
    }

    public final bv Q0() {
        j();
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final void R() {
        this.R = new androidx.lifecycle.i(this);
        this.V = qr0.a(this);
        this.U = null;
        if (this.Y.contains(this.Z)) {
            return;
        }
        P0(this.Z);
    }

    public final Context R0() {
        Context q = q();
        if (q != null) {
            return q;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public void S() {
        R();
        this.P = this.e;
        this.e = UUID.randomUUID().toString();
        this.k = false;
        this.l = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.s = 0;
        this.t = null;
        this.u = new nv();
        this.w = 0;
        this.x = 0;
        this.y = null;
        this.z = false;
        this.A = false;
    }

    public final View S0() {
        View P = P();
        if (P != null) {
            return P;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final boolean T() {
        return false;
    }

    public void T0() {
        Bundle bundle;
        Bundle bundle2 = this.b;
        if (bundle2 == null || (bundle = bundle2.getBundle("childFragmentManager")) == null) {
            return;
        }
        this.u.V0(bundle);
        this.u.w();
    }

    public final boolean U() {
        mv mvVar;
        return this.z || ((mvVar = this.t) != null && mvVar.y0(this.v));
    }

    public final void U0() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto RESTORE_VIEW_STATE: ");
            sb.append(this);
        }
        if (this.H != null) {
            Bundle bundle = this.b;
            V0(bundle != null ? bundle.getBundle("savedInstanceState") : null);
        }
        this.b = null;
    }

    public final boolean V() {
        return this.s > 0;
    }

    public final void V0(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.c;
        if (sparseArray != null) {
            this.H.restoreHierarchyState(sparseArray);
            this.c = null;
        }
        this.F = false;
        v0(bundle);
        if (this.F) {
            if (this.H != null) {
                this.S.a(f.a.ON_CREATE);
            }
        } else {
            throw new dy0("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public final boolean W() {
        mv mvVar;
        return this.E && ((mvVar = this.t) == null || mvVar.z0(this.v));
    }

    public void W0(int i, int i2, int i3, int i4) {
        if (this.K == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        i().b = i;
        i().c = i2;
        i().d = i3;
        i().e = i4;
    }

    public boolean X() {
        e eVar = this.K;
        if (eVar == null) {
            return false;
        }
        return eVar.s;
    }

    public void X0(Bundle bundle) {
        if (this.t != null && Y()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f = bundle;
    }

    public final boolean Y() {
        mv mvVar = this.t;
        if (mvVar == null) {
            return false;
        }
        return mvVar.C0();
    }

    public void Y0(View view) {
        i().r = view;
    }

    public final /* synthetic */ void Z() {
        this.S.f(this.d);
        this.d = null;
    }

    public void Z0(int i) {
        if (this.K == null && i == 0) {
            return;
        }
        i();
        this.K.f = i;
    }

    public void a0(Bundle bundle) {
        this.F = true;
    }

    public void a1(boolean z) {
        if (this.K == null) {
            return;
        }
        i().a = z;
    }

    @Override // androidx.lifecycle.e
    public gi b() {
        Application application;
        Context applicationContext = R0().getApplicationContext();
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
        if (application == null && mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not find Application instance from Context ");
            sb.append(R0().getApplicationContext());
            sb.append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        ie0 ie0Var = new ie0();
        if (application != null) {
            ie0Var.b(r.a.e, application);
        }
        ie0Var.b(androidx.lifecycle.p.a, this);
        ie0Var.b(androidx.lifecycle.p.b, this);
        if (o() != null) {
            ie0Var.b(androidx.lifecycle.p.c, o());
        }
        return ie0Var;
    }

    public void b0(Bundle bundle) {
        this.F = true;
        T0();
        if (this.u.B0(1)) {
            return;
        }
        this.u.w();
    }

    public void b1(float f2) {
        i().q = f2;
    }

    @Override // androidx.appcompat.view.menu.b61
    public a61 c() {
        if (this.t == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (z() != f.b.INITIALIZED.ordinal()) {
            return this.t.q0(this);
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    public Animation c0(int i, boolean z, int i2) {
        return null;
    }

    public void c1(ArrayList arrayList, ArrayList arrayList2) {
        i();
        e eVar = this.K;
        eVar.g = arrayList;
        eVar.h = arrayList2;
    }

    public Animator d0(int i, boolean z, int i2) {
        return null;
    }

    public void d1(Intent intent, int i, Bundle bundle) {
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void e0(Menu menu, MenuInflater menuInflater) {
    }

    public void e1() {
        if (this.K == null || !i().s) {
            return;
        }
        i().s = false;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public View f0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.W;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public dv g() {
        return new c();
    }

    public void g0() {
    }

    @Override // androidx.appcompat.view.menu.a90
    public androidx.lifecycle.f h() {
        return this.R;
    }

    public void h0() {
        this.F = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final e i() {
        if (this.K == null) {
            this.K = new e();
        }
        return this.K;
    }

    public void i0() {
        this.F = true;
    }

    public final bv j() {
        return null;
    }

    public LayoutInflater j0(Bundle bundle) {
        return y(bundle);
    }

    public void k0(boolean z) {
    }

    @Override // androidx.appcompat.view.menu.rr0
    public final pr0 l() {
        return this.V.b();
    }

    public void l0(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.F = true;
    }

    public boolean m() {
        Boolean bool;
        e eVar = this.K;
        if (eVar == null || (bool = eVar.p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean m0(MenuItem menuItem) {
        return false;
    }

    public boolean n() {
        Boolean bool;
        e eVar = this.K;
        if (eVar == null || (bool = eVar.o) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public void n0() {
        this.F = true;
    }

    public final Bundle o() {
        return this.f;
    }

    public void o0(Menu menu) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.F = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        Q0();
        throw null;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.F = true;
    }

    public final mv p() {
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public void p0(boolean z) {
    }

    public Context q() {
        return null;
    }

    public void q0() {
        this.F = true;
    }

    public int r() {
        e eVar = this.K;
        if (eVar == null) {
            return 0;
        }
        return eVar.b;
    }

    public void r0(Bundle bundle) {
    }

    public Object s() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.i;
    }

    public void s0() {
        this.F = true;
    }

    public void startActivityForResult(Intent intent, int i) {
        d1(intent, i, null);
    }

    public wt0 t() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        eVar.getClass();
        return null;
    }

    public void t0() {
        this.F = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(PackageParser.PARSE_IS_PRIVILEGED);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.e);
        if (this.w != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.w));
        }
        if (this.y != null) {
            sb.append(" tag=");
            sb.append(this.y);
        }
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        e eVar = this.K;
        if (eVar == null) {
            return 0;
        }
        return eVar.c;
    }

    public void u0(View view, Bundle bundle) {
    }

    public Object v() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.k;
    }

    public void v0(Bundle bundle) {
        this.F = true;
    }

    public wt0 w() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        eVar.getClass();
        return null;
    }

    public void w0(Bundle bundle) {
        this.u.I0();
        this.a = 3;
        this.F = false;
        a0(bundle);
        if (this.F) {
            U0();
            this.u.u();
        } else {
            throw new dy0("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
    }

    public View x() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.r;
    }

    public void x0() {
        Iterator it = this.Y.iterator();
        while (it.hasNext()) {
            ((f) it.next()).a();
        }
        this.Y.clear();
        this.u.j(null, g(), this);
        this.a = 0;
        this.F = false;
        throw null;
    }

    public LayoutInflater y(Bundle bundle) {
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    public void y0(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    public final int z() {
        f.b bVar = this.Q;
        return (bVar == f.b.INITIALIZED || this.v == null) ? bVar.ordinal() : Math.min(bVar.ordinal(), this.v.z());
    }

    public void z0(Bundle bundle) {
        this.u.I0();
        this.a = 1;
        this.F = false;
        this.R.a(new d());
        b0(bundle);
        this.O = true;
        if (this.F) {
            this.R.h(f.a.ON_CREATE);
            return;
        }
        throw new dy0("Fragment " + this + " did not call through to super.onCreate()");
    }
}
