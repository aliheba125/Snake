package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.p0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean I;
    public int J;
    public int[] K;
    public View[] L;
    public final SparseIntArray M;
    public final SparseIntArray N;
    public c O;
    public final Rect P;
    public boolean Q;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i) {
            return 1;
        }
    }

    public static class b extends RecyclerView.p {
        public int e;
        public int f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.e = -1;
            this.f = 0;
        }

        public int e() {
            return this.e;
        }

        public int f() {
            return this.f;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.e = -1;
            this.f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.e = -1;
            this.f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = -1;
            this.f = 0;
        }
    }

    public static abstract class c {
        public final SparseIntArray a = new SparseIntArray();
        public final SparseIntArray b = new SparseIntArray();
        public boolean c = false;
        public boolean d = false;

        public static int a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        public int b(int i, int i2) {
            if (!this.d) {
                return d(i, i2);
            }
            int i3 = this.b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int d = d(i, i2);
            this.b.put(i, d);
            return d;
        }

        public int c(int i, int i2) {
            if (!this.c) {
                return e(i, i2);
            }
            int i3 = this.a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int e = e(i, i2);
            this.a.put(i, e);
            return e;
        }

        public int d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int a;
            if (!this.d || (a = a(this.b, i)) == -1) {
                i3 = 0;
                i4 = 0;
                i5 = 0;
            } else {
                i3 = this.b.get(a);
                i4 = a + 1;
                i5 = c(a, i2) + f(a);
                if (i5 == i2) {
                    i3++;
                    i5 = 0;
                }
            }
            int f = f(i);
            while (i4 < i) {
                int f2 = f(i4);
                i5 += f2;
                if (i5 == i2) {
                    i3++;
                    i5 = 0;
                } else if (i5 > i2) {
                    i3++;
                    i5 = f2;
                }
                i4++;
            }
            return i5 + f > i2 ? i3 + 1 : i3;
        }

        public abstract int e(int i, int i2);

        public abstract int f(int i);

        public void g() {
            this.b.clear();
        }

        public void h() {
            this.a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        j3(RecyclerView.o.o0(context, attributeSet, i, i2).b);
    }

    public static int[] W2(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int A(RecyclerView.z zVar) {
        return this.Q ? Z2(zVar) : super.A(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void A2(RecyclerView.u uVar, RecyclerView.z zVar, LinearLayoutManager.a aVar, int i) {
        super.A2(uVar, zVar, aVar, i);
        k3();
        if (zVar.b() > 0 && !zVar.e()) {
            a3(uVar, zVar, aVar, i);
        }
        b3();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int C1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        k3();
        b3();
        return super.C1(i, uVar, zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int E1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        k3();
        b3();
        return super.E1(i, uVar, zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p I() {
        return this.s == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void I1(Rect rect, int i, int i2) {
        int s;
        int s2;
        if (this.K == null) {
            super.I1(rect, i, i2);
        }
        int j0 = j0() + k0();
        int m0 = m0() + h0();
        if (this.s == 1) {
            s2 = RecyclerView.o.s(i2, rect.height() + m0, f0());
            int[] iArr = this.K;
            s = RecyclerView.o.s(i, iArr[iArr.length - 1] + j0, g0());
        } else {
            s = RecyclerView.o.s(i, rect.width() + j0, g0());
            int[] iArr2 = this.K;
            s2 = RecyclerView.o.s(i2, iArr2[iArr2.length - 1] + m0, f0());
        }
        H1(s, s2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p J(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p K(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void K2(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.K2(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00f1, code lost:
    
        if (r13 == (r2 > r7)) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010f  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View P0(View view, int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        int O;
        int i2;
        int i3;
        View view2;
        View view3;
        int i4;
        int i5;
        int i6;
        int i7;
        RecyclerView.u uVar2 = uVar;
        RecyclerView.z zVar2 = zVar;
        View G = G(view);
        View view4 = null;
        if (G == null) {
            return null;
        }
        b bVar = (b) G.getLayoutParams();
        int i8 = bVar.e;
        int i9 = bVar.f + i8;
        if (super.P0(view, i, uVar, zVar) == null) {
            return null;
        }
        if ((X1(i) == 1) != this.x) {
            i3 = O() - 1;
            O = -1;
            i2 = -1;
        } else {
            O = O();
            i2 = 1;
            i3 = 0;
        }
        boolean z = this.s == 1 && w2();
        int d3 = d3(uVar2, zVar2, i3);
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        int i14 = i3;
        View view5 = null;
        while (i14 != O) {
            int d32 = d3(uVar2, zVar2, i14);
            View N = N(i14);
            if (N == G) {
                break;
            }
            if (!N.hasFocusable() || d32 == d3) {
                b bVar2 = (b) N.getLayoutParams();
                int i15 = bVar2.e;
                view2 = G;
                int i16 = bVar2.f + i15;
                if (N.hasFocusable() && i15 == i8 && i16 == i9) {
                    return N;
                }
                if (!(N.hasFocusable() && view4 == null) && (N.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int min = Math.min(i16, i9) - Math.max(i15, i8);
                    if (N.hasFocusable()) {
                        if (min <= i12) {
                            if (min == i12) {
                            }
                        }
                    } else if (view4 == null) {
                        i4 = i12;
                        i5 = O;
                        if (E0(N, false, true)) {
                            i6 = i13;
                            if (min > i6) {
                                i7 = i11;
                            } else {
                                if (min == i6) {
                                    i7 = i11;
                                } else {
                                    i7 = i11;
                                }
                                i11 = i7;
                                i13 = i6;
                                i12 = i4;
                                view5 = view3;
                                i14 += i2;
                                uVar2 = uVar;
                                zVar2 = zVar;
                                G = view2;
                                O = i5;
                            }
                            if (N.hasFocusable()) {
                                int i17 = bVar2.e;
                                i13 = Math.min(i16, i9) - Math.max(i15, i8);
                                i11 = i17;
                                i12 = i4;
                                view5 = N;
                            } else {
                                i10 = bVar2.e;
                                i11 = i7;
                                i13 = i6;
                                view5 = view3;
                                view4 = N;
                                i12 = Math.min(i16, i9) - Math.max(i15, i8);
                            }
                            i14 += i2;
                            uVar2 = uVar;
                            zVar2 = zVar;
                            G = view2;
                            O = i5;
                        }
                        i7 = i11;
                        i6 = i13;
                        i11 = i7;
                        i13 = i6;
                        i12 = i4;
                        view5 = view3;
                        i14 += i2;
                        uVar2 = uVar;
                        zVar2 = zVar;
                        G = view2;
                        O = i5;
                    }
                } else {
                    view3 = view5;
                }
                i4 = i12;
                i5 = O;
                i7 = i11;
                i6 = i13;
                if (N.hasFocusable()) {
                }
                i14 += i2;
                uVar2 = uVar;
                zVar2 = zVar;
                G = view2;
                O = i5;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = G;
                view3 = view5;
            }
            i4 = i12;
            i5 = O;
            i7 = i11;
            i6 = i13;
            i11 = i7;
            i13 = i6;
            i12 = i4;
            view5 = view3;
            i14 += i2;
            uVar2 = uVar;
            zVar2 = zVar;
            G = view2;
            O = i5;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public boolean R1() {
        return this.D == null && !this.I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int S(RecyclerView.u uVar, RecyclerView.z zVar) {
        if (this.s == 1) {
            return this.J;
        }
        if (zVar.b() < 1) {
            return 0;
        }
        return d3(uVar, zVar, zVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void T1(RecyclerView.z zVar, LinearLayoutManager.c cVar, RecyclerView.o.c cVar2) {
        int i = this.J;
        for (int i2 = 0; i2 < this.J && cVar.c(zVar) && i > 0; i2++) {
            int i3 = cVar.d;
            cVar2.a(i3, Math.max(0, cVar.g));
            i -= this.O.f(i3);
            cVar.d += cVar.e;
        }
    }

    public final void T2(RecyclerView.u uVar, RecyclerView.z zVar, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (z) {
            i4 = 1;
            i3 = i;
            i2 = 0;
        } else {
            i2 = i - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View view = this.L[i2];
            b bVar = (b) view.getLayoutParams();
            int f3 = f3(uVar, zVar, n0(view));
            bVar.f = f3;
            bVar.e = i5;
            i5 += f3;
            i2 += i4;
        }
    }

    public final void U2() {
        int O = O();
        for (int i = 0; i < O; i++) {
            b bVar = (b) N(i).getLayoutParams();
            int a2 = bVar.a();
            this.M.put(a2, bVar.f());
            this.N.put(a2, bVar.e());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void V0(RecyclerView.u uVar, RecyclerView.z zVar, View view, p0 p0Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.U0(view, p0Var);
            return;
        }
        b bVar = (b) layoutParams;
        int d3 = d3(uVar, zVar, bVar.a());
        if (this.s == 0) {
            p0Var.f0(p0.f.a(bVar.e(), bVar.f(), d3, 1, false, false));
        } else {
            p0Var.f0(p0.f.a(d3, 1, bVar.e(), bVar.f(), false, false));
        }
    }

    public final void V2(int i) {
        this.K = W2(this.K, this.J, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void X0(RecyclerView recyclerView, int i, int i2) {
        this.O.h();
        this.O.g();
    }

    public final void X2() {
        this.M.clear();
        this.N.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Y0(RecyclerView recyclerView) {
        this.O.h();
        this.O.g();
    }

    public final int Y2(RecyclerView.z zVar) {
        if (O() != 0 && zVar.b() != 0) {
            Z1();
            boolean x2 = x2();
            View e2 = e2(!x2, true);
            View d2 = d2(!x2, true);
            if (e2 != null && d2 != null) {
                int b2 = this.O.b(n0(e2), this.J);
                int b3 = this.O.b(n0(d2), this.J);
                int max = this.x ? Math.max(0, ((this.O.b(zVar.b() - 1, this.J) + 1) - Math.max(b2, b3)) - 1) : Math.max(0, Math.min(b2, b3));
                if (x2) {
                    return Math.round((max * (Math.abs(this.u.d(d2) - this.u.g(e2)) / ((this.O.b(n0(d2), this.J) - this.O.b(n0(e2), this.J)) + 1))) + (this.u.m() - this.u.g(e2)));
                }
                return max;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Z0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.O.h();
        this.O.g();
    }

    public final int Z2(RecyclerView.z zVar) {
        if (O() != 0 && zVar.b() != 0) {
            Z1();
            View e2 = e2(!x2(), true);
            View d2 = d2(!x2(), true);
            if (e2 != null && d2 != null) {
                if (!x2()) {
                    return this.O.b(zVar.b() - 1, this.J) + 1;
                }
                int d = this.u.d(d2) - this.u.g(e2);
                int b2 = this.O.b(n0(e2), this.J);
                return (int) ((d / ((this.O.b(n0(d2), this.J) - b2) + 1)) * (this.O.b(zVar.b() - 1, this.J) + 1));
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a1(RecyclerView recyclerView, int i, int i2) {
        this.O.h();
        this.O.g();
    }

    public final void a3(RecyclerView.u uVar, RecyclerView.z zVar, LinearLayoutManager.a aVar, int i) {
        boolean z = i == 1;
        int e3 = e3(uVar, zVar, aVar.b);
        if (z) {
            while (e3 > 0) {
                int i2 = aVar.b;
                if (i2 <= 0) {
                    return;
                }
                int i3 = i2 - 1;
                aVar.b = i3;
                e3 = e3(uVar, zVar, i3);
            }
            return;
        }
        int b2 = zVar.b() - 1;
        int i4 = aVar.b;
        while (i4 < b2) {
            int i5 = i4 + 1;
            int e32 = e3(uVar, zVar, i5);
            if (e32 <= e3) {
                break;
            }
            i4 = i5;
            e3 = e32;
        }
        aVar.b = i4;
    }

    public final void b3() {
        View[] viewArr = this.L;
        if (viewArr == null || viewArr.length != this.J) {
            this.L = new View[this.J];
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void c1(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.O.h();
        this.O.g();
    }

    public int c3(int i, int i2) {
        if (this.s != 1 || !w2()) {
            int[] iArr = this.K;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.K;
        int i3 = this.J;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void d1(RecyclerView.u uVar, RecyclerView.z zVar) {
        if (zVar.e()) {
            U2();
        }
        super.d1(uVar, zVar);
        X2();
    }

    public final int d3(RecyclerView.u uVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.O.b(i, this.J);
        }
        int f = uVar.f(i);
        if (f != -1) {
            return this.O.b(f, this.J);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Cannot find span size for pre layout position. ");
        sb.append(i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void e1(RecyclerView.z zVar) {
        super.e1(zVar);
        this.I = false;
    }

    public final int e3(RecyclerView.u uVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.O.c(i, this.J);
        }
        int i2 = this.N.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int f = uVar.f(i);
        if (f != -1) {
            return this.O.c(f, this.J);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
        sb.append(i);
        return 0;
    }

    public final int f3(RecyclerView.u uVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.O.f(i);
        }
        int i2 = this.M.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int f = uVar.f(i);
        if (f != -1) {
            return this.O.f(f);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
        sb.append(i);
        return 1;
    }

    public final void g3(float f, int i) {
        V2(Math.max(Math.round(f * this.J), i));
    }

    public final void h3(View view, int i, boolean z) {
        int i2;
        int i3;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int c3 = c3(bVar.e, bVar.f);
        if (this.s == 1) {
            i3 = RecyclerView.o.P(c3, i, i5, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            i2 = RecyclerView.o.P(this.u.n(), c0(), i4, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int P = RecyclerView.o.P(c3, i, i4, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int P2 = RecyclerView.o.P(this.u.n(), v0(), i5, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            i2 = P;
            i3 = P2;
        }
        i3(view, i3, i2, z);
    }

    public final void i3(View view, int i, int i2, boolean z) {
        RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
        if (z ? N1(view, i, i2, pVar) : L1(view, i, i2, pVar)) {
            view.measure(i, i2);
        }
    }

    public void j3(int i) {
        if (i == this.J) {
            return;
        }
        this.I = true;
        if (i >= 1) {
            this.J = i;
            this.O.h();
            z1();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    public final void k3() {
        int b0;
        int m0;
        if (v2() == 1) {
            b0 = u0() - k0();
            m0 = j0();
        } else {
            b0 = b0() - h0();
            m0 = m0();
        }
        V2(b0 - m0);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View n2(RecyclerView.u uVar, RecyclerView.z zVar, int i, int i2, int i3) {
        Z1();
        int m = this.u.m();
        int i4 = this.u.i();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View N = N(i);
            int n0 = n0(N);
            if (n0 >= 0 && n0 < i3 && e3(uVar, zVar, n0) == 0) {
                if (((RecyclerView.p) N.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = N;
                    }
                } else {
                    if (this.u.g(N) < i4 && this.u.d(N) >= m) {
                        return N;
                    }
                    if (view == null) {
                        view = N;
                    }
                }
            }
            i += i5;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int q0(RecyclerView.u uVar, RecyclerView.z zVar) {
        if (this.s == 0) {
            return this.J;
        }
        if (zVar.b() < 1) {
            return 0;
        }
        return d3(uVar, zVar, zVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean r(RecyclerView.p pVar) {
        return pVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int w(RecyclerView.z zVar) {
        return this.Q ? Y2(zVar) : super.w(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int x(RecyclerView.z zVar) {
        return this.Q ? Z2(zVar) : super.x(zVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009f, code lost:
    
        r21.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a1, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void y2(RecyclerView.u uVar, RecyclerView.z zVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int f;
        int i9;
        int i10;
        int P;
        int i11;
        View d;
        int l = this.u.l();
        boolean z = l != 1073741824;
        int i12 = O() > 0 ? this.K[this.J] : 0;
        if (z) {
            k3();
        }
        boolean z2 = cVar.e == 1;
        int i13 = this.J;
        if (!z2) {
            i13 = e3(uVar, zVar, cVar.d) + f3(uVar, zVar, cVar.d);
        }
        int i14 = 0;
        while (i14 < this.J && cVar.c(zVar) && i13 > 0) {
            int i15 = cVar.d;
            int f3 = f3(uVar, zVar, i15);
            if (f3 > this.J) {
                throw new IllegalArgumentException("Item at position " + i15 + " requires " + f3 + " spans but GridLayoutManager has only " + this.J + " spans.");
            }
            i13 -= f3;
            if (i13 < 0 || (d = cVar.d(uVar)) == null) {
                break;
            }
            this.L[i14] = d;
            i14++;
        }
        T2(uVar, zVar, i14, z2);
        float f2 = 0.0f;
        int i16 = 0;
        for (int i17 = 0; i17 < i14; i17++) {
            View view = this.L[i17];
            if (cVar.l == null) {
                if (z2) {
                    i(view);
                } else {
                    j(view, 0);
                }
            } else if (z2) {
                g(view);
            } else {
                h(view, 0);
            }
            o(view, this.P);
            h3(view, l, false);
            int e = this.u.e(view);
            if (e > i16) {
                i16 = e;
            }
            float f4 = (this.u.f(view) * 1.0f) / ((b) view.getLayoutParams()).f;
            if (f4 > f2) {
                f2 = f4;
            }
        }
        if (z) {
            g3(f2, i12);
            i16 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                View view2 = this.L[i18];
                h3(view2, 1073741824, true);
                int e2 = this.u.e(view2);
                if (e2 > i16) {
                    i16 = e2;
                }
            }
        }
        for (int i19 = 0; i19 < i14; i19++) {
            View view3 = this.L[i19];
            if (this.u.e(view3) != i16) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.b;
                int i20 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i21 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int c3 = c3(bVar2.e, bVar2.f);
                if (this.s == 1) {
                    i11 = RecyclerView.o.P(c3, 1073741824, i21, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    P = View.MeasureSpec.makeMeasureSpec(i16 - i20, 1073741824);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16 - i21, 1073741824);
                    P = RecyclerView.o.P(c3, 1073741824, i20, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    i11 = makeMeasureSpec;
                }
                i3(view3, i11, P, true);
            }
        }
        bVar.a = i16;
        if (this.s == 1) {
            if (cVar.f == -1) {
                i6 = cVar.b;
                i10 = i6 - i16;
            } else {
                i10 = cVar.b;
                i6 = i10 + i16;
            }
            i4 = i10;
            i5 = 0;
            i3 = 0;
        } else {
            if (cVar.f == -1) {
                i2 = cVar.b;
                i = i2 - i16;
            } else {
                i = cVar.b;
                i2 = i + i16;
            }
            i3 = i;
            i4 = 0;
            i5 = i2;
            i6 = 0;
        }
        int i22 = 0;
        while (i22 < i14) {
            View view4 = this.L[i22];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.s != 1) {
                int m0 = m0() + this.K[bVar3.e];
                i7 = m0;
                i8 = i5;
                f = this.u.f(view4) + m0;
            } else if (w2()) {
                int j0 = j0() + this.K[this.J - bVar3.e];
                i3 = j0 - this.u.f(view4);
                f = i6;
                i8 = j0;
                i7 = i4;
            } else {
                int j02 = j0() + this.K[bVar3.e];
                f = i6;
                i9 = j02;
                i7 = i4;
                i8 = this.u.f(view4) + j02;
                F0(view4, i9, i7, i8, f);
                if (!bVar3.c() || bVar3.b()) {
                    bVar.c = true;
                }
                bVar.d |= view4.hasFocusable();
                i22++;
                i6 = f;
                i5 = i8;
                i4 = i7;
                i3 = i9;
            }
            i9 = i3;
            F0(view4, i9, i7, i8, f);
            if (!bVar3.c()) {
            }
            bVar.c = true;
            bVar.d |= view4.hasFocusable();
            i22++;
            i6 = f;
            i5 = i8;
            i4 = i7;
            i3 = i9;
        }
        Arrays.fill(this.L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int z(RecyclerView.z zVar) {
        return this.Q ? Y2(zVar) : super.z(zVar);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        j3(i);
    }
}
