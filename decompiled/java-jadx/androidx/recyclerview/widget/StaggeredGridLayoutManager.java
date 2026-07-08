package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.p0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.o implements RecyclerView.y.b {
    public BitSet B;
    public boolean G;
    public boolean H;
    public e I;
    public int J;
    public int[] O;
    public f[] t;
    public i u;
    public i v;
    public int w;
    public int x;
    public final androidx.recyclerview.widget.f y;
    public int s = -1;
    public boolean z = false;
    public boolean A = false;
    public int C = -1;
    public int D = Integer.MIN_VALUE;
    public d E = new d();
    public int F = 2;
    public final Rect K = new Rect();
    public final b L = new b();
    public boolean M = false;
    public boolean N = true;
    public final Runnable P = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.Y1();
        }
    }

    public class b {
        public int a;
        public int b;
        public boolean c;
        public boolean d;
        public boolean e;
        public int[] f;

        public b() {
            c();
        }

        public void a() {
            this.b = this.c ? StaggeredGridLayoutManager.this.u.i() : StaggeredGridLayoutManager.this.u.m();
        }

        public void b(int i) {
            if (this.c) {
                this.b = StaggeredGridLayoutManager.this.u.i() - i;
            } else {
                this.b = StaggeredGridLayoutManager.this.u.m() + i;
            }
        }

        public void c() {
            this.a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        public void d(f[] fVarArr) {
            int length = fVarArr.length;
            int[] iArr = this.f;
            if (iArr == null || iArr.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.t.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = fVarArr[i].p(Integer.MIN_VALUE);
            }
        }
    }

    public static class c extends RecyclerView.p {
        public f e;
        public boolean f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int e() {
            f fVar = this.e;
            if (fVar == null) {
                return -1;
            }
            return fVar.e;
        }

        public boolean f() {
            return this.f;
        }

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();
        public int m;
        public int n;
        public int o;
        public int[] p;
        public int q;
        public int[] r;
        public List s;
        public boolean t;
        public boolean u;
        public boolean v;

        public static class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public e[] newArray(int i) {
                return new e[i];
            }
        }

        public e() {
        }

        public void a() {
            this.p = null;
            this.o = 0;
            this.m = -1;
            this.n = -1;
        }

        public void b() {
            this.p = null;
            this.o = 0;
            this.q = 0;
            this.r = null;
            this.s = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.m);
            parcel.writeInt(this.n);
            parcel.writeInt(this.o);
            if (this.o > 0) {
                parcel.writeIntArray(this.p);
            }
            parcel.writeInt(this.q);
            if (this.q > 0) {
                parcel.writeIntArray(this.r);
            }
            parcel.writeInt(this.t ? 1 : 0);
            parcel.writeInt(this.u ? 1 : 0);
            parcel.writeInt(this.v ? 1 : 0);
            parcel.writeList(this.s);
        }

        public e(Parcel parcel) {
            this.m = parcel.readInt();
            this.n = parcel.readInt();
            int readInt = parcel.readInt();
            this.o = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.p = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.q = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.r = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.t = parcel.readInt() == 1;
            this.u = parcel.readInt() == 1;
            this.v = parcel.readInt() == 1;
            this.s = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.o = eVar.o;
            this.m = eVar.m;
            this.n = eVar.n;
            this.p = eVar.p;
            this.q = eVar.q;
            this.r = eVar.r;
            this.t = eVar.t;
            this.u = eVar.u;
            this.v = eVar.v;
            this.s = eVar.s;
        }
    }

    public class f {
        public ArrayList a = new ArrayList();
        public int b = Integer.MIN_VALUE;
        public int c = Integer.MIN_VALUE;
        public int d = 0;
        public final int e;

        public f(int i) {
            this.e = i;
        }

        public void a(View view) {
            c n = n(view);
            n.e = this;
            this.a.add(view);
            this.c = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.b = Integer.MIN_VALUE;
            }
            if (n.c() || n.b()) {
                this.d += StaggeredGridLayoutManager.this.u.e(view);
            }
        }

        public void b(boolean z, int i) {
            int l = z ? l(Integer.MIN_VALUE) : p(Integer.MIN_VALUE);
            e();
            if (l == Integer.MIN_VALUE) {
                return;
            }
            if (!z || l >= StaggeredGridLayoutManager.this.u.i()) {
                if (z || l <= StaggeredGridLayoutManager.this.u.m()) {
                    if (i != Integer.MIN_VALUE) {
                        l += i;
                    }
                    this.c = l;
                    this.b = l;
                }
            }
        }

        public void c() {
            d.a f;
            ArrayList arrayList = this.a;
            View view = (View) arrayList.get(arrayList.size() - 1);
            c n = n(view);
            this.c = StaggeredGridLayoutManager.this.u.d(view);
            if (n.f && (f = StaggeredGridLayoutManager.this.E.f(n.a())) != null && f.n == 1) {
                this.c += f.a(this.e);
            }
        }

        public void d() {
            d.a f;
            View view = (View) this.a.get(0);
            c n = n(view);
            this.b = StaggeredGridLayoutManager.this.u.g(view);
            if (n.f && (f = StaggeredGridLayoutManager.this.E.f(n.a())) != null && f.n == -1) {
                this.b -= f.a(this.e);
            }
        }

        public void e() {
            this.a.clear();
            q();
            this.d = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.z ? i(this.a.size() - 1, -1, true) : i(0, this.a.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.z ? i(0, this.a.size(), true) : i(this.a.size() - 1, -1, true);
        }

        public int h(int i, int i2, boolean z, boolean z2, boolean z3) {
            int m = StaggeredGridLayoutManager.this.u.m();
            int i3 = StaggeredGridLayoutManager.this.u.i();
            int i4 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = (View) this.a.get(i);
                int g = StaggeredGridLayoutManager.this.u.g(view);
                int d = StaggeredGridLayoutManager.this.u.d(view);
                boolean z4 = false;
                boolean z5 = !z3 ? g >= i3 : g > i3;
                if (!z3 ? d > m : d >= m) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (g >= m && d <= i3) {
                            return StaggeredGridLayoutManager.this.n0(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.n0(view);
                        }
                        if (g < m || d > i3) {
                            return StaggeredGridLayoutManager.this.n0(view);
                        }
                    }
                }
                i += i4;
            }
            return -1;
        }

        public int i(int i, int i2, boolean z) {
            return h(i, i2, false, false, z);
        }

        public int j() {
            return this.d;
        }

        public int k() {
            int i = this.c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            c();
            return this.c;
        }

        public int l(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            c();
            return this.c;
        }

        public View m(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.a.size() - 1;
                while (size >= 0) {
                    View view2 = (View) this.a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.z && staggeredGridLayoutManager.n0(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.n0(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = (View) this.a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.z && staggeredGridLayoutManager3.n0(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.n0(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        public c n(View view) {
            return (c) view.getLayoutParams();
        }

        public int o() {
            int i = this.b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            d();
            return this.b;
        }

        public int p(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            d();
            return this.b;
        }

        public void q() {
            this.b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
        }

        public void r(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                this.b = i2 + i;
            }
            int i3 = this.c;
            if (i3 != Integer.MIN_VALUE) {
                this.c = i3 + i;
            }
        }

        public void s() {
            int size = this.a.size();
            View view = (View) this.a.remove(size - 1);
            c n = n(view);
            n.e = null;
            if (n.c() || n.b()) {
                this.d -= StaggeredGridLayoutManager.this.u.e(view);
            }
            if (size == 1) {
                this.b = Integer.MIN_VALUE;
            }
            this.c = Integer.MIN_VALUE;
        }

        public void t() {
            View view = (View) this.a.remove(0);
            c n = n(view);
            n.e = null;
            if (this.a.size() == 0) {
                this.c = Integer.MIN_VALUE;
            }
            if (n.c() || n.b()) {
                this.d -= StaggeredGridLayoutManager.this.u.e(view);
            }
            this.b = Integer.MIN_VALUE;
        }

        public void u(View view) {
            c n = n(view);
            n.e = this;
            this.a.add(0, view);
            this.b = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (n.c() || n.b()) {
                this.d += StaggeredGridLayoutManager.this.u.e(view);
            }
        }

        public void v(int i) {
            this.b = i;
            this.c = i;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.o.d o0 = RecyclerView.o.o0(context, attributeSet, i, i2);
        N2(o0.a);
        P2(o0.b);
        O2(o0.c);
        this.y = new androidx.recyclerview.widget.f();
        g2();
    }

    private void A2(View view, int i, int i2, boolean z) {
        o(view, this.K);
        c cVar = (c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.K;
        int X2 = X2(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.K;
        int X22 = X2(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (z ? N1(view, X2, X22, cVar) : L1(view, X2, X22, cVar)) {
            view.measure(X2, X22);
        }
    }

    private void K2() {
        if (this.w == 1 || !z2()) {
            this.A = this.z;
        } else {
            this.A = !this.z;
        }
    }

    private int a2(RecyclerView.z zVar) {
        if (O() == 0) {
            return 0;
        }
        return l.a(zVar, this.u, k2(!this.N), j2(!this.N), this, this.N);
    }

    private int b2(RecyclerView.z zVar) {
        if (O() == 0) {
            return 0;
        }
        return l.b(zVar, this.u, k2(!this.N), j2(!this.N), this, this.N, this.A);
    }

    private int c2(RecyclerView.z zVar) {
        if (O() == 0) {
            return 0;
        }
        return l.c(zVar, this.u, k2(!this.N), j2(!this.N), this, this.N);
    }

    private int d2(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.w == 1) ? 1 : Integer.MIN_VALUE : this.w == 0 ? 1 : Integer.MIN_VALUE : this.w == 1 ? -1 : Integer.MIN_VALUE : this.w == 0 ? -1 : Integer.MIN_VALUE : (this.w != 1 && z2()) ? -1 : 1 : (this.w != 1 && z2()) ? 1 : -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int A(RecyclerView.z zVar) {
        return c2(zVar);
    }

    public final void B2(View view, c cVar, boolean z) {
        if (cVar.f) {
            if (this.w == 1) {
                A2(view, this.J, RecyclerView.o.P(b0(), c0(), m0() + h0(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z);
                return;
            } else {
                A2(view, RecyclerView.o.P(u0(), v0(), j0() + k0(), ((ViewGroup.MarginLayoutParams) cVar).width, true), this.J, z);
                return;
            }
        }
        if (this.w == 1) {
            A2(view, RecyclerView.o.P(this.x, v0(), 0, ((ViewGroup.MarginLayoutParams) cVar).width, false), RecyclerView.o.P(b0(), c0(), m0() + h0(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z);
        } else {
            A2(view, RecyclerView.o.P(u0(), v0(), j0() + k0(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.o.P(this.x, c0(), 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), z);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int C1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        return L2(i, uVar, zVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0152, code lost:
    
        if (Y1() != false) goto L87;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void C2(RecyclerView.u uVar, RecyclerView.z zVar, boolean z) {
        e eVar;
        b bVar = this.L;
        if (!(this.I == null && this.C == -1) && zVar.b() == 0) {
            q1(uVar);
            bVar.c();
            return;
        }
        boolean z2 = true;
        boolean z3 = (bVar.e && this.C == -1 && this.I == null) ? false : true;
        if (z3) {
            bVar.c();
            if (this.I != null) {
                T1(bVar);
            } else {
                K2();
                bVar.c = this.A;
            }
            T2(zVar, bVar);
            bVar.e = true;
        }
        if (this.I == null && this.C == -1 && (bVar.c != this.G || z2() != this.H)) {
            this.E.b();
            bVar.d = true;
        }
        if (O() > 0 && ((eVar = this.I) == null || eVar.o < 1)) {
            if (bVar.d) {
                for (int i = 0; i < this.s; i++) {
                    this.t[i].e();
                    int i2 = bVar.b;
                    if (i2 != Integer.MIN_VALUE) {
                        this.t[i].v(i2);
                    }
                }
            } else if (z3 || this.L.f == null) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].b(this.A, bVar.b);
                }
                this.L.d(this.t);
            } else {
                for (int i4 = 0; i4 < this.s; i4++) {
                    f fVar = this.t[i4];
                    fVar.e();
                    fVar.v(this.L.f[i4]);
                }
            }
        }
        B(uVar);
        this.y.a = false;
        this.M = false;
        V2(this.v.n());
        U2(bVar.a, zVar);
        if (bVar.c) {
            M2(-1);
            h2(uVar, this.y, zVar);
            M2(1);
            androidx.recyclerview.widget.f fVar2 = this.y;
            fVar2.c = bVar.a + fVar2.d;
            h2(uVar, fVar2, zVar);
        } else {
            M2(1);
            h2(uVar, this.y, zVar);
            M2(-1);
            androidx.recyclerview.widget.f fVar3 = this.y;
            fVar3.c = bVar.a + fVar3.d;
            h2(uVar, fVar3, zVar);
        }
        J2();
        if (O() > 0) {
            if (this.A) {
                n2(uVar, zVar, true);
                o2(uVar, zVar, false);
            } else {
                o2(uVar, zVar, true);
                n2(uVar, zVar, false);
            }
        }
        if (z && !zVar.e() && this.F != 0 && O() > 0 && (this.M || x2() != null)) {
            u1(this.P);
        }
        z2 = false;
        if (zVar.e()) {
            this.L.c();
        }
        this.G = bVar.c;
        this.H = z2();
        if (z2) {
            this.L.c();
            C2(uVar, zVar, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void D1(int i) {
        e eVar = this.I;
        if (eVar != null && eVar.m != i) {
            eVar.a();
        }
        this.C = i;
        this.D = Integer.MIN_VALUE;
        z1();
    }

    public final boolean D2(int i) {
        if (this.w == 0) {
            return (i == -1) != this.A;
        }
        return ((i == -1) == this.A) == z2();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int E1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        return L2(i, uVar, zVar);
    }

    public void E2(int i, RecyclerView.z zVar) {
        int p2;
        int i2;
        if (i > 0) {
            p2 = q2();
            i2 = 1;
        } else {
            p2 = p2();
            i2 = -1;
        }
        this.y.a = true;
        U2(p2, zVar);
        M2(i2);
        androidx.recyclerview.widget.f fVar = this.y;
        fVar.c = p2 + fVar.d;
        fVar.b = Math.abs(i);
    }

    public final void F2(View view) {
        for (int i = this.s - 1; i >= 0; i--) {
            this.t[i].u(view);
        }
    }

    public final void G2(RecyclerView.u uVar, androidx.recyclerview.widget.f fVar) {
        if (!fVar.a || fVar.i) {
            return;
        }
        if (fVar.b == 0) {
            if (fVar.e == -1) {
                H2(uVar, fVar.g);
                return;
            } else {
                I2(uVar, fVar.f);
                return;
            }
        }
        if (fVar.e != -1) {
            int t2 = t2(fVar.g) - fVar.g;
            I2(uVar, t2 < 0 ? fVar.f : Math.min(t2, fVar.b) + fVar.f);
        } else {
            int i = fVar.f;
            int s2 = i - s2(i);
            H2(uVar, s2 < 0 ? fVar.g : fVar.g - Math.min(s2, fVar.b));
        }
    }

    public final void H2(RecyclerView.u uVar, int i) {
        for (int O = O() - 1; O >= 0; O--) {
            View N = N(O);
            if (this.u.g(N) < i || this.u.q(N) < i) {
                return;
            }
            c cVar = (c) N.getLayoutParams();
            if (cVar.f) {
                for (int i2 = 0; i2 < this.s; i2++) {
                    if (this.t[i2].a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].s();
                }
            } else if (cVar.e.a.size() == 1) {
                return;
            } else {
                cVar.e.s();
            }
            s1(N, uVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p I() {
        return this.w == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void I0(int i) {
        super.I0(i);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void I1(Rect rect, int i, int i2) {
        int s;
        int s2;
        int j0 = j0() + k0();
        int m0 = m0() + h0();
        if (this.w == 1) {
            s2 = RecyclerView.o.s(i2, rect.height() + m0, f0());
            s = RecyclerView.o.s(i, (this.x * this.s) + j0, g0());
        } else {
            s = RecyclerView.o.s(i, rect.width() + j0, g0());
            s2 = RecyclerView.o.s(i2, (this.x * this.s) + m0, f0());
        }
        H1(s, s2);
    }

    public final void I2(RecyclerView.u uVar, int i) {
        while (O() > 0) {
            View N = N(0);
            if (this.u.d(N) > i || this.u.p(N) > i) {
                return;
            }
            c cVar = (c) N.getLayoutParams();
            if (cVar.f) {
                for (int i2 = 0; i2 < this.s; i2++) {
                    if (this.t[i2].a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].t();
                }
            } else if (cVar.e.a.size() == 1) {
                return;
            } else {
                cVar.e.t();
            }
            s1(N, uVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p J(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void J0(int i) {
        super.J0(i);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].r(i);
        }
    }

    public final void J2() {
        if (this.v.k() == 1073741824) {
            return;
        }
        int O = O();
        float f2 = 0.0f;
        for (int i = 0; i < O; i++) {
            View N = N(i);
            float e2 = this.v.e(N);
            if (e2 >= f2) {
                if (((c) N.getLayoutParams()).f()) {
                    e2 = (e2 * 1.0f) / this.s;
                }
                f2 = Math.max(f2, e2);
            }
        }
        int i2 = this.x;
        int round = Math.round(f2 * this.s);
        if (this.v.k() == Integer.MIN_VALUE) {
            round = Math.min(round, this.v.n());
        }
        V2(round);
        if (this.x == i2) {
            return;
        }
        for (int i3 = 0; i3 < O; i3++) {
            View N2 = N(i3);
            c cVar = (c) N2.getLayoutParams();
            if (!cVar.f) {
                if (z2() && this.w == 1) {
                    int i4 = this.s;
                    int i5 = cVar.e.e;
                    N2.offsetLeftAndRight(((-((i4 - 1) - i5)) * this.x) - ((-((i4 - 1) - i5)) * i2));
                } else {
                    int i6 = cVar.e.e;
                    int i7 = this.x * i6;
                    int i8 = i6 * i2;
                    if (this.w == 1) {
                        N2.offsetLeftAndRight(i7 - i8);
                    } else {
                        N2.offsetTopAndBottom(i7 - i8);
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p K(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    public int L2(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        if (O() == 0 || i == 0) {
            return 0;
        }
        E2(i, zVar);
        int h2 = h2(uVar, this.y, zVar);
        if (this.y.b >= h2) {
            i = i < 0 ? -h2 : h2;
        }
        this.u.r(-i);
        this.G = this.A;
        androidx.recyclerview.widget.f fVar = this.y;
        fVar.b = 0;
        G2(uVar, fVar);
        return i;
    }

    public final void M2(int i) {
        androidx.recyclerview.widget.f fVar = this.y;
        fVar.e = i;
        fVar.d = this.A != (i == -1) ? -1 : 1;
    }

    public void N2(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        l(null);
        if (i == this.w) {
            return;
        }
        this.w = i;
        i iVar = this.u;
        this.u = this.v;
        this.v = iVar;
        z1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void O0(RecyclerView recyclerView, RecyclerView.u uVar) {
        super.O0(recyclerView, uVar);
        u1(this.P);
        for (int i = 0; i < this.s; i++) {
            this.t[i].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void O1(RecyclerView recyclerView, RecyclerView.z zVar, int i) {
        g gVar = new g(recyclerView.getContext());
        gVar.p(i);
        P1(gVar);
    }

    public void O2(boolean z) {
        l(null);
        e eVar = this.I;
        if (eVar != null && eVar.t != z) {
            eVar.t = z;
        }
        this.z = z;
        z1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View P0(View view, int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        View G;
        View m;
        if (O() == 0 || (G = G(view)) == null) {
            return null;
        }
        K2();
        int d2 = d2(i);
        if (d2 == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) G.getLayoutParams();
        boolean z = cVar.f;
        f fVar = cVar.e;
        int q2 = d2 == 1 ? q2() : p2();
        U2(q2, zVar);
        M2(d2);
        androidx.recyclerview.widget.f fVar2 = this.y;
        fVar2.c = fVar2.d + q2;
        fVar2.b = (int) (this.u.n() * 0.33333334f);
        androidx.recyclerview.widget.f fVar3 = this.y;
        fVar3.h = true;
        fVar3.a = false;
        h2(uVar, fVar3, zVar);
        this.G = this.A;
        if (!z && (m = fVar.m(q2, d2)) != null && m != G) {
            return m;
        }
        if (D2(d2)) {
            for (int i2 = this.s - 1; i2 >= 0; i2--) {
                View m2 = this.t[i2].m(q2, d2);
                if (m2 != null && m2 != G) {
                    return m2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.s; i3++) {
                View m3 = this.t[i3].m(q2, d2);
                if (m3 != null && m3 != G) {
                    return m3;
                }
            }
        }
        boolean z2 = (this.z ^ true) == (d2 == -1);
        if (!z) {
            View H = H(z2 ? fVar.f() : fVar.g());
            if (H != null && H != G) {
                return H;
            }
        }
        if (D2(d2)) {
            for (int i4 = this.s - 1; i4 >= 0; i4--) {
                if (i4 != fVar.e) {
                    View H2 = H(z2 ? this.t[i4].f() : this.t[i4].g());
                    if (H2 != null && H2 != G) {
                        return H2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.s; i5++) {
                View H3 = H(z2 ? this.t[i5].f() : this.t[i5].g());
                if (H3 != null && H3 != G) {
                    return H3;
                }
            }
        }
        return null;
    }

    public void P2(int i) {
        l(null);
        if (i != this.s) {
            y2();
            this.s = i;
            this.B = new BitSet(this.s);
            this.t = new f[this.s];
            for (int i2 = 0; i2 < this.s; i2++) {
                this.t[i2] = new f(i2);
            }
            z1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Q0(AccessibilityEvent accessibilityEvent) {
        super.Q0(accessibilityEvent);
        if (O() > 0) {
            View k2 = k2(false);
            View j2 = j2(false);
            if (k2 == null || j2 == null) {
                return;
            }
            int n0 = n0(k2);
            int n02 = n0(j2);
            if (n0 < n02) {
                accessibilityEvent.setFromIndex(n0);
                accessibilityEvent.setToIndex(n02);
            } else {
                accessibilityEvent.setFromIndex(n02);
                accessibilityEvent.setToIndex(n0);
            }
        }
    }

    public final void Q2(int i, int i2) {
        for (int i3 = 0; i3 < this.s; i3++) {
            if (!this.t[i3].a.isEmpty()) {
                W2(this.t[i3], i, i2);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean R1() {
        return this.I == null;
    }

    public final boolean R2(RecyclerView.z zVar, b bVar) {
        bVar.a = this.G ? m2(zVar.b()) : i2(zVar.b());
        bVar.b = Integer.MIN_VALUE;
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int S(RecyclerView.u uVar, RecyclerView.z zVar) {
        return this.w == 1 ? this.s : super.S(uVar, zVar);
    }

    public final void S1(View view) {
        for (int i = this.s - 1; i >= 0; i--) {
            this.t[i].a(view);
        }
    }

    public boolean S2(RecyclerView.z zVar, b bVar) {
        int i;
        if (!zVar.e() && (i = this.C) != -1) {
            if (i >= 0 && i < zVar.b()) {
                e eVar = this.I;
                if (eVar == null || eVar.m == -1 || eVar.o < 1) {
                    View H = H(this.C);
                    if (H != null) {
                        bVar.a = this.A ? q2() : p2();
                        if (this.D != Integer.MIN_VALUE) {
                            if (bVar.c) {
                                bVar.b = (this.u.i() - this.D) - this.u.d(H);
                            } else {
                                bVar.b = (this.u.m() + this.D) - this.u.g(H);
                            }
                            return true;
                        }
                        if (this.u.e(H) > this.u.n()) {
                            bVar.b = bVar.c ? this.u.i() : this.u.m();
                            return true;
                        }
                        int g = this.u.g(H) - this.u.m();
                        if (g < 0) {
                            bVar.b = -g;
                            return true;
                        }
                        int i2 = this.u.i() - this.u.d(H);
                        if (i2 < 0) {
                            bVar.b = i2;
                            return true;
                        }
                        bVar.b = Integer.MIN_VALUE;
                    } else {
                        int i3 = this.C;
                        bVar.a = i3;
                        int i4 = this.D;
                        if (i4 == Integer.MIN_VALUE) {
                            bVar.c = X1(i3) == 1;
                            bVar.a();
                        } else {
                            bVar.b(i4);
                        }
                        bVar.d = true;
                    }
                } else {
                    bVar.b = Integer.MIN_VALUE;
                    bVar.a = this.C;
                }
                return true;
            }
            this.C = -1;
            this.D = Integer.MIN_VALUE;
        }
        return false;
    }

    public final void T1(b bVar) {
        e eVar = this.I;
        int i = eVar.o;
        if (i > 0) {
            if (i == this.s) {
                for (int i2 = 0; i2 < this.s; i2++) {
                    this.t[i2].e();
                    e eVar2 = this.I;
                    int i3 = eVar2.p[i2];
                    if (i3 != Integer.MIN_VALUE) {
                        i3 += eVar2.u ? this.u.i() : this.u.m();
                    }
                    this.t[i2].v(i3);
                }
            } else {
                eVar.b();
                e eVar3 = this.I;
                eVar3.m = eVar3.n;
            }
        }
        e eVar4 = this.I;
        this.H = eVar4.v;
        O2(eVar4.t);
        K2();
        e eVar5 = this.I;
        int i4 = eVar5.m;
        if (i4 != -1) {
            this.C = i4;
            bVar.c = eVar5.u;
        } else {
            bVar.c = this.A;
        }
        if (eVar5.q > 1) {
            d dVar = this.E;
            dVar.a = eVar5.r;
            dVar.b = eVar5.s;
        }
    }

    public void T2(RecyclerView.z zVar, b bVar) {
        if (S2(zVar, bVar) || R2(zVar, bVar)) {
            return;
        }
        bVar.a();
        bVar.a = 0;
    }

    public boolean U1() {
        int l = this.t[0].l(Integer.MIN_VALUE);
        for (int i = 1; i < this.s; i++) {
            if (this.t[i].l(Integer.MIN_VALUE) != l) {
                return false;
            }
        }
        return true;
    }

    public final void U2(int i, RecyclerView.z zVar) {
        int i2;
        int i3;
        int c2;
        androidx.recyclerview.widget.f fVar = this.y;
        boolean z = false;
        fVar.b = 0;
        fVar.c = i;
        if (!D0() || (c2 = zVar.c()) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.A == (c2 < i)) {
                i2 = this.u.n();
                i3 = 0;
            } else {
                i3 = this.u.n();
                i2 = 0;
            }
        }
        if (R()) {
            this.y.f = this.u.m() - i3;
            this.y.g = this.u.i() + i2;
        } else {
            this.y.g = this.u.h() + i2;
            this.y.f = -i3;
        }
        androidx.recyclerview.widget.f fVar2 = this.y;
        fVar2.h = false;
        fVar2.a = true;
        if (this.u.k() == 0 && this.u.h() == 0) {
            z = true;
        }
        fVar2.i = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void V0(RecyclerView.u uVar, RecyclerView.z zVar, View view, p0 p0Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof c)) {
            super.U0(view, p0Var);
            return;
        }
        c cVar = (c) layoutParams;
        if (this.w == 0) {
            p0Var.f0(p0.f.a(cVar.e(), cVar.f ? this.s : 1, -1, -1, false, false));
        } else {
            p0Var.f0(p0.f.a(-1, -1, cVar.e(), cVar.f ? this.s : 1, false, false));
        }
    }

    public boolean V1() {
        int p = this.t[0].p(Integer.MIN_VALUE);
        for (int i = 1; i < this.s; i++) {
            if (this.t[i].p(Integer.MIN_VALUE) != p) {
                return false;
            }
        }
        return true;
    }

    public void V2(int i) {
        this.x = i / this.s;
        this.J = View.MeasureSpec.makeMeasureSpec(i, this.v.k());
    }

    public final void W1(View view, c cVar, androidx.recyclerview.widget.f fVar) {
        if (fVar.e == 1) {
            if (cVar.f) {
                S1(view);
                return;
            } else {
                cVar.e.a(view);
                return;
            }
        }
        if (cVar.f) {
            F2(view);
        } else {
            cVar.e.u(view);
        }
    }

    public final void W2(f fVar, int i, int i2) {
        int j = fVar.j();
        if (i == -1) {
            if (fVar.o() + j <= i2) {
                this.B.set(fVar.e, false);
            }
        } else if (fVar.k() - j >= i2) {
            this.B.set(fVar.e, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void X0(RecyclerView recyclerView, int i, int i2) {
        w2(i, i2, 1);
    }

    public final int X1(int i) {
        if (O() == 0) {
            return this.A ? 1 : -1;
        }
        return (i < p2()) != this.A ? -1 : 1;
    }

    public final int X2(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Y0(RecyclerView recyclerView) {
        this.E.b();
        z1();
    }

    public boolean Y1() {
        int p2;
        int q2;
        if (O() == 0 || this.F == 0 || !x0()) {
            return false;
        }
        if (this.A) {
            p2 = q2();
            q2 = p2();
        } else {
            p2 = p2();
            q2 = q2();
        }
        if (p2 == 0 && x2() != null) {
            this.E.b();
            A1();
            z1();
            return true;
        }
        if (!this.M) {
            return false;
        }
        int i = this.A ? -1 : 1;
        int i2 = q2 + 1;
        d.a e2 = this.E.e(p2, i2, i, true);
        if (e2 == null) {
            this.M = false;
            this.E.d(i2);
            return false;
        }
        d.a e3 = this.E.e(p2, e2.m, i * (-1), true);
        if (e3 == null) {
            this.E.d(e2.m);
        } else {
            this.E.d(e3.m + 1);
        }
        A1();
        z1();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Z0(RecyclerView recyclerView, int i, int i2, int i3) {
        w2(i, i2, 8);
    }

    public final boolean Z1(f fVar) {
        if (this.A) {
            if (fVar.k() < this.u.i()) {
                ArrayList arrayList = fVar.a;
                return !fVar.n((View) arrayList.get(arrayList.size() - 1)).f;
            }
        } else if (fVar.o() > this.u.m()) {
            return !fVar.n((View) fVar.a.get(0)).f;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a1(RecyclerView recyclerView, int i, int i2) {
        w2(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void c1(RecyclerView recyclerView, int i, int i2, Object obj) {
        w2(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y.b
    public PointF d(int i) {
        int X1 = X1(i);
        PointF pointF = new PointF();
        if (X1 == 0) {
            return null;
        }
        if (this.w == 0) {
            pointF.x = X1;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = X1;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void d1(RecyclerView.u uVar, RecyclerView.z zVar) {
        C2(uVar, zVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void e1(RecyclerView.z zVar) {
        super.e1(zVar);
        this.C = -1;
        this.D = Integer.MIN_VALUE;
        this.I = null;
        this.L.c();
    }

    public final d.a e2(int i) {
        d.a aVar = new d.a();
        aVar.o = new int[this.s];
        for (int i2 = 0; i2 < this.s; i2++) {
            aVar.o[i2] = i - this.t[i2].l(i);
        }
        return aVar;
    }

    public final d.a f2(int i) {
        d.a aVar = new d.a();
        aVar.o = new int[this.s];
        for (int i2 = 0; i2 < this.s; i2++) {
            aVar.o[i2] = this.t[i2].p(i) - i;
        }
        return aVar;
    }

    public final void g2() {
        this.u = i.b(this, this.w);
        this.v = i.b(this, 1 - this.w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    public final int h2(RecyclerView.u uVar, androidx.recyclerview.widget.f fVar, RecyclerView.z zVar) {
        f fVar2;
        int e2;
        int i;
        int i2;
        int e3;
        boolean z;
        ?? r9 = 0;
        this.B.set(0, this.s, true);
        int i3 = this.y.i ? fVar.e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : fVar.e == 1 ? fVar.g + fVar.b : fVar.f - fVar.b;
        Q2(fVar.e, i3);
        int i4 = this.A ? this.u.i() : this.u.m();
        boolean z2 = false;
        while (fVar.a(zVar) && (this.y.i || !this.B.isEmpty())) {
            View b2 = fVar.b(uVar);
            c cVar = (c) b2.getLayoutParams();
            int a2 = cVar.a();
            int g = this.E.g(a2);
            boolean z3 = g == -1 ? true : r9;
            if (z3) {
                fVar2 = cVar.f ? this.t[r9] : v2(fVar);
                this.E.n(a2, fVar2);
            } else {
                fVar2 = this.t[g];
            }
            f fVar3 = fVar2;
            cVar.e = fVar3;
            if (fVar.e == 1) {
                i(b2);
            } else {
                j(b2, r9);
            }
            B2(b2, cVar, r9);
            if (fVar.e == 1) {
                int r2 = cVar.f ? r2(i4) : fVar3.l(i4);
                int e4 = this.u.e(b2) + r2;
                if (z3 && cVar.f) {
                    d.a e22 = e2(r2);
                    e22.n = -1;
                    e22.m = a2;
                    this.E.a(e22);
                }
                i = e4;
                e2 = r2;
            } else {
                int u2 = cVar.f ? u2(i4) : fVar3.p(i4);
                e2 = u2 - this.u.e(b2);
                if (z3 && cVar.f) {
                    d.a f2 = f2(u2);
                    f2.n = 1;
                    f2.m = a2;
                    this.E.a(f2);
                }
                i = u2;
            }
            if (cVar.f && fVar.d == -1) {
                if (z3) {
                    this.M = true;
                } else {
                    if (!(fVar.e == 1 ? U1() : V1())) {
                        d.a f3 = this.E.f(a2);
                        if (f3 != null) {
                            f3.p = true;
                        }
                        this.M = true;
                    }
                }
            }
            W1(b2, cVar, fVar);
            if (z2() && this.w == 1) {
                int i5 = cVar.f ? this.v.i() : this.v.i() - (((this.s - 1) - fVar3.e) * this.x);
                e3 = i5;
                i2 = i5 - this.v.e(b2);
            } else {
                int m = cVar.f ? this.v.m() : (fVar3.e * this.x) + this.v.m();
                i2 = m;
                e3 = this.v.e(b2) + m;
            }
            if (this.w == 1) {
                F0(b2, i2, e2, e3, i);
            } else {
                F0(b2, e2, i2, i, e3);
            }
            if (cVar.f) {
                Q2(this.y.e, i3);
            } else {
                W2(fVar3, this.y.e, i3);
            }
            G2(uVar, this.y);
            if (this.y.h && b2.hasFocusable()) {
                if (cVar.f) {
                    this.B.clear();
                } else {
                    z = false;
                    this.B.set(fVar3.e, false);
                    r9 = z;
                    z2 = true;
                }
            }
            z = false;
            r9 = z;
            z2 = true;
        }
        int i6 = r9;
        if (!z2) {
            G2(uVar, this.y);
        }
        int m2 = this.y.e == -1 ? this.u.m() - u2(this.u.m()) : r2(this.u.i()) - this.u.i();
        return m2 > 0 ? Math.min(fVar.b, m2) : i6;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i1(Parcelable parcelable) {
        if (parcelable instanceof e) {
            this.I = (e) parcelable;
            z1();
        }
    }

    public final int i2(int i) {
        int O = O();
        for (int i2 = 0; i2 < O; i2++) {
            int n0 = n0(N(i2));
            if (n0 >= 0 && n0 < i) {
                return n0;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable j1() {
        int p;
        int m;
        int[] iArr;
        if (this.I != null) {
            return new e(this.I);
        }
        e eVar = new e();
        eVar.t = this.z;
        eVar.u = this.G;
        eVar.v = this.H;
        d dVar = this.E;
        if (dVar == null || (iArr = dVar.a) == null) {
            eVar.q = 0;
        } else {
            eVar.r = iArr;
            eVar.q = iArr.length;
            eVar.s = dVar.b;
        }
        if (O() > 0) {
            eVar.m = this.G ? q2() : p2();
            eVar.n = l2();
            int i = this.s;
            eVar.o = i;
            eVar.p = new int[i];
            for (int i2 = 0; i2 < this.s; i2++) {
                if (this.G) {
                    p = this.t[i2].l(Integer.MIN_VALUE);
                    if (p != Integer.MIN_VALUE) {
                        m = this.u.i();
                        p -= m;
                        eVar.p[i2] = p;
                    } else {
                        eVar.p[i2] = p;
                    }
                } else {
                    p = this.t[i2].p(Integer.MIN_VALUE);
                    if (p != Integer.MIN_VALUE) {
                        m = this.u.m();
                        p -= m;
                        eVar.p[i2] = p;
                    } else {
                        eVar.p[i2] = p;
                    }
                }
            }
        } else {
            eVar.m = -1;
            eVar.n = -1;
            eVar.o = 0;
        }
        return eVar;
    }

    public View j2(boolean z) {
        int m = this.u.m();
        int i = this.u.i();
        View view = null;
        for (int O = O() - 1; O >= 0; O--) {
            View N = N(O);
            int g = this.u.g(N);
            int d2 = this.u.d(N);
            if (d2 > m && g < i) {
                if (d2 <= i || !z) {
                    return N;
                }
                if (view == null) {
                    view = N;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void k1(int i) {
        if (i == 0) {
            Y1();
        }
    }

    public View k2(boolean z) {
        int m = this.u.m();
        int i = this.u.i();
        int O = O();
        View view = null;
        for (int i2 = 0; i2 < O; i2++) {
            View N = N(i2);
            int g = this.u.g(N);
            if (this.u.d(N) > m && g < i) {
                if (g >= m || !z) {
                    return N;
                }
                if (view == null) {
                    view = N;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void l(String str) {
        if (this.I == null) {
            super.l(str);
        }
    }

    public int l2() {
        View j2 = this.A ? j2(true) : k2(true);
        if (j2 == null) {
            return -1;
        }
        return n0(j2);
    }

    public final int m2(int i) {
        for (int O = O() - 1; O >= 0; O--) {
            int n0 = n0(N(O));
            if (n0 >= 0 && n0 < i) {
                return n0;
            }
        }
        return 0;
    }

    public final void n2(RecyclerView.u uVar, RecyclerView.z zVar, boolean z) {
        int i;
        int r2 = r2(Integer.MIN_VALUE);
        if (r2 != Integer.MIN_VALUE && (i = this.u.i() - r2) > 0) {
            int i2 = i - (-L2(-i, uVar, zVar));
            if (!z || i2 <= 0) {
                return;
            }
            this.u.r(i2);
        }
    }

    public final void o2(RecyclerView.u uVar, RecyclerView.z zVar, boolean z) {
        int m;
        int u2 = u2(Integer.MAX_VALUE);
        if (u2 != Integer.MAX_VALUE && (m = u2 - this.u.m()) > 0) {
            int L2 = m - L2(m, uVar, zVar);
            if (!z || L2 <= 0) {
                return;
            }
            this.u.r(-L2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean p() {
        return this.w == 0;
    }

    public int p2() {
        if (O() == 0) {
            return 0;
        }
        return n0(N(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean q() {
        return this.w == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int q0(RecyclerView.u uVar, RecyclerView.z zVar) {
        return this.w == 0 ? this.s : super.q0(uVar, zVar);
    }

    public int q2() {
        int O = O();
        if (O == 0) {
            return 0;
        }
        return n0(N(O - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean r(RecyclerView.p pVar) {
        return pVar instanceof c;
    }

    public final int r2(int i) {
        int l = this.t[0].l(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int l2 = this.t[i2].l(i);
            if (l2 > l) {
                l = l2;
            }
        }
        return l;
    }

    public final int s2(int i) {
        int p = this.t[0].p(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int p2 = this.t[i2].p(i);
            if (p2 > p) {
                p = p2;
            }
        }
        return p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void t(int i, int i2, RecyclerView.z zVar, RecyclerView.o.c cVar) {
        int l;
        int i3;
        if (this.w != 0) {
            i = i2;
        }
        if (O() == 0 || i == 0) {
            return;
        }
        E2(i, zVar);
        int[] iArr = this.O;
        if (iArr == null || iArr.length < this.s) {
            this.O = new int[this.s];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.s; i5++) {
            androidx.recyclerview.widget.f fVar = this.y;
            if (fVar.d == -1) {
                l = fVar.f;
                i3 = this.t[i5].p(l);
            } else {
                l = this.t[i5].l(fVar.g);
                i3 = this.y.g;
            }
            int i6 = l - i3;
            if (i6 >= 0) {
                this.O[i4] = i6;
                i4++;
            }
        }
        Arrays.sort(this.O, 0, i4);
        for (int i7 = 0; i7 < i4 && this.y.a(zVar); i7++) {
            cVar.a(this.y.c, this.O[i7]);
            androidx.recyclerview.widget.f fVar2 = this.y;
            fVar2.c += fVar2.d;
        }
    }

    public final int t2(int i) {
        int l = this.t[0].l(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int l2 = this.t[i2].l(i);
            if (l2 < l) {
                l = l2;
            }
        }
        return l;
    }

    public final int u2(int i) {
        int p = this.t[0].p(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int p2 = this.t[i2].p(i);
            if (p2 < p) {
                p = p2;
            }
        }
        return p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int v(RecyclerView.z zVar) {
        return a2(zVar);
    }

    public final f v2(androidx.recyclerview.widget.f fVar) {
        int i;
        int i2;
        int i3;
        if (D2(fVar.e)) {
            i2 = this.s - 1;
            i = -1;
            i3 = -1;
        } else {
            i = this.s;
            i2 = 0;
            i3 = 1;
        }
        f fVar2 = null;
        if (fVar.e == 1) {
            int m = this.u.m();
            int i4 = Integer.MAX_VALUE;
            while (i2 != i) {
                f fVar3 = this.t[i2];
                int l = fVar3.l(m);
                if (l < i4) {
                    fVar2 = fVar3;
                    i4 = l;
                }
                i2 += i3;
            }
            return fVar2;
        }
        int i5 = this.u.i();
        int i6 = Integer.MIN_VALUE;
        while (i2 != i) {
            f fVar4 = this.t[i2];
            int p = fVar4.p(i5);
            if (p > i6) {
                fVar2 = fVar4;
                i6 = p;
            }
            i2 += i3;
        }
        return fVar2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int w(RecyclerView.z zVar) {
        return b2(zVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w2(int i, int i2, int i3) {
        int i4;
        int i5;
        int q2 = this.A ? q2() : p2();
        if (i3 != 8) {
            i4 = i + i2;
        } else {
            if (i >= i2) {
                i4 = i + 1;
                i5 = i2;
                this.E.h(i5);
                if (i3 != 1) {
                    this.E.j(i, i2);
                } else if (i3 == 2) {
                    this.E.k(i, i2);
                } else if (i3 == 8) {
                    this.E.k(i, 1);
                    this.E.j(i2, 1);
                }
                if (i4 > q2) {
                    return;
                }
                if (i5 <= (this.A ? p2() : q2())) {
                    z1();
                    return;
                }
                return;
            }
            i4 = i2 + 1;
        }
        i5 = i;
        this.E.h(i5);
        if (i3 != 1) {
        }
        if (i4 > q2) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int x(RecyclerView.z zVar) {
        return c2(zVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View x2() {
        int i;
        int O = O();
        int i2 = O - 1;
        BitSet bitSet = new BitSet(this.s);
        bitSet.set(0, this.s, true);
        char c2 = (this.w == 1 && z2()) ? (char) 1 : (char) 65535;
        if (this.A) {
            O = -1;
        } else {
            i2 = 0;
        }
        int i3 = i2 < O ? 1 : -1;
        while (i2 != O) {
            View N = N(i2);
            c cVar = (c) N.getLayoutParams();
            if (bitSet.get(cVar.e.e)) {
                if (Z1(cVar.e)) {
                    return N;
                }
                bitSet.clear(cVar.e.e);
            }
            if (!cVar.f && (i = i2 + i3) != O) {
                View N2 = N(i);
                if (this.A) {
                    int d2 = this.u.d(N);
                    int d3 = this.u.d(N2);
                    if (d2 < d3) {
                        return N;
                    }
                    if (d2 != d3) {
                        continue;
                    }
                    if ((cVar.e.e - ((c) N2.getLayoutParams()).e.e >= 0) == (c2 >= 0)) {
                        return N;
                    }
                } else {
                    int g = this.u.g(N);
                    int g2 = this.u.g(N2);
                    if (g > g2) {
                        return N;
                    }
                    if (g != g2) {
                        continue;
                    }
                    if ((cVar.e.e - ((c) N2.getLayoutParams()).e.e >= 0) == (c2 >= 0)) {
                    }
                }
            }
            i2 += i3;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int y(RecyclerView.z zVar) {
        return a2(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean y0() {
        return this.F != 0;
    }

    public void y2() {
        this.E.b();
        z1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int z(RecyclerView.z zVar) {
        return b2(zVar);
    }

    public boolean z2() {
        return d0() == 1;
    }

    public static class d {
        public int[] a;
        public List b;

        public void a(a aVar) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                a aVar2 = (a) this.b.get(i);
                if (aVar2.m == aVar.m) {
                    this.b.remove(i);
                }
                if (aVar2.m >= aVar.m) {
                    this.b.add(i, aVar);
                    return;
                }
            }
            this.b.add(aVar);
        }

        public void b() {
            int[] iArr = this.a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        public void c(int i) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[o(i)];
                this.a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public int d(int i) {
            List list = this.b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((a) this.b.get(size)).m >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return h(i);
        }

        public a e(int i, int i2, int i3, boolean z) {
            List list = this.b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = (a) this.b.get(i4);
                int i5 = aVar.m;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || aVar.n == i3 || (z && aVar.p))) {
                    return aVar;
                }
            }
            return null;
        }

        public a f(int i) {
            List list = this.b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = (a) this.b.get(size);
                if (aVar.m == i) {
                    return aVar;
                }
            }
            return null;
        }

        public int g(int i) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        public int h(int i) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int i2 = i(i);
            if (i2 == -1) {
                int[] iArr2 = this.a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.a.length;
            }
            int i3 = i2 + 1;
            Arrays.fill(this.a, i, i3, -1);
            return i3;
        }

        public final int i(int i) {
            if (this.b == null) {
                return -1;
            }
            a f = f(i);
            if (f != null) {
                this.b.remove(f);
            }
            int size = this.b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (((a) this.b.get(i2)).m >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            a aVar = (a) this.b.get(i2);
            this.b.remove(i2);
            return aVar.m;
        }

        public void j(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            c(i3);
            int[] iArr2 = this.a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.a, i, i3, -1);
            l(i, i2);
        }

        public void k(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            c(i3);
            int[] iArr2 = this.a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m(i, i2);
        }

        public final void l(int i, int i2) {
            List list = this.b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = (a) this.b.get(size);
                int i3 = aVar.m;
                if (i3 >= i) {
                    aVar.m = i3 + i2;
                }
            }
        }

        public final void m(int i, int i2) {
            List list = this.b;
            if (list == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = (a) this.b.get(size);
                int i4 = aVar.m;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.b.remove(size);
                    } else {
                        aVar.m = i4 - i2;
                    }
                }
            }
        }

        public void n(int i, f fVar) {
            c(i);
            this.a[i] = fVar.e;
        }

        public int o(int i) {
            int length = this.a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0051a();
            public int m;
            public int n;
            public int[] o;
            public boolean p;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            public static class C0051a implements Parcelable.Creator {
                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public a[] newArray(int i) {
                    return new a[i];
                }
            }

            public a(Parcel parcel) {
                this.m = parcel.readInt();
                this.n = parcel.readInt();
                this.p = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.o = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            public int a(int i) {
                int[] iArr = this.o;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.m + ", mGapDir=" + this.n + ", mHasUnwantedGapAfter=" + this.p + ", mGapPerSpan=" + Arrays.toString(this.o) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.m);
                parcel.writeInt(this.n);
                parcel.writeInt(this.p ? 1 : 0);
                int[] iArr = this.o;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.o);
                }
            }

            public a() {
            }
        }
    }
}
