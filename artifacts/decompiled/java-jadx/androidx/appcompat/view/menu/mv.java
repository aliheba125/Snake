package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageParser;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.wv;
import androidx.appcompat.view.menu.xv;
import androidx.fragment.app.FragmentContainerView;
import androidx.lifecycle.f;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class mv {
    public static boolean Q = false;
    public static boolean R = true;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public ArrayList K;
    public ArrayList L;
    public ArrayList M;
    public pv N;
    public wv.c O;
    public boolean b;
    public ArrayList e;
    public cg0 g;
    public dv x;
    public av y;
    public av z;
    public final ArrayList a = new ArrayList();
    public final uv c = new uv();
    public ArrayList d = new ArrayList();
    public final gv f = new gv(this);
    public n7 h = null;
    public boolean i = false;
    public final bg0 j = new a(false);
    public final AtomicInteger k = new AtomicInteger();
    public final Map l = Collections.synchronizedMap(new HashMap());
    public final Map m = Collections.synchronizedMap(new HashMap());
    public final Map n = Collections.synchronizedMap(new HashMap());
    public ArrayList o = new ArrayList();
    public final hv p = new hv(this);
    public final CopyOnWriteArrayList q = new CopyOnWriteArrayList();
    public final pf r = new pf() { // from class: androidx.appcompat.view.menu.iv
        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        public final void accept(Object obj) {
            mv.this.D0((Configuration) obj);
        }
    };
    public final pf s = new pf() { // from class: androidx.appcompat.view.menu.jv
        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        public final void accept(Object obj) {
            mv.this.E0((Integer) obj);
        }
    };
    public final pf t = new pf() { // from class: androidx.appcompat.view.menu.kv
        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        public final void accept(Object obj) {
            mv mvVar = mv.this;
            jy0.a(obj);
            mvVar.F0(null);
        }
    };
    public final pf u = new pf() { // from class: androidx.appcompat.view.menu.lv
        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        public final void accept(Object obj) {
            mv mvVar = mv.this;
            jy0.a(obj);
            mvVar.G0(null);
        }
    };
    public final vc0 v = new b();
    public int w = -1;
    public ev A = null;
    public ev B = new c();
    public hw0 C = null;
    public hw0 D = new d();
    public ArrayDeque E = new ArrayDeque();
    public Runnable P = new e();

    public class a extends bg0 {
        public a(boolean z) {
            super(z);
        }

        @Override // androidx.appcompat.view.menu.bg0
        public void a() {
            if (mv.v0(3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("handleOnBackCancelled. PREDICTIVE_BACK = ");
                sb.append(mv.R);
                sb.append(" fragment manager ");
                sb.append(mv.this);
            }
            if (mv.R) {
                mv.this.m();
                mv.this.h = null;
            }
        }

        @Override // androidx.appcompat.view.menu.bg0
        public void b() {
            if (mv.v0(3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("handleOnBackPressed. PREDICTIVE_BACK = ");
                sb.append(mv.R);
                sb.append(" fragment manager ");
                sb.append(mv.this);
            }
            mv.this.r0();
        }

        @Override // androidx.appcompat.view.menu.bg0
        public void c(h7 h7Var) {
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("handleOnBackProgressed. PREDICTIVE_BACK = ");
                sb.append(mv.R);
                sb.append(" fragment manager ");
                sb.append(mv.this);
            }
            mv mvVar = mv.this;
            if (mvVar.h != null) {
                Iterator it = mvVar.r(new ArrayList(Collections.singletonList(mv.this.h)), 0, 1).iterator();
                while (it.hasNext()) {
                    ((gw0) it.next()).x(h7Var);
                }
                Iterator it2 = mv.this.o.iterator();
                if (it2.hasNext()) {
                    jy0.a(it2.next());
                    throw null;
                }
            }
        }

        @Override // androidx.appcompat.view.menu.bg0
        public void d(h7 h7Var) {
            if (mv.v0(3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("handleOnBackStarted. PREDICTIVE_BACK = ");
                sb.append(mv.R);
                sb.append(" fragment manager ");
                sb.append(mv.this);
            }
            if (mv.R) {
                mv.this.N();
                mv.this.R0();
            }
        }
    }

    public class b implements vc0 {
        public b() {
        }

        @Override // androidx.appcompat.view.menu.vc0
        public boolean a(MenuItem menuItem) {
            return mv.this.C(menuItem);
        }

        @Override // androidx.appcompat.view.menu.vc0
        public void b(Menu menu, MenuInflater menuInflater) {
            mv.this.x(menu, menuInflater);
        }

        @Override // androidx.appcompat.view.menu.vc0
        public void c(Menu menu) {
            mv.this.F(menu);
        }
    }

    public class c extends ev {
        public c() {
        }

        @Override // androidx.appcompat.view.menu.ev
        public av a(ClassLoader classLoader, String str) {
            mv.this.j0();
            mv.this.j0();
            throw null;
        }
    }

    public class d implements hw0 {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.hw0
        public gw0 a(ViewGroup viewGroup) {
            return new ck(viewGroup);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mv.this.Q(true);
        }
    }

    public class f implements qv {
        public final /* synthetic */ av a;

        public f(av avVar) {
            this.a = avVar;
        }
    }

    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();
        public String m;
        public int n;

        public class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i) {
                return new g[i];
            }
        }

        public g(Parcel parcel) {
            this.m = parcel.readString();
            this.n = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.m);
            parcel.writeInt(this.n);
        }
    }

    public interface h {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    public class i implements h {
        public final String a;
        public final int b;
        public final int c;

        public i(String str, int i, int i2) {
            this.a = str;
            this.b = i;
            this.c = i2;
        }

        @Override // androidx.appcompat.view.menu.mv.h
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            av avVar = mv.this.z;
            if (avVar == null || this.b >= 0 || this.a != null || !avVar.p().M0()) {
                return mv.this.P0(arrayList, arrayList2, this.a, this.b, this.c);
            }
            return false;
        }
    }

    public class j implements h {
        public j() {
        }

        @Override // androidx.appcompat.view.menu.mv.h
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            boolean Q0 = mv.this.Q0(arrayList, arrayList2);
            mv mvVar = mv.this;
            mvVar.i = true;
            if (!mvVar.o.isEmpty() && arrayList.size() > 0) {
                ((Boolean) arrayList2.get(arrayList.size() - 1)).booleanValue();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    linkedHashSet.addAll(mv.this.c0((n7) it.next()));
                }
                Iterator it2 = mv.this.o.iterator();
                while (it2.hasNext()) {
                    jy0.a(it2.next());
                    Iterator it3 = linkedHashSet.iterator();
                    if (it3.hasNext()) {
                        throw null;
                    }
                }
            }
            return Q0;
        }
    }

    public static void S(ArrayList arrayList, ArrayList arrayList2, int i2, int i3) {
        while (i2 < i3) {
            n7 n7Var = (n7) arrayList.get(i2);
            if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                n7Var.o(-1);
                n7Var.t();
            } else {
                n7Var.o(1);
                n7Var.s();
            }
            i2++;
        }
    }

    public static int W0(int i2) {
        int i3 = 4097;
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 8194) {
            i3 = 8197;
            if (i2 == 8197) {
                return 4100;
            }
            if (i2 == 4099) {
                return 4099;
            }
            if (i2 != 4100) {
                return 0;
            }
        }
        return i3;
    }

    public static mv Z(View view) {
        av a0 = a0(view);
        if (a0 == null) {
            for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            }
            throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
        }
        if (a0.T()) {
            return a0.p();
        }
        throw new IllegalStateException("The Fragment " + a0 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
    }

    public static av a0(View view) {
        while (view != null) {
            av p0 = p0(view);
            if (p0 != null) {
                return p0;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    public static av p0(View view) {
        Object tag = view.getTag(nm0.a);
        if (tag instanceof av) {
            return (av) tag;
        }
        return null;
    }

    public static boolean v0(int i2) {
        return Q || Log.isLoggable("FragmentManager", i2);
    }

    public void A(boolean z) {
        for (av avVar : this.c.m()) {
            if (avVar != null) {
                avVar.F0();
                if (z) {
                    avVar.u.A(true);
                }
            }
        }
    }

    public boolean A0(av avVar) {
        if (avVar == null) {
            return true;
        }
        mv mvVar = avVar.t;
        return avVar.equals(mvVar.m0()) && A0(mvVar.y);
    }

    public void B() {
        for (av avVar : this.c.j()) {
            if (avVar != null) {
                avVar.k0(avVar.U());
                avVar.u.B();
            }
        }
    }

    public boolean B0(int i2) {
        return this.w >= i2;
    }

    public boolean C(MenuItem menuItem) {
        if (this.w < 1) {
            return false;
        }
        for (av avVar : this.c.m()) {
            if (avVar != null && avVar.G0(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean C0() {
        return this.G || this.H;
    }

    public final void D(av avVar) {
        if (avVar == null || !avVar.equals(V(avVar.e))) {
            return;
        }
        avVar.J0();
    }

    public final /* synthetic */ void D0(Configuration configuration) {
        if (x0()) {
            v(configuration, false);
        }
    }

    public void E() {
        J(5);
    }

    public final /* synthetic */ void E0(Integer num) {
        if (x0() && num.intValue() == 80) {
            A(false);
        }
    }

    public boolean F(Menu menu) {
        boolean z = false;
        if (this.w < 1) {
            return false;
        }
        for (av avVar : this.c.m()) {
            if (avVar != null && z0(avVar) && avVar.I0(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final /* synthetic */ void F0(de0 de0Var) {
        if (x0()) {
            throw null;
        }
    }

    public void G() {
        e1();
        D(this.z);
    }

    public final /* synthetic */ void G0(ci0 ci0Var) {
        if (x0()) {
            throw null;
        }
    }

    public void H() {
        this.G = false;
        this.H = false;
        this.N.m(false);
        J(7);
    }

    public void H0(int i2, boolean z) {
        if (i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.w) {
            this.w = i2;
            this.c.r();
            d1();
        }
    }

    public void I() {
        this.G = false;
        this.H = false;
        this.N.m(false);
        J(5);
    }

    public void I0() {
    }

    public final void J(int i2) {
        try {
            this.b = true;
            this.c.d(i2);
            H0(i2, false);
            Iterator it = q().iterator();
            while (it.hasNext()) {
                ((gw0) it.next()).q();
            }
            this.b = false;
            Q(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public void J0(FragmentContainerView fragmentContainerView) {
        View view;
        for (tv tvVar : this.c.i()) {
            av k = tvVar.k();
            if (k.x == fragmentContainerView.getId() && (view = k.H) != null && view.getParent() == null) {
                k.G = fragmentContainerView;
                tvVar.b();
            }
        }
    }

    public void K() {
        this.H = true;
        this.N.m(true);
        J(4);
    }

    public void K0(tv tvVar) {
        av k = tvVar.k();
        if (k.I) {
            if (this.b) {
                this.J = true;
            } else {
                k.I = false;
                tvVar.m();
            }
        }
    }

    public void L() {
        J(2);
    }

    public void L0(int i2, int i3, boolean z) {
        if (i2 >= 0) {
            O(new i(null, i2, i3), z);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public final void M() {
        if (this.J) {
            this.J = false;
            d1();
        }
    }

    public boolean M0() {
        return O0(null, -1, 0);
    }

    public final void N() {
        Iterator it = q().iterator();
        while (it.hasNext()) {
            ((gw0) it.next()).q();
        }
    }

    public boolean N0(int i2, int i3) {
        if (i2 >= 0) {
            return O0(null, i2, i3);
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public void O(h hVar, boolean z) {
        if (!z) {
            if (!this.I) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        synchronized (this.a) {
            try {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean O0(String str, int i2, int i3) {
        Q(false);
        P(true);
        av avVar = this.z;
        if (avVar != null && i2 < 0 && str == null && avVar.p().M0()) {
            return true;
        }
        boolean P0 = P0(this.K, this.L, str, i2, i3);
        if (P0) {
            this.b = true;
            try {
                T0(this.K, this.L);
            } finally {
                o();
            }
        }
        e1();
        M();
        this.c.b();
        return P0;
    }

    public final void P(boolean z) {
        if (this.b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (!this.I) {
            throw new IllegalStateException("FragmentManager has not been attached to a host.");
        }
        throw new IllegalStateException("FragmentManager has been destroyed");
    }

    public boolean P0(ArrayList arrayList, ArrayList arrayList2, String str, int i2, int i3) {
        int W = W(str, i2, (i3 & 1) != 0);
        if (W < 0) {
            return false;
        }
        for (int size = this.d.size() - 1; size >= W; size--) {
            arrayList.add((n7) this.d.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public boolean Q(boolean z) {
        P(z);
        boolean z2 = false;
        while (d0(this.K, this.L)) {
            z2 = true;
            this.b = true;
            try {
                T0(this.K, this.L);
            } finally {
                o();
            }
        }
        e1();
        M();
        this.c.b();
        return z2;
    }

    public boolean Q0(ArrayList arrayList, ArrayList arrayList2) {
        ArrayList arrayList3 = this.d;
        n7 n7Var = (n7) arrayList3.get(arrayList3.size() - 1);
        this.h = n7Var;
        Iterator it = n7Var.c.iterator();
        while (it.hasNext()) {
            av avVar = ((xv.a) it.next()).b;
            if (avVar != null) {
                avVar.m = true;
            }
        }
        return P0(arrayList, arrayList2, null, -1, 0);
    }

    public void R(h hVar, boolean z) {
        if (z) {
            return;
        }
        P(z);
        if (hVar.a(this.K, this.L)) {
            this.b = true;
            try {
                T0(this.K, this.L);
            } finally {
                o();
            }
        }
        e1();
        M();
        this.c.b();
    }

    public void R0() {
        O(new j(), false);
    }

    public void S0(av avVar) {
        if (v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("remove: ");
            sb.append(avVar);
            sb.append(" nesting=");
            sb.append(avVar.s);
        }
        boolean z = !avVar.V();
        if (!avVar.A || z) {
            this.c.s(avVar);
            if (w0(avVar)) {
                this.F = true;
            }
            avVar.l = true;
            b1(avVar);
        }
    }

    public final void T(ArrayList arrayList, ArrayList arrayList2, int i2, int i3) {
        boolean z = ((n7) arrayList.get(i2)).r;
        ArrayList arrayList3 = this.M;
        if (arrayList3 == null) {
            this.M = new ArrayList();
        } else {
            arrayList3.clear();
        }
        this.M.addAll(this.c.m());
        av m0 = m0();
        boolean z2 = false;
        for (int i4 = i2; i4 < i3; i4++) {
            n7 n7Var = (n7) arrayList.get(i4);
            m0 = !((Boolean) arrayList2.get(i4)).booleanValue() ? n7Var.u(this.M, m0) : n7Var.x(this.M, m0);
            z2 = z2 || n7Var.i;
        }
        this.M.clear();
        if (!z && this.w >= 1) {
            for (int i5 = i2; i5 < i3; i5++) {
                Iterator it = ((n7) arrayList.get(i5)).c.iterator();
                while (it.hasNext()) {
                    av avVar = ((xv.a) it.next()).b;
                    if (avVar != null && avVar.t != null) {
                        this.c.p(s(avVar));
                    }
                }
            }
        }
        S(arrayList, arrayList2, i2, i3);
        boolean booleanValue = ((Boolean) arrayList2.get(i3 - 1)).booleanValue();
        if (z2 && !this.o.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                linkedHashSet.addAll(c0((n7) it2.next()));
            }
            if (this.h == null) {
                Iterator it3 = this.o.iterator();
                while (it3.hasNext()) {
                    jy0.a(it3.next());
                    Iterator it4 = linkedHashSet.iterator();
                    if (it4.hasNext()) {
                        throw null;
                    }
                }
                Iterator it5 = this.o.iterator();
                while (it5.hasNext()) {
                    jy0.a(it5.next());
                    Iterator it6 = linkedHashSet.iterator();
                    if (it6.hasNext()) {
                        throw null;
                    }
                }
            }
        }
        for (int i6 = i2; i6 < i3; i6++) {
            n7 n7Var2 = (n7) arrayList.get(i6);
            if (booleanValue) {
                for (int size = n7Var2.c.size() - 1; size >= 0; size--) {
                    av avVar2 = ((xv.a) n7Var2.c.get(size)).b;
                    if (avVar2 != null) {
                        s(avVar2).m();
                    }
                }
            } else {
                Iterator it7 = n7Var2.c.iterator();
                while (it7.hasNext()) {
                    av avVar3 = ((xv.a) it7.next()).b;
                    if (avVar3 != null) {
                        s(avVar3).m();
                    }
                }
            }
        }
        H0(this.w, true);
        for (gw0 gw0Var : r(arrayList, i2, i3)) {
            gw0Var.A(booleanValue);
            gw0Var.w();
            gw0Var.n();
        }
        while (i2 < i3) {
            n7 n7Var3 = (n7) arrayList.get(i2);
            if (((Boolean) arrayList2.get(i2)).booleanValue() && n7Var3.v >= 0) {
                n7Var3.v = -1;
            }
            n7Var3.w();
            i2++;
        }
        if (z2) {
            U0();
        }
    }

    public final void T0(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!((n7) arrayList.get(i2)).r) {
                if (i3 != i2) {
                    T(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                    while (i3 < size && ((Boolean) arrayList2.get(i3)).booleanValue() && !((n7) arrayList.get(i3)).r) {
                        i3++;
                    }
                }
                T(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            T(arrayList, arrayList2, i3, size);
        }
    }

    public boolean U() {
        boolean Q2 = Q(true);
        b0();
        return Q2;
    }

    public final void U0() {
        if (this.o.size() <= 0) {
            return;
        }
        jy0.a(this.o.get(0));
        throw null;
    }

    public av V(String str) {
        return this.c.e(str);
    }

    public void V0(Parcelable parcelable) {
        if (parcelable == null) {
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && bundle.getBundle(str) != null) {
                throw null;
            }
        }
        HashMap hashMap = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && bundle.getBundle(str2) != null) {
                throw null;
            }
        }
        this.c.v(hashMap);
        ov ovVar = (ov) bundle.getParcelable("state");
        if (ovVar == null) {
            return;
        }
        this.c.t();
        Iterator it = ovVar.m.iterator();
        while (it.hasNext()) {
            Bundle z = this.c.z((String) it.next(), null);
            if (z != null) {
                av h2 = this.N.h(((sv) z.getParcelable("state")).n);
                h2.getClass();
                if (v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("restoreSaveState: re-attaching retained ");
                    sb.append(h2);
                }
                av k = new tv(this.p, this.c, h2, z).k();
                k.b = z;
                k.t = this;
                if (!v0(2)) {
                    throw null;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("restoreSaveState: active (");
                sb2.append(k.e);
                sb2.append("): ");
                sb2.append(k);
                throw null;
            }
        }
        for (av avVar : this.N.j()) {
            if (!this.c.c(avVar.e)) {
                if (v0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Discarding retained Fragment ");
                    sb3.append(avVar);
                    sb3.append(" that was not found in the set of active Fragments ");
                    sb3.append(ovVar.m);
                }
                this.N.l(avVar);
                avVar.t = this;
                tv tvVar = new tv(this.p, this.c, avVar);
                tvVar.r(1);
                tvVar.m();
                avVar.l = true;
                tvVar.m();
            }
        }
        this.c.u(ovVar.n);
        if (ovVar.o != null) {
            this.d = new ArrayList(ovVar.o.length);
            int i2 = 0;
            while (true) {
                o7[] o7VarArr = ovVar.o;
                if (i2 >= o7VarArr.length) {
                    break;
                }
                n7 b2 = o7VarArr[i2].b(this);
                if (v0(2)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("restoreAllState: back stack #");
                    sb4.append(i2);
                    sb4.append(" (index ");
                    sb4.append(b2.v);
                    sb4.append("): ");
                    sb4.append(b2);
                    PrintWriter printWriter = new PrintWriter(new ka0("FragmentManager"));
                    b2.r("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(b2);
                i2++;
            }
        } else {
            this.d = new ArrayList();
        }
        this.k.set(ovVar.p);
        String str3 = ovVar.q;
        if (str3 != null) {
            av V = V(str3);
            this.z = V;
            D(V);
        }
        ArrayList arrayList = ovVar.r;
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                this.l.put((String) arrayList.get(i3), (p7) ovVar.s.get(i3));
            }
        }
        this.E = new ArrayDeque(ovVar.t);
    }

    public final int W(String str, int i2, boolean z) {
        if (this.d.isEmpty()) {
            return -1;
        }
        if (str == null && i2 < 0) {
            if (z) {
                return 0;
            }
            return this.d.size() - 1;
        }
        int size = this.d.size() - 1;
        while (size >= 0) {
            n7 n7Var = (n7) this.d.get(size);
            if ((str != null && str.equals(n7Var.v())) || (i2 >= 0 && i2 == n7Var.v)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z) {
            if (size == this.d.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            n7 n7Var2 = (n7) this.d.get(size - 1);
            if ((str == null || !str.equals(n7Var2.v())) && (i2 < 0 || i2 != n7Var2.v)) {
                return size;
            }
            size--;
        }
        return size;
    }

    public av X(int i2) {
        return this.c.f(i2);
    }

    public Bundle X0() {
        o7[] o7VarArr;
        Bundle bundle = new Bundle();
        b0();
        N();
        Q(true);
        this.G = true;
        this.N.m(true);
        ArrayList w = this.c.w();
        HashMap k = this.c.k();
        if (k.isEmpty()) {
            v0(2);
        } else {
            ArrayList x = this.c.x();
            int size = this.d.size();
            if (size > 0) {
                o7VarArr = new o7[size];
                for (int i2 = 0; i2 < size; i2++) {
                    o7VarArr[i2] = new o7((n7) this.d.get(i2));
                    if (v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("saveAllState: adding back stack #");
                        sb.append(i2);
                        sb.append(": ");
                        sb.append(this.d.get(i2));
                    }
                }
            } else {
                o7VarArr = null;
            }
            ov ovVar = new ov();
            ovVar.m = w;
            ovVar.n = x;
            ovVar.o = o7VarArr;
            ovVar.p = this.k.get();
            av avVar = this.z;
            if (avVar != null) {
                ovVar.q = avVar.e;
            }
            ovVar.r.addAll(this.l.keySet());
            ovVar.s.addAll(this.l.values());
            ovVar.t = new ArrayList(this.E);
            bundle.putParcelable("state", ovVar);
            for (String str : this.m.keySet()) {
                bundle.putBundle("result_" + str, (Bundle) this.m.get(str));
            }
            for (String str2 : k.keySet()) {
                bundle.putBundle("fragment_" + str2, (Bundle) k.get(str2));
            }
        }
        return bundle;
    }

    public av Y(String str) {
        return this.c.g(str);
    }

    public void Y0(av avVar, boolean z) {
        ViewGroup h0 = h0(avVar);
        if (h0 == null || !(h0 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) h0).setDrawDisappearingViewsLast(!z);
    }

    public void Z0(av avVar, f.b bVar) {
        if (avVar.equals(V(avVar.e))) {
            avVar.Q = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + avVar + " is not an active fragment of FragmentManager " + this);
    }

    public void a1(av avVar) {
        if (avVar == null || avVar.equals(V(avVar.e))) {
            av avVar2 = this.z;
            this.z = avVar;
            D(avVar2);
            D(this.z);
            return;
        }
        throw new IllegalArgumentException("Fragment " + avVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void b0() {
        Iterator it = q().iterator();
        while (it.hasNext()) {
            ((gw0) it.next()).r();
        }
    }

    public final void b1(av avVar) {
        ViewGroup h0 = h0(avVar);
        if (h0 == null || avVar.r() + avVar.u() + avVar.E() + avVar.F() <= 0) {
            return;
        }
        if (h0.getTag(nm0.c) == null) {
            h0.setTag(nm0.c, avVar);
        }
        ((av) h0.getTag(nm0.c)).a1(avVar.D());
    }

    public Set c0(n7 n7Var) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < n7Var.c.size(); i2++) {
            av avVar = ((xv.a) n7Var.c.get(i2)).b;
            if (avVar != null && n7Var.i) {
                hashSet.add(avVar);
            }
        }
        return hashSet;
    }

    public void c1(av avVar) {
        if (v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("show: ");
            sb.append(avVar);
        }
        if (avVar.z) {
            avVar.z = false;
            avVar.M = !avVar.M;
        }
    }

    public final boolean d0(ArrayList arrayList, ArrayList arrayList2) {
        synchronized (this.a) {
            if (!this.a.isEmpty()) {
                int size = this.a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((h) this.a.get(i2)).a(arrayList, arrayList2);
                }
                this.a.clear();
                throw null;
            }
        }
        return false;
    }

    public final void d1() {
        Iterator it = this.c.i().iterator();
        while (it.hasNext()) {
            K0((tv) it.next());
        }
    }

    public int e0() {
        return this.d.size() + (this.h != null ? 1 : 0);
    }

    public final void e1() {
        synchronized (this.a) {
            try {
                if (!this.a.isEmpty()) {
                    this.j.g(true);
                    if (v0(3)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("FragmentManager ");
                        sb.append(this);
                        sb.append(" enabling OnBackPressedCallback, caused by non-empty pending actions");
                    }
                    return;
                }
                boolean z = e0() > 0 && A0(this.y);
                if (v0(3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OnBackPressedCallback for FragmentManager ");
                    sb2.append(this);
                    sb2.append(" enabled state is ");
                    sb2.append(z);
                }
                this.j.g(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f(n7 n7Var) {
        this.d.add(n7Var);
    }

    public final pv f0(av avVar) {
        return this.N.i(avVar);
    }

    public tv g(av avVar) {
        String str = avVar.P;
        if (str != null) {
            wv.f(avVar, str);
        }
        if (v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("add: ");
            sb.append(avVar);
        }
        tv s = s(avVar);
        avVar.t = this;
        this.c.p(s);
        if (!avVar.A) {
            this.c.a(avVar);
            avVar.l = false;
            if (avVar.H == null) {
                avVar.M = false;
            }
            if (w0(avVar)) {
                this.F = true;
            }
        }
        return s;
    }

    public dv g0() {
        return this.x;
    }

    public void h(qv qvVar) {
        this.q.add(qvVar);
    }

    public final ViewGroup h0(av avVar) {
        ViewGroup viewGroup = avVar.G;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (avVar.x > 0 && this.x.b()) {
            View a2 = this.x.a(avVar.x);
            if (a2 instanceof ViewGroup) {
                return (ViewGroup) a2;
            }
        }
        return null;
    }

    public int i() {
        return this.k.getAndIncrement();
    }

    public ev i0() {
        ev evVar = this.A;
        if (evVar != null) {
            return evVar;
        }
        av avVar = this.y;
        return avVar != null ? avVar.t.i0() : this.B;
    }

    public void j(fv fvVar, dv dvVar, av avVar) {
        this.x = dvVar;
        this.y = avVar;
        if (avVar != null) {
            h(new f(avVar));
        }
        if (this.y != null) {
            e1();
        }
        if (avVar != null) {
            this.N = avVar.t.f0(avVar);
        } else {
            this.N = new pv(false);
        }
        this.N.m(C0());
        this.c.y(this.N);
    }

    public fv j0() {
        return null;
    }

    public void k(av avVar) {
        if (v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("attach: ");
            sb.append(avVar);
        }
        if (avVar.A) {
            avVar.A = false;
            if (avVar.k) {
                return;
            }
            this.c.a(avVar);
            if (v0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("add from attach: ");
                sb2.append(avVar);
            }
            if (w0(avVar)) {
                this.F = true;
            }
        }
    }

    public hv k0() {
        return this.p;
    }

    public xv l() {
        return new n7(this);
    }

    public av l0() {
        return this.y;
    }

    public void m() {
        n7 n7Var = this.h;
        if (n7Var != null) {
            n7Var.u = false;
            n7Var.e();
            U();
            Iterator it = this.o.iterator();
            if (it.hasNext()) {
                jy0.a(it.next());
                throw null;
            }
        }
    }

    public av m0() {
        return this.z;
    }

    public boolean n() {
        boolean z = false;
        for (av avVar : this.c.j()) {
            if (avVar != null) {
                z = w0(avVar);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public hw0 n0() {
        hw0 hw0Var = this.C;
        if (hw0Var != null) {
            return hw0Var;
        }
        av avVar = this.y;
        return avVar != null ? avVar.t.n0() : this.D;
    }

    public final void o() {
        this.b = false;
        this.L.clear();
        this.K.clear();
    }

    public wv.c o0() {
        return this.O;
    }

    public final void p() {
        throw null;
    }

    public final Set q() {
        HashSet hashSet = new HashSet();
        Iterator it = this.c.i().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((tv) it.next()).k().G;
            if (viewGroup != null) {
                hashSet.add(gw0.v(viewGroup, n0()));
            }
        }
        return hashSet;
    }

    public a61 q0(av avVar) {
        return this.N.k(avVar);
    }

    public Set r(ArrayList arrayList, int i2, int i3) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i2 < i3) {
            Iterator it = ((n7) arrayList.get(i2)).c.iterator();
            while (it.hasNext()) {
                av avVar = ((xv.a) it.next()).b;
                if (avVar != null && (viewGroup = avVar.G) != null) {
                    hashSet.add(gw0.u(viewGroup, this));
                }
            }
            i2++;
        }
        return hashSet;
    }

    public void r0() {
        Q(true);
        if (!R || this.h == null) {
            if (this.j.e()) {
                v0(3);
                M0();
                return;
            } else {
                v0(3);
                this.g.e();
                return;
            }
        }
        if (!this.o.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(c0(this.h));
            Iterator it = this.o.iterator();
            while (it.hasNext()) {
                jy0.a(it.next());
                Iterator it2 = linkedHashSet.iterator();
                if (it2.hasNext()) {
                    throw null;
                }
            }
        }
        Iterator it3 = this.h.c.iterator();
        while (it3.hasNext()) {
            av avVar = ((xv.a) it3.next()).b;
            if (avVar != null) {
                avVar.m = false;
            }
        }
        Iterator it4 = r(new ArrayList(Collections.singletonList(this.h)), 0, 1).iterator();
        while (it4.hasNext()) {
            ((gw0) it4.next()).f();
        }
        this.h = null;
        e1();
        if (v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("OnBackPressedCallback enabled=");
            sb.append(this.j.e());
            sb.append(" for  FragmentManager ");
            sb.append(this);
        }
    }

    public tv s(av avVar) {
        tv l = this.c.l(avVar.e);
        if (l != null) {
            return l;
        }
        new tv(this.p, this.c, avVar);
        throw null;
    }

    public void s0(av avVar) {
        if (v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("hide: ");
            sb.append(avVar);
        }
        if (avVar.z) {
            return;
        }
        avVar.z = true;
        avVar.M = true ^ avVar.M;
        b1(avVar);
    }

    public void t(av avVar) {
        if (v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("detach: ");
            sb.append(avVar);
        }
        if (avVar.A) {
            return;
        }
        avVar.A = true;
        if (avVar.k) {
            if (v0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("remove from detach: ");
                sb2.append(avVar);
            }
            this.c.s(avVar);
            if (w0(avVar)) {
                this.F = true;
            }
            b1(avVar);
        }
    }

    public void t0(av avVar) {
        if (avVar.k && w0(avVar)) {
            this.F = true;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(PackageParser.PARSE_IS_PRIVILEGED);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        av avVar = this.y;
        if (avVar != null) {
            sb.append(avVar.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.y)));
            sb.append("}");
        } else {
            sb.append("null");
        }
        sb.append("}}");
        return sb.toString();
    }

    public void u() {
        this.G = false;
        this.H = false;
        this.N.m(false);
        J(4);
    }

    public boolean u0() {
        return this.I;
    }

    public void v(Configuration configuration, boolean z) {
        for (av avVar : this.c.m()) {
            if (avVar != null) {
                avVar.y0(configuration);
                if (z) {
                    avVar.u.v(configuration, true);
                }
            }
        }
    }

    public void w() {
        this.G = false;
        this.H = false;
        this.N.m(false);
        J(1);
    }

    public final boolean w0(av avVar) {
        return (avVar.D && avVar.E) || avVar.u.n();
    }

    public boolean x(Menu menu, MenuInflater menuInflater) {
        if (this.w < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (av avVar : this.c.m()) {
            if (avVar != null && z0(avVar) && avVar.A0(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(avVar);
                z = true;
            }
        }
        if (this.e != null) {
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                av avVar2 = (av) this.e.get(i2);
                if (arrayList == null || !arrayList.contains(avVar2)) {
                    avVar2.g0();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public final boolean x0() {
        av avVar = this.y;
        if (avVar == null) {
            return true;
        }
        return avVar.T() && this.y.C().x0();
    }

    public void y() {
        this.I = true;
        Q(true);
        N();
        p();
        J(-1);
        this.x = null;
        this.y = null;
        if (this.g != null) {
            this.j.f();
            this.g = null;
        }
    }

    public boolean y0(av avVar) {
        if (avVar == null) {
            return false;
        }
        return avVar.U();
    }

    public void z() {
        J(1);
    }

    public boolean z0(av avVar) {
        if (avVar == null) {
            return true;
        }
        return avVar.W();
    }
}
