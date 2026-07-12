package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.c;
import androidx.appcompat.view.menu.jy0;
import androidx.appcompat.view.menu.ln0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.p0;
import androidx.appcompat.view.menu.ub0;
import androidx.appcompat.view.menu.uy;
import androidx.appcompat.view.menu.vy;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes.dex */
public abstract class AppBarLayout extends LinearLayout {

    public static class BaseBehavior<T extends AppBarLayout> extends uy {
        public int k;
        public int l;
        public a m;
        public WeakReference n;

        public static class a extends c {
            public static final Parcelable.Creator<a> CREATOR = new C0059a();
            public boolean o;
            public boolean p;
            public int q;
            public float r;
            public boolean s;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a$a, reason: collision with other inner class name */
            public class C0059a implements Parcelable.ClassLoaderCreator {
                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel) {
                    return new a(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public a[] newArray(int i) {
                    return new a[i];
                }
            }

            public a(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.o = parcel.readByte() != 0;
                this.p = parcel.readByte() != 0;
                this.q = parcel.readInt();
                this.r = parcel.readFloat();
                this.s = parcel.readByte() != 0;
            }

            @Override // androidx.appcompat.view.menu.c, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeByte(this.o ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.p ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.q);
                parcel.writeFloat(this.r);
                parcel.writeByte(this.s ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            jy0.a(view);
            return b0(coordinatorLayout, null, view2, view3, i, i2);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ void C(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            jy0.a(view);
            c0(coordinatorLayout, null, view2, i);
        }

        @Override // androidx.appcompat.view.menu.uy
        public /* bridge */ /* synthetic */ boolean G(View view) {
            jy0.a(view);
            return R(null);
        }

        @Override // androidx.appcompat.view.menu.uy
        public /* bridge */ /* synthetic */ int J(View view) {
            jy0.a(view);
            return S(null);
        }

        @Override // androidx.appcompat.view.menu.uy
        public /* bridge */ /* synthetic */ int K(View view) {
            jy0.a(view);
            return T(null);
        }

        @Override // androidx.appcompat.view.menu.uy
        public int L() {
            return E() + this.k;
        }

        @Override // androidx.appcompat.view.menu.uy
        public /* bridge */ /* synthetic */ void M(CoordinatorLayout coordinatorLayout, View view) {
            jy0.a(view);
            U(coordinatorLayout, null);
        }

        @Override // androidx.appcompat.view.menu.uy
        public /* bridge */ /* synthetic */ int P(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            jy0.a(view);
            return f0(coordinatorLayout, null, i, i2, i3);
        }

        public boolean R(AppBarLayout appBarLayout) {
            WeakReference weakReference = this.n;
            if (weakReference == null) {
                return true;
            }
            View view = (View) weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        public int S(AppBarLayout appBarLayout) {
            throw null;
        }

        public int T(AppBarLayout appBarLayout) {
            throw null;
        }

        public void U(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            g0(coordinatorLayout, appBarLayout);
            throw null;
        }

        public boolean V(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            super.l(coordinatorLayout, appBarLayout, i);
            throw null;
        }

        public boolean W(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            throw null;
        }

        public void X(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            if (i2 == 0) {
                throw null;
            }
            if (i2 >= 0) {
                throw null;
            }
            throw null;
        }

        public void Y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                throw null;
            }
            if (i4 == 0) {
                h0(coordinatorLayout, appBarLayout);
            }
        }

        public void Z(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof a) {
                d0((a) parcelable, true);
                super.x(coordinatorLayout, appBarLayout, this.m.a());
            } else {
                super.x(coordinatorLayout, appBarLayout, parcelable);
                this.m = null;
            }
        }

        public Parcelable a0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            Parcelable y = super.y(coordinatorLayout, appBarLayout);
            a e0 = e0(y, appBarLayout);
            return e0 == null ? y : e0;
        }

        public boolean b0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            if ((i & 2) != 0) {
                throw null;
            }
            this.n = null;
            this.l = i2;
            return false;
        }

        public void c0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            if (this.l == 0 || i == 1) {
                g0(coordinatorLayout, appBarLayout);
                throw null;
            }
            this.n = new WeakReference(view);
        }

        public void d0(a aVar, boolean z) {
            if (this.m == null || z) {
                this.m = aVar;
            }
        }

        public a e0(Parcelable parcelable, AppBarLayout appBarLayout) {
            E();
            throw null;
        }

        public int f0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
            int L = L();
            if (i2 == 0 || L < i2 || L > i3) {
                this.k = 0;
            } else if (L != ub0.b(i, i2, i3)) {
                throw null;
            }
            h0(coordinatorLayout, appBarLayout);
            return 0;
        }

        public final void g0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            throw null;
        }

        public final void h0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            m51.e0(coordinatorLayout, p0.a.q.b());
            m51.e0(coordinatorLayout, p0.a.r.b());
            throw null;
        }

        @Override // androidx.appcompat.view.menu.c61, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
            jy0.a(view);
            return V(coordinatorLayout, null, i);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            jy0.a(view);
            return W(coordinatorLayout, null, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            jy0.a(view);
            X(coordinatorLayout, null, view2, i, i2, iArr, i3);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            jy0.a(view);
            Y(coordinatorLayout, null, view2, i, i2, i3, i4, i5, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            jy0.a(view);
            Z(coordinatorLayout, null, parcelable);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
            jy0.a(view);
            return a0(coordinatorLayout, null);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        @Override // androidx.appcompat.view.menu.uy, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.D(coordinatorLayout, view, motionEvent);
        }

        @Override // androidx.appcompat.view.menu.c61
        public /* bridge */ /* synthetic */ int E() {
            return super.E();
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean V(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.V(coordinatorLayout, appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean W(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.W(coordinatorLayout, appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void X(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.X(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void Y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.Y(coordinatorLayout, appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void Z(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.Z(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable a0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.a0(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean b0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.b0(coordinatorLayout, appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void c0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.c0(coordinatorLayout, appBarLayout, view, i);
        }

        @Override // androidx.appcompat.view.menu.uy, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.k(coordinatorLayout, view, motionEvent);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends vy {
        public ScrollingViewBehavior() {
        }

        @Override // androidx.appcompat.view.menu.vy
        public /* bridge */ /* synthetic */ View G(List list) {
            O(list);
            return null;
        }

        @Override // androidx.appcompat.view.menu.vy
        public float I(View view) {
            return 0.0f;
        }

        @Override // androidx.appcompat.view.menu.vy
        public int J(View view) {
            return super.J(view);
        }

        public AppBarLayout O(List list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
            }
            return null;
        }

        public final void P(View view, View view2) {
            CoordinatorLayout.b e = ((CoordinatorLayout.e) view2.getLayoutParams()).e();
            if (e instanceof BaseBehavior) {
                m51.V(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) e).k) + K()) - H(view2));
            }
        }

        public final void Q(View view, View view2) {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            P(view, view2);
            Q(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        @Override // androidx.appcompat.view.menu.c61, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.l(coordinatorLayout, view, i);
        }

        @Override // androidx.appcompat.view.menu.vy, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.m(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            O(coordinatorLayout.q(view));
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ln0.G3);
            M(obtainStyledAttributes.getDimensionPixelSize(ln0.H3, 0));
            obtainStyledAttributes.recycle();
        }
    }
}
