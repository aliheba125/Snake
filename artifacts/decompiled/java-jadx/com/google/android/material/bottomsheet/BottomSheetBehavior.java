package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.appcompat.view.menu.an0;
import androidx.appcompat.view.menu.em0;
import androidx.appcompat.view.menu.en0;
import androidx.appcompat.view.menu.h50;
import androidx.appcompat.view.menu.i50;
import androidx.appcompat.view.menu.ib0;
import androidx.appcompat.view.menu.jy0;
import androidx.appcompat.view.menu.ln0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.m61;
import androidx.appcompat.view.menu.nb0;
import androidx.appcompat.view.menu.ob0;
import androidx.appcompat.view.menu.p0;
import androidx.appcompat.view.menu.r51;
import androidx.appcompat.view.menu.s0;
import androidx.appcompat.view.menu.st0;
import androidx.appcompat.view.menu.ub0;
import androidx.appcompat.view.menu.y81;
import androidx.appcompat.view.menu.zl0;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.b {
    public static final int i0 = en0.b;
    public boolean A;
    public final g B;
    public ValueAnimator C;
    public int D;
    public int E;
    public int F;
    public float G;
    public int H;
    public float I;
    public boolean J;
    public boolean K;
    public boolean L;
    public int M;
    public int N;
    public r51 O;
    public boolean P;
    public int Q;
    public boolean R;
    public float S;
    public int T;
    public int U;
    public int V;
    public WeakReference W;
    public WeakReference X;
    public WeakReference Y;
    public final ArrayList Z;
    public int a;
    public VelocityTracker a0;
    public boolean b;
    public ib0 b0;
    public boolean c;
    public int c0;
    public float d;
    public int d0;
    public int e;
    public boolean e0;
    public int f;
    public Map f0;
    public boolean g;
    public final SparseIntArray g0;
    public int h;
    public final r51.c h0;
    public int i;
    public ob0 j;
    public ColorStateList k;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public boolean y;
    public st0 z;

    public class a implements Runnable {
        public final /* synthetic */ View m;
        public final /* synthetic */ int n;

        public a(View view, int i) {
            this.m = view;
            this.n = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.V0(this.m, this.n, false);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.j != null) {
                BottomSheetBehavior.this.j.U(floatValue);
            }
        }
    }

    public class c implements m61.c {
        public final /* synthetic */ boolean a;

        public c(boolean z) {
            this.a = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x00a4, code lost:
        
            if (r6 != false) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
        @Override // androidx.appcompat.view.menu.m61.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public y81 a(View view, y81 y81Var, m61.d dVar) {
            boolean z;
            h50 f = y81Var.f(y81.m.h());
            h50 f2 = y81Var.f(y81.m.e());
            BottomSheetBehavior.this.x = f.b;
            boolean g = m61.g(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.p) {
                BottomSheetBehavior.this.w = y81Var.h();
                paddingBottom = dVar.d + BottomSheetBehavior.this.w;
            }
            if (BottomSheetBehavior.this.q) {
                paddingLeft = (g ? dVar.c : dVar.a) + f.a;
            }
            if (BottomSheetBehavior.this.r) {
                paddingRight = (g ? dVar.a : dVar.c) + f.c;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            boolean z2 = true;
            if (BottomSheetBehavior.this.t) {
                int i = marginLayoutParams.leftMargin;
                int i2 = f.a;
                if (i != i2) {
                    marginLayoutParams.leftMargin = i2;
                    z = true;
                    if (BottomSheetBehavior.this.u) {
                        int i3 = marginLayoutParams.rightMargin;
                        int i4 = f.c;
                        if (i3 != i4) {
                            marginLayoutParams.rightMargin = i4;
                            if (BottomSheetBehavior.this.v) {
                                int i5 = marginLayoutParams.topMargin;
                                int i6 = f.b;
                                if (i5 != i6) {
                                    marginLayoutParams.topMargin = i6;
                                    view.setLayoutParams(marginLayoutParams);
                                    view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
                                    if (this.a) {
                                        BottomSheetBehavior.this.n = f2.d;
                                    }
                                    if (BottomSheetBehavior.this.p || this.a) {
                                        BottomSheetBehavior.this.a1(false);
                                    }
                                    return y81Var;
                                }
                            }
                        }
                    }
                    z2 = z;
                    if (BottomSheetBehavior.this.v) {
                    }
                }
            }
            z = false;
            if (BottomSheetBehavior.this.u) {
            }
            z2 = z;
            if (BottomSheetBehavior.this.v) {
            }
        }
    }

    public class d extends r51.c {
        public long a;

        public d() {
        }

        @Override // androidx.appcompat.view.menu.r51.c
        public int a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.appcompat.view.menu.r51.c
        public int b(View view, int i, int i2) {
            return ub0.b(i, BottomSheetBehavior.this.m0(), e(view));
        }

        @Override // androidx.appcompat.view.menu.r51.c
        public int e(View view) {
            return BottomSheetBehavior.this.e0() ? BottomSheetBehavior.this.V : BottomSheetBehavior.this.H;
        }

        @Override // androidx.appcompat.view.menu.r51.c
        public void j(int i) {
            if (i == 1 && BottomSheetBehavior.this.L) {
                BottomSheetBehavior.this.O0(1);
            }
        }

        @Override // androidx.appcompat.view.menu.r51.c
        public void k(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.j0(i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        
            if (r7.b.Q0(r0, (r9 * 100.0f) / r10.V) != false) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        
            if (r9 > r7.b.F) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        
            if (java.lang.Math.abs(r8.getTop() - r7.b.m0()) < java.lang.Math.abs(r8.getTop() - r7.b.F)) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00cf, code lost:
        
            if (r7.b.T0() == false) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00f1, code lost:
        
            if (java.lang.Math.abs(r9 - r7.b.E) < java.lang.Math.abs(r9 - r7.b.H)) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x010d, code lost:
        
            if (r7.b.T0() != false) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0127, code lost:
        
            if (r7.b.T0() == false) goto L63;
         */
        @Override // androidx.appcompat.view.menu.r51.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void l(View view, float f, float f2) {
            int i = 6;
            if (f2 < 0.0f) {
                if (!BottomSheetBehavior.this.b) {
                    int top = view.getTop();
                    long currentTimeMillis = System.currentTimeMillis() - this.a;
                    if (BottomSheetBehavior.this.T0()) {
                    }
                }
                i = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.J && bottomSheetBehavior.S0(view, f2)) {
                    if ((Math.abs(f) >= Math.abs(f2) || f2 <= BottomSheetBehavior.this.e) && !n(view)) {
                        if (!BottomSheetBehavior.this.b) {
                        }
                        i = 3;
                    } else {
                        i = 5;
                    }
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (!BottomSheetBehavior.this.b) {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i2 = bottomSheetBehavior2.F;
                        if (top2 < i2) {
                            if (top2 >= Math.abs(top2 - bottomSheetBehavior2.H)) {
                            }
                            i = 3;
                        } else {
                            if (Math.abs(top2 - i2) < Math.abs(top2 - BottomSheetBehavior.this.H)) {
                            }
                            i = 4;
                        }
                    }
                } else {
                    if (!BottomSheetBehavior.this.b) {
                        int top3 = view.getTop();
                        if (Math.abs(top3 - BottomSheetBehavior.this.F) < Math.abs(top3 - BottomSheetBehavior.this.H)) {
                        }
                    }
                    i = 4;
                }
            }
            BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
            bottomSheetBehavior3.V0(view, i, bottomSheetBehavior3.U0());
        }

        @Override // androidx.appcompat.view.menu.r51.c
        public boolean m(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.M;
            if (i2 == 1 || bottomSheetBehavior.e0) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.c0 == i) {
                WeakReference weakReference = bottomSheetBehavior.Y;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.a = System.currentTimeMillis();
            WeakReference weakReference2 = BottomSheetBehavior.this.W;
            return weakReference2 != null && weakReference2.get() == view;
        }

        public final boolean n(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.V + bottomSheetBehavior.m0()) / 2;
        }
    }

    public class e implements s0 {
        public final /* synthetic */ int a;

        public e(int i) {
            this.a = i;
        }

        @Override // androidx.appcompat.view.menu.s0
        public boolean a(View view, s0.a aVar) {
            BottomSheetBehavior.this.N0(this.a);
            return true;
        }
    }

    public BottomSheetBehavior() {
        this.a = 0;
        this.b = true;
        this.c = false;
        this.l = -1;
        this.m = -1;
        this.B = new g(this, null);
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = 4;
        this.N = 4;
        this.S = 0.1f;
        this.Z = new ArrayList();
        this.d0 = -1;
        this.g0 = new SparseIntArray();
        this.h0 = new d();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
        this.Q = 0;
        this.R = false;
        return (i & 2) != 0;
    }

    public void A0(boolean z) {
        this.L = z;
    }

    public void B0(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.D = i;
        Y0(this.M, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r4.getTop() <= r2.F) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
    
        r0 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
    
        if (java.lang.Math.abs(r3 - r2.E) < java.lang.Math.abs(r3 - r2.H)) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007b, code lost:
    
        if (T0() != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
    
        if (java.lang.Math.abs(r3 - r1) < java.lang.Math.abs(r3 - r2.H)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a7, code lost:
    
        if (java.lang.Math.abs(r3 - r2.F) < java.lang.Math.abs(r3 - r2.H)) goto L51;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void C(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
        WeakReference weakReference;
        int i2 = 3;
        if (view.getTop() == m0()) {
            O0(3);
            return;
        }
        if (!v0() || ((weakReference = this.Y) != null && view2 == weakReference.get() && this.R)) {
            if (this.Q > 0) {
                if (!this.b) {
                }
                V0(view, i2, false);
                this.R = false;
            }
            if (this.J && S0(view, o0())) {
                i2 = 5;
            } else if (this.Q == 0) {
                int top = view.getTop();
                if (!this.b) {
                    int i3 = this.F;
                    if (top < i3) {
                        if (top >= Math.abs(top - this.H)) {
                        }
                    }
                }
            } else {
                if (!this.b) {
                    int top2 = view.getTop();
                }
                i2 = 4;
            }
            V0(view, i2, false);
            this.R = false;
        }
    }

    public void C0(boolean z) {
        if (this.b == z) {
            return;
        }
        this.b = z;
        if (this.W != null) {
            Y();
        }
        O0((this.b && this.M == 6) ? 3 : this.M);
        Y0(this.M, true);
        W0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.M == 1 && actionMasked == 0) {
            return true;
        }
        if (R0()) {
            this.O.z(motionEvent);
        }
        if (actionMasked == 0) {
            x0();
        }
        if (this.a0 == null) {
            this.a0 = VelocityTracker.obtain();
        }
        this.a0.addMovement(motionEvent);
        if (R0() && actionMasked == 2 && !this.P && Math.abs(this.d0 - motionEvent.getY()) > this.O.u()) {
            this.O.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.P;
    }

    public void D0(boolean z) {
        this.o = z;
    }

    public void E0(float f2) {
        if (f2 <= 0.0f || f2 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.G = f2;
        if (this.W != null) {
            a0();
        }
    }

    public void F0(boolean z) {
        if (this.J != z) {
            this.J = z;
            if (!z && this.M == 5) {
                N0(4);
            }
            W0();
        }
    }

    public void G0(int i) {
        this.m = i;
    }

    public void H0(int i) {
        this.l = i;
    }

    public void I0(int i) {
        J0(i, false);
    }

    public final void J0(int i, boolean z) {
        if (i == -1) {
            if (this.g) {
                return;
            } else {
                this.g = true;
            }
        } else {
            if (!this.g && this.f == i) {
                return;
            }
            this.g = false;
            this.f = Math.max(0, i);
        }
        a1(z);
    }

    public void K0(int i) {
        this.a = i;
    }

    public void L0(int i) {
        this.e = i;
    }

    public void M0(boolean z) {
        this.K = z;
    }

    public void N0(int i) {
        if (i == 1 || i == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!this.J && i == 5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot set state: ");
            sb2.append(i);
            return;
        }
        int i2 = (i == 6 && this.b && n0(i) <= this.E) ? 3 : i;
        WeakReference weakReference = this.W;
        if (weakReference == null || weakReference.get() == null) {
            O0(i);
        } else {
            View view = (View) this.W.get();
            z0(view, new a(view, i2));
        }
    }

    public void O0(int i) {
        if (this.M == i) {
            return;
        }
        this.M = i;
        if (i == 4 || i == 3 || i == 6 || (this.J && i == 5)) {
            this.N = i;
        }
        WeakReference weakReference = this.W;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            Z0(true);
        } else if (i == 6 || i == 5 || i == 4) {
            Z0(false);
        }
        Y0(i, true);
        if (this.Z.size() <= 0) {
            W0();
        } else {
            jy0.a(this.Z.get(0));
            throw null;
        }
    }

    public final void P0(View view) {
        boolean z = (Build.VERSION.SDK_INT < 29 || r0() || this.g) ? false : true;
        if (this.p || this.q || this.r || this.t || this.u || this.v || z) {
            m61.b(view, new c(z));
        }
    }

    public boolean Q0(long j, float f2) {
        return false;
    }

    public final boolean R0() {
        return this.O != null && (this.L || this.M == 1);
    }

    public boolean S0(View view, float f2) {
        if (this.K) {
            return true;
        }
        if (t0() && view.getTop() >= this.H) {
            return Math.abs((((float) view.getTop()) + (f2 * this.S)) - ((float) this.H)) / ((float) c0()) > 0.5f;
        }
        return false;
    }

    public boolean T0() {
        return false;
    }

    public boolean U0() {
        return true;
    }

    public final void V0(View view, int i, boolean z) {
        int n0 = n0(i);
        r51 r51Var = this.O;
        if (r51Var == null || (!z ? r51Var.H(view, view.getLeft(), n0) : r51Var.F(view.getLeft(), n0))) {
            O0(i);
            return;
        }
        O0(2);
        Y0(i, true);
        this.B.c(i);
    }

    public final void W0() {
        WeakReference weakReference = this.W;
        if (weakReference != null) {
            X0((View) weakReference.get(), 0);
        }
        WeakReference weakReference2 = this.X;
        if (weakReference2 != null) {
            X0((View) weakReference2.get(), 1);
        }
    }

    public final int X(View view, int i, int i2) {
        return m51.c(view, view.getResources().getString(i), g0(i2));
    }

    public final void X0(View view, int i) {
        if (view == null) {
            return;
        }
        f0(view, i);
        if (!this.b && this.M != 6) {
            this.g0.put(i, X(view, an0.a, 6));
        }
        if (this.J && t0() && this.M != 5) {
            w0(view, p0.a.y, 5);
        }
        int i2 = this.M;
        if (i2 == 3) {
            w0(view, p0.a.x, this.b ? 4 : 6);
            return;
        }
        if (i2 == 4) {
            w0(view, p0.a.w, this.b ? 3 : 6);
        } else {
            if (i2 != 6) {
                return;
            }
            w0(view, p0.a.x, 4);
            w0(view, p0.a.w, 3);
        }
    }

    public final void Y() {
        int c0 = c0();
        if (this.b) {
            this.H = Math.max(this.V - c0, this.E);
        } else {
            this.H = this.V - c0;
        }
    }

    public final void Y0(int i, boolean z) {
        boolean q0;
        ValueAnimator valueAnimator;
        if (i == 2 || this.A == (q0 = q0()) || this.j == null) {
            return;
        }
        this.A = q0;
        if (!z || (valueAnimator = this.C) == null) {
            ValueAnimator valueAnimator2 = this.C;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.C.cancel();
            }
            this.j.U(this.A ? b0() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            this.C.reverse();
        } else {
            this.C.setFloatValues(this.j.w(), q0 ? b0() : 1.0f);
            this.C.start();
        }
    }

    public final float Z(float f2, RoundedCorner roundedCorner) {
        int radius;
        if (roundedCorner != null) {
            radius = roundedCorner.getRadius();
            float f3 = radius;
            if (f3 > 0.0f && f2 > 0.0f) {
                return f3 / f2;
            }
        }
        return 0.0f;
    }

    public final void Z0(boolean z) {
        Map map;
        WeakReference weakReference = this.W;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.f0 != null) {
                    return;
                } else {
                    this.f0 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.W.get()) {
                    if (z) {
                        this.f0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.c) {
                            m51.u0(childAt, 4);
                        }
                    } else if (this.c && (map = this.f0) != null && map.containsKey(childAt)) {
                        m51.u0(childAt, ((Integer) this.f0.get(childAt)).intValue());
                    }
                }
            }
            if (!z) {
                this.f0 = null;
            } else if (this.c) {
                ((View) this.W.get()).sendAccessibilityEvent(8);
            }
        }
    }

    public final void a0() {
        this.F = (int) (this.V * (1.0f - this.G));
    }

    public final void a1(boolean z) {
        View view;
        if (this.W != null) {
            Y();
            if (this.M != 4 || (view = (View) this.W.get()) == null) {
                return;
            }
            if (z) {
                N0(4);
            } else {
                view.requestLayout();
            }
        }
    }

    public final float b0() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        RoundedCorner roundedCorner;
        RoundedCorner roundedCorner2;
        if (this.j == null || (weakReference = this.W) == null || weakReference.get() == null || Build.VERSION.SDK_INT < 31) {
            return 0.0f;
        }
        View view = (View) this.W.get();
        if (!p0() || (rootWindowInsets = view.getRootWindowInsets()) == null) {
            return 0.0f;
        }
        float C = this.j.C();
        roundedCorner = rootWindowInsets.getRoundedCorner(0);
        float Z = Z(C, roundedCorner);
        float D = this.j.D();
        roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
        return Math.max(Z, Z(D, roundedCorner2));
    }

    public final int c0() {
        int i;
        return this.g ? Math.min(Math.max(this.h, this.V - ((this.U * 9) / 16)), this.T) + this.w : (this.o || this.p || (i = this.n) <= 0) ? this.f + this.w : Math.max(this.f, i + this.i);
    }

    public final float d0(int i) {
        float f2;
        float f3;
        int i2 = this.H;
        if (i > i2 || i2 == m0()) {
            int i3 = this.H;
            f2 = i3 - i;
            f3 = this.V - i3;
        } else {
            int i4 = this.H;
            f2 = i4 - i;
            f3 = i4 - m0();
        }
        return f2 / f3;
    }

    public final boolean e0() {
        return s0() && t0();
    }

    public final void f0(View view, int i) {
        if (view == null) {
            return;
        }
        m51.e0(view, 524288);
        m51.e0(view, 262144);
        m51.e0(view, 1048576);
        int i2 = this.g0.get(i, -1);
        if (i2 != -1) {
            m51.e0(view, i2);
            this.g0.delete(i);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void g(CoordinatorLayout.e eVar) {
        super.g(eVar);
        this.W = null;
        this.O = null;
        this.b0 = null;
    }

    public final s0 g0(int i) {
        return new e(i);
    }

    public final void h0(Context context) {
        if (this.z == null) {
            return;
        }
        ob0 ob0Var = new ob0(this.z);
        this.j = ob0Var;
        ob0Var.J(context);
        ColorStateList colorStateList = this.k;
        if (colorStateList != null) {
            this.j.T(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.j.setTint(typedValue.data);
    }

    public final void i0() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(b0(), 1.0f);
        this.C = ofFloat;
        ofFloat.setDuration(500L);
        this.C.addUpdateListener(new b());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void j() {
        super.j();
        this.W = null;
        this.O = null;
        this.b0 = null;
    }

    public void j0(int i) {
        if (((View) this.W.get()) == null || this.Z.isEmpty()) {
            return;
        }
        d0(i);
        if (this.Z.size() <= 0) {
            return;
        }
        jy0.a(this.Z.get(0));
        throw null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i;
        r51 r51Var;
        if (!view.isShown() || !this.L) {
            this.P = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            x0();
        }
        if (this.a0 == null) {
            this.a0 = VelocityTracker.obtain();
        }
        this.a0.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.d0 = (int) motionEvent.getY();
            if (this.M != 2) {
                WeakReference weakReference = this.Y;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.z(view2, x, this.d0)) {
                    this.c0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.e0 = true;
                }
            }
            this.P = this.c0 == -1 && !coordinatorLayout.z(view, x, this.d0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.e0 = false;
            this.c0 = -1;
            if (this.P) {
                this.P = false;
                return false;
            }
        }
        if (!this.P && (r51Var = this.O) != null && r51Var.G(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.Y;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.P || this.M == 1 || coordinatorLayout.z(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.O == null || (i = this.d0) == -1 || Math.abs(((float) i) - motionEvent.getY()) <= ((float) this.O.u())) ? false : true;
    }

    public View k0(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (m51.P(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View k0 = k0(viewGroup.getChildAt(i));
                if (k0 != null) {
                    return k0;
                }
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (m51.u(coordinatorLayout) && !m51.u(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.W == null) {
            this.h = coordinatorLayout.getResources().getDimensionPixelSize(em0.a);
            P0(view);
            m51.B0(view, new i50(view));
            this.W = new WeakReference(view);
            this.b0 = new ib0(view);
            ob0 ob0Var = this.j;
            if (ob0Var != null) {
                m51.o0(view, ob0Var);
                ob0 ob0Var2 = this.j;
                float f2 = this.I;
                if (f2 == -1.0f) {
                    f2 = m51.s(view);
                }
                ob0Var2.S(f2);
            } else {
                ColorStateList colorStateList = this.k;
                if (colorStateList != null) {
                    m51.p0(view, colorStateList);
                }
            }
            W0();
            if (m51.v(view) == 0) {
                m51.u0(view, 1);
            }
        }
        if (this.O == null) {
            this.O = r51.m(coordinatorLayout, this.h0);
        }
        int top = view.getTop();
        coordinatorLayout.G(view, i);
        this.U = coordinatorLayout.getWidth();
        this.V = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.T = height;
        int i2 = this.V;
        int i3 = i2 - height;
        int i4 = this.x;
        if (i3 < i4) {
            if (this.s) {
                int i5 = this.m;
                if (i5 != -1) {
                    i2 = Math.min(i2, i5);
                }
                this.T = i2;
            } else {
                int i6 = i2 - i4;
                int i7 = this.m;
                if (i7 != -1) {
                    i6 = Math.min(i6, i7);
                }
                this.T = i6;
            }
        }
        this.E = Math.max(0, this.V - this.T);
        a0();
        Y();
        int i8 = this.M;
        if (i8 == 3) {
            m51.V(view, m0());
        } else if (i8 == 6) {
            m51.V(view, this.F);
        } else if (this.J && i8 == 5) {
            m51.V(view, this.V);
        } else if (i8 == 4) {
            m51.V(view, this.H);
        } else if (i8 == 1 || i8 == 2) {
            m51.V(view, top - view.getTop());
        }
        Y0(this.M, false);
        this.Y = new WeakReference(k0(view));
        if (this.Z.size() <= 0) {
            return true;
        }
        jy0.a(this.Z.get(0));
        throw null;
    }

    public final int l0(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(l0(i, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.l, marginLayoutParams.width), l0(i3, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, this.m, marginLayoutParams.height));
        return true;
    }

    public int m0() {
        if (this.b) {
            return this.E;
        }
        return Math.max(this.D, this.s ? 0 : this.x);
    }

    public final int n0(int i) {
        if (i == 3) {
            return m0();
        }
        if (i == 4) {
            return this.H;
        }
        if (i == 5) {
            return this.V;
        }
        if (i == 6) {
            return this.F;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean o(CoordinatorLayout coordinatorLayout, View view, View view2, float f2, float f3) {
        WeakReference weakReference;
        if (v0() && (weakReference = this.Y) != null && view2 == weakReference.get()) {
            return this.M != 3 || super.o(coordinatorLayout, view, view2, f2, f3);
        }
        return false;
    }

    public final float o0() {
        VelocityTracker velocityTracker = this.a0;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.d);
        return this.a0.getYVelocity(this.c0);
    }

    public final boolean p0() {
        WeakReference weakReference = this.W;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        ((View) this.W.get()).getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.Y;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (!v0() || view2 == view3) {
            int top = view.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < m0()) {
                    int m0 = top - m0();
                    iArr[1] = m0;
                    m51.V(view, -m0);
                    O0(3);
                } else {
                    if (!this.L) {
                        return;
                    }
                    iArr[1] = i2;
                    m51.V(view, -i2);
                    O0(1);
                }
            } else if (i2 < 0 && !view2.canScrollVertically(-1)) {
                if (i4 > this.H && !e0()) {
                    int i5 = top - this.H;
                    iArr[1] = i5;
                    m51.V(view, -i5);
                    O0(4);
                } else {
                    if (!this.L) {
                        return;
                    }
                    iArr[1] = i2;
                    m51.V(view, -i2);
                    O0(1);
                }
            }
            j0(view.getTop());
            this.Q = i2;
            this.R = true;
        }
    }

    public final boolean q0() {
        return this.M == 3 && (this.y || p0());
    }

    public boolean r0() {
        return this.o;
    }

    public boolean s0() {
        return this.J;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    public boolean t0() {
        return true;
    }

    public final boolean u0(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent.isLayoutRequested() && m51.N(view);
    }

    public boolean v0() {
        return true;
    }

    public final void w0(View view, p0.a aVar, int i) {
        m51.g0(view, aVar, null, g0(i));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        f fVar = (f) parcelable;
        super.x(coordinatorLayout, view, fVar.a());
        y0(fVar);
        int i = fVar.o;
        if (i == 1 || i == 2) {
            this.M = 4;
            this.N = 4;
        } else {
            this.M = i;
            this.N = i;
        }
    }

    public final void x0() {
        this.c0 = -1;
        this.d0 = -1;
        VelocityTracker velocityTracker = this.a0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.a0 = null;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
        return new f(super.y(coordinatorLayout, view), this);
    }

    public final void y0(f fVar) {
        int i = this.a;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.f = fVar.p;
        }
        if (i == -1 || (i & 2) == 2) {
            this.b = fVar.q;
        }
        if (i == -1 || (i & 4) == 4) {
            this.J = fVar.r;
        }
        if (i == -1 || (i & 8) == 8) {
            this.K = fVar.s;
        }
    }

    public final void z0(View view, Runnable runnable) {
        if (u0(view)) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    public class g {
        public int a;
        public boolean b;
        public final Runnable c;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.b = false;
                r51 r51Var = BottomSheetBehavior.this.O;
                if (r51Var != null && r51Var.k(true)) {
                    g gVar = g.this;
                    gVar.c(gVar.a);
                    return;
                }
                g gVar2 = g.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.M == 2) {
                    bottomSheetBehavior.O0(gVar2.a);
                }
            }
        }

        public g() {
            this.c = new a();
        }

        public void c(int i) {
            WeakReference weakReference = BottomSheetBehavior.this.W;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.a = i;
            if (this.b) {
                return;
            }
            m51.c0((View) BottomSheetBehavior.this.W.get(), this.c);
            this.b = true;
        }

        public /* synthetic */ g(BottomSheetBehavior bottomSheetBehavior, a aVar) {
            this();
        }
    }

    public static class f extends androidx.appcompat.view.menu.c {
        public static final Parcelable.Creator<f> CREATOR = new a();
        public final int o;
        public int p;
        public boolean q;
        public boolean r;
        public boolean s;

        public class a implements Parcelable.ClassLoaderCreator {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(Parcel parcel) {
                return new f(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new f(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public f[] newArray(int i) {
                return new f[i];
            }
        }

        public f(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.o = parcel.readInt();
            this.p = parcel.readInt();
            this.q = parcel.readInt() == 1;
            this.r = parcel.readInt() == 1;
            this.s = parcel.readInt() == 1;
        }

        @Override // androidx.appcompat.view.menu.c, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.o);
            parcel.writeInt(this.p);
            parcel.writeInt(this.q ? 1 : 0);
            parcel.writeInt(this.r ? 1 : 0);
            parcel.writeInt(this.s ? 1 : 0);
        }

        public f(Parcelable parcelable, BottomSheetBehavior bottomSheetBehavior) {
            super(parcelable);
            this.o = bottomSheetBehavior.M;
            this.p = bottomSheetBehavior.f;
            this.q = bottomSheetBehavior.b;
            this.r = bottomSheetBehavior.J;
            this.s = bottomSheetBehavior.K;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.a = 0;
        this.b = true;
        this.c = false;
        this.l = -1;
        this.m = -1;
        this.B = new g(this, null);
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = 4;
        this.N = 4;
        this.S = 0.1f;
        this.Z = new ArrayList();
        this.d0 = -1;
        this.g0 = new SparseIntArray();
        this.h0 = new d();
        this.i = context.getResources().getDimensionPixelSize(em0.R);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ln0.x);
        if (obtainStyledAttributes.hasValue(ln0.B)) {
            this.k = nb0.a(context, obtainStyledAttributes, ln0.B);
        }
        if (obtainStyledAttributes.hasValue(ln0.T)) {
            this.z = st0.e(context, attributeSet, zl0.a, i0).m();
        }
        h0(context);
        i0();
        this.I = obtainStyledAttributes.getDimension(ln0.A, -1.0f);
        if (obtainStyledAttributes.hasValue(ln0.y)) {
            H0(obtainStyledAttributes.getDimensionPixelSize(ln0.y, -1));
        }
        if (obtainStyledAttributes.hasValue(ln0.z)) {
            G0(obtainStyledAttributes.getDimensionPixelSize(ln0.z, -1));
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(ln0.H);
        if (peekValue != null && (i = peekValue.data) == -1) {
            I0(i);
        } else {
            I0(obtainStyledAttributes.getDimensionPixelSize(ln0.H, -1));
        }
        F0(obtainStyledAttributes.getBoolean(ln0.G, false));
        D0(obtainStyledAttributes.getBoolean(ln0.L, false));
        C0(obtainStyledAttributes.getBoolean(ln0.E, true));
        M0(obtainStyledAttributes.getBoolean(ln0.K, false));
        A0(obtainStyledAttributes.getBoolean(ln0.C, true));
        K0(obtainStyledAttributes.getInt(ln0.I, 0));
        E0(obtainStyledAttributes.getFloat(ln0.F, 0.5f));
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(ln0.D);
        if (peekValue2 != null && peekValue2.type == 16) {
            B0(peekValue2.data);
        } else {
            B0(obtainStyledAttributes.getDimensionPixelOffset(ln0.D, 0));
        }
        L0(obtainStyledAttributes.getInt(ln0.J, 500));
        this.p = obtainStyledAttributes.getBoolean(ln0.P, false);
        this.q = obtainStyledAttributes.getBoolean(ln0.Q, false);
        this.r = obtainStyledAttributes.getBoolean(ln0.R, false);
        this.s = obtainStyledAttributes.getBoolean(ln0.S, true);
        this.t = obtainStyledAttributes.getBoolean(ln0.M, false);
        this.u = obtainStyledAttributes.getBoolean(ln0.N, false);
        this.v = obtainStyledAttributes.getBoolean(ln0.O, false);
        this.y = obtainStyledAttributes.getBoolean(ln0.U, true);
        obtainStyledAttributes.recycle();
        this.d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
