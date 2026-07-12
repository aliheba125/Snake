package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.pm.PackageParser;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.e71;
import androidx.appcompat.view.menu.e8;
import androidx.appcompat.view.menu.f71;
import androidx.appcompat.view.menu.gn0;
import androidx.appcompat.view.menu.jy;
import androidx.appcompat.view.menu.kf;
import androidx.appcompat.view.menu.lf;
import androidx.appcompat.view.menu.mf;
import androidx.appcompat.view.menu.nf;
import androidx.appcompat.view.menu.of;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public SparseArray a;
    public ArrayList b;
    public nf c;
    public int d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public int i;
    public d j;
    public lf k;
    public int l;
    public HashMap m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public SparseArray t;
    public c u;
    public int v;
    public int w;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[mf.b.values().length];
            a = iArr;
            try {
                iArr[mf.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[mf.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[mf.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[mf.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class c implements e8.b {
        public ConstraintLayout a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        public c(ConstraintLayout constraintLayout) {
            this.a = constraintLayout;
        }

        @Override // androidx.appcompat.view.menu.e8.b
        public final void a() {
            int childCount = this.a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.a.getChildAt(i);
            }
            int size = this.a.b.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((androidx.constraintlayout.widget.c) this.a.b.get(i2)).j(this.a);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:102:0x01f5 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:105:0x020c A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0218  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x021e  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0201 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:117:0x01e8  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x01d6  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x01c4  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x011d  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0131  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0142  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x016b A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x023c  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x024b  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0250  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x024d  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0236  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0184  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01ba  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01db  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01e3  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01ed  */
        @Override // androidx.appcompat.view.menu.e8.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void b(mf mfVar, e8.a aVar) {
            int i;
            boolean z;
            int i2;
            int makeMeasureSpec;
            boolean z2;
            boolean z3;
            boolean z4;
            int measuredWidth;
            int measuredHeight;
            int i3;
            int max;
            int i4;
            int max2;
            int i5;
            int measuredWidth2;
            int measuredHeight2;
            int baseline;
            int i6;
            boolean z5;
            int childMeasureSpec;
            int childMeasureSpec2;
            if (mfVar == null) {
                return;
            }
            if (mfVar.O() == 8 && !mfVar.W()) {
                aVar.e = 0;
                aVar.f = 0;
                aVar.g = 0;
                return;
            }
            mf.b bVar = aVar.a;
            mf.b bVar2 = aVar.b;
            int i7 = aVar.c;
            int i8 = aVar.d;
            int i9 = this.b + this.c;
            int i10 = this.d;
            View view = (View) mfVar.q();
            int[] iArr = a.a;
            int i11 = iArr[bVar.ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    i = ViewGroup.getChildMeasureSpec(this.f, i10, -2);
                    mfVar.h[2] = -2;
                } else if (i11 == 3) {
                    i = ViewGroup.getChildMeasureSpec(this.f, i10 + mfVar.z(), -1);
                    mfVar.h[2] = -1;
                } else if (i11 != 4) {
                    i = 0;
                } else {
                    i = ViewGroup.getChildMeasureSpec(this.f, i10, -2);
                    boolean z6 = mfVar.l == 1;
                    int[] iArr2 = mfVar.h;
                    iArr2[2] = 0;
                    if (aVar.j) {
                        boolean z7 = (!z6 || iArr2[3] == 0 || iArr2[0] == mfVar.P()) ? false : true;
                        if (!z6 || z7) {
                            i = View.MeasureSpec.makeMeasureSpec(mfVar.P(), 1073741824);
                        }
                    }
                }
                z = true;
                i2 = iArr[bVar2.ordinal()];
                if (i2 == 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i9 + mfVar.N(), -1);
                            mfVar.h[3] = -1;
                        } else {
                            if (i2 != 4) {
                                z2 = false;
                                makeMeasureSpec = 0;
                                mf.b bVar3 = mf.b.MATCH_CONSTRAINT;
                                boolean z8 = bVar != bVar3;
                                boolean z9 = bVar2 != bVar3;
                                mf.b bVar4 = mf.b.MATCH_PARENT;
                                boolean z10 = bVar2 != bVar4 || bVar2 == mf.b.FIXED;
                                boolean z11 = bVar != bVar4 || bVar == mf.b.FIXED;
                                z3 = !z8 && mfVar.Q > 0.0f;
                                z4 = !z9 && mfVar.Q > 0.0f;
                                b bVar5 = (b) view.getLayoutParams();
                                if (aVar.j && z8 && mfVar.l == 0 && z9 && mfVar.m == 0) {
                                    measuredWidth2 = 0;
                                    measuredHeight2 = 0;
                                    baseline = 0;
                                    i6 = -1;
                                    i3 = 0;
                                } else {
                                    if ((view instanceof e71) || !(mfVar instanceof f71)) {
                                        view.measure(i, makeMeasureSpec);
                                    } else {
                                        ((e71) view).n((f71) mfVar, i, makeMeasureSpec);
                                    }
                                    measuredWidth = view.getMeasuredWidth();
                                    measuredHeight = view.getMeasuredHeight();
                                    int baseline2 = view.getBaseline();
                                    if (z) {
                                        i3 = 0;
                                        int[] iArr3 = mfVar.h;
                                        iArr3[0] = 0;
                                        iArr3[2] = 0;
                                    } else {
                                        int[] iArr4 = mfVar.h;
                                        i3 = 0;
                                        iArr4[0] = measuredWidth;
                                        iArr4[2] = measuredHeight;
                                    }
                                    if (z2) {
                                        int[] iArr5 = mfVar.h;
                                        iArr5[1] = i3;
                                        iArr5[3] = i3;
                                    } else {
                                        int[] iArr6 = mfVar.h;
                                        iArr6[1] = measuredHeight;
                                        iArr6[3] = measuredWidth;
                                    }
                                    int i12 = mfVar.o;
                                    max = i12 <= 0 ? Math.max(i12, measuredWidth) : measuredWidth;
                                    i4 = mfVar.p;
                                    if (i4 > 0) {
                                        max = Math.min(i4, max);
                                    }
                                    int i13 = mfVar.r;
                                    max2 = i13 <= 0 ? Math.max(i13, measuredHeight) : measuredHeight;
                                    i5 = mfVar.s;
                                    if (i5 > 0) {
                                        max2 = Math.min(i5, max2);
                                    }
                                    if (!z3 && z10) {
                                        max = (int) ((max2 * mfVar.Q) + 0.5f);
                                    } else if (z4 && z11) {
                                        max2 = (int) ((max / mfVar.Q) + 0.5f);
                                    }
                                    if (measuredWidth == max || measuredHeight != max2) {
                                        if (measuredWidth != max) {
                                            i = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
                                        }
                                        if (measuredHeight != max2) {
                                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max2, 1073741824);
                                        }
                                        view.measure(i, makeMeasureSpec);
                                        measuredWidth2 = view.getMeasuredWidth();
                                        measuredHeight2 = view.getMeasuredHeight();
                                        baseline = view.getBaseline();
                                    } else {
                                        measuredWidth2 = max;
                                        measuredHeight2 = max2;
                                        baseline = baseline2;
                                    }
                                    i6 = -1;
                                }
                                int i14 = baseline == i6 ? 1 : i3;
                                aVar.i = (measuredWidth2 == aVar.c || measuredHeight2 != aVar.d) ? 1 : i3;
                                z5 = !bVar5.Y ? 1 : i14;
                                if (z5 != 0 && baseline != -1 && mfVar.n() != baseline) {
                                    aVar.i = true;
                                }
                                aVar.e = measuredWidth2;
                                aVar.f = measuredHeight2;
                                aVar.h = z5;
                                aVar.g = baseline;
                            }
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(this.g, i9, -2);
                            boolean z12 = mfVar.m == 1;
                            int[] iArr7 = mfVar.h;
                            iArr7[3] = 0;
                            if (aVar.j) {
                                boolean z13 = (!z12 || iArr7[2] == 0 || iArr7[1] == mfVar.v()) ? false : true;
                                if (!z12 || z13) {
                                    childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(mfVar.v(), 1073741824);
                                }
                            }
                        }
                        makeMeasureSpec = childMeasureSpec2;
                    } else {
                        childMeasureSpec = ViewGroup.getChildMeasureSpec(this.g, i9, -2);
                        mfVar.h[3] = -2;
                    }
                    makeMeasureSpec = childMeasureSpec;
                    z2 = true;
                    mf.b bVar32 = mf.b.MATCH_CONSTRAINT;
                    if (bVar != bVar32) {
                    }
                    if (bVar2 != bVar32) {
                    }
                    mf.b bVar42 = mf.b.MATCH_PARENT;
                    if (bVar2 != bVar42) {
                    }
                    if (bVar != bVar42) {
                    }
                    if (z8) {
                    }
                    if (z9) {
                    }
                    b bVar52 = (b) view.getLayoutParams();
                    if (aVar.j) {
                    }
                    if (view instanceof e71) {
                    }
                    view.measure(i, makeMeasureSpec);
                    measuredWidth = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    int baseline22 = view.getBaseline();
                    if (z) {
                    }
                    if (z2) {
                    }
                    int i122 = mfVar.o;
                    if (i122 <= 0) {
                    }
                    i4 = mfVar.p;
                    if (i4 > 0) {
                    }
                    int i132 = mfVar.r;
                    if (i132 <= 0) {
                    }
                    i5 = mfVar.s;
                    if (i5 > 0) {
                    }
                    if (!z3) {
                    }
                    if (z4) {
                        max2 = (int) ((max / mfVar.Q) + 0.5f);
                    }
                    if (measuredWidth == max) {
                    }
                    if (measuredWidth != max) {
                    }
                    if (measuredHeight != max2) {
                    }
                    view.measure(i, makeMeasureSpec);
                    measuredWidth2 = view.getMeasuredWidth();
                    measuredHeight2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    i6 = -1;
                    if (baseline == i6) {
                    }
                    aVar.i = (measuredWidth2 == aVar.c || measuredHeight2 != aVar.d) ? 1 : i3;
                    if (!bVar52.Y) {
                    }
                    if (z5 != 0) {
                        aVar.i = true;
                    }
                    aVar.e = measuredWidth2;
                    aVar.f = measuredHeight2;
                    aVar.h = z5;
                    aVar.g = baseline;
                }
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
                mfVar.h[3] = i8;
                z2 = false;
                mf.b bVar322 = mf.b.MATCH_CONSTRAINT;
                if (bVar != bVar322) {
                }
                if (bVar2 != bVar322) {
                }
                mf.b bVar422 = mf.b.MATCH_PARENT;
                if (bVar2 != bVar422) {
                }
                if (bVar != bVar422) {
                }
                if (z8) {
                }
                if (z9) {
                }
                b bVar522 = (b) view.getLayoutParams();
                if (aVar.j) {
                }
                if (view instanceof e71) {
                }
                view.measure(i, makeMeasureSpec);
                measuredWidth = view.getMeasuredWidth();
                measuredHeight = view.getMeasuredHeight();
                int baseline222 = view.getBaseline();
                if (z) {
                }
                if (z2) {
                }
                int i1222 = mfVar.o;
                if (i1222 <= 0) {
                }
                i4 = mfVar.p;
                if (i4 > 0) {
                }
                int i1322 = mfVar.r;
                if (i1322 <= 0) {
                }
                i5 = mfVar.s;
                if (i5 > 0) {
                }
                if (!z3) {
                }
                if (z4) {
                }
                if (measuredWidth == max) {
                }
                if (measuredWidth != max) {
                }
                if (measuredHeight != max2) {
                }
                view.measure(i, makeMeasureSpec);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                i6 = -1;
                if (baseline == i6) {
                }
                aVar.i = (measuredWidth2 == aVar.c || measuredHeight2 != aVar.d) ? 1 : i3;
                if (!bVar522.Y) {
                }
                if (z5 != 0) {
                }
                aVar.e = measuredWidth2;
                aVar.f = measuredHeight2;
                aVar.h = z5;
                aVar.g = baseline;
            }
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            mfVar.h[2] = i7;
            i = makeMeasureSpec2;
            z = false;
            i2 = iArr[bVar2.ordinal()];
            if (i2 == 1) {
            }
            z2 = false;
            mf.b bVar3222 = mf.b.MATCH_CONSTRAINT;
            if (bVar != bVar3222) {
            }
            if (bVar2 != bVar3222) {
            }
            mf.b bVar4222 = mf.b.MATCH_PARENT;
            if (bVar2 != bVar4222) {
            }
            if (bVar != bVar4222) {
            }
            if (z8) {
            }
            if (z9) {
            }
            b bVar5222 = (b) view.getLayoutParams();
            if (aVar.j) {
            }
            if (view instanceof e71) {
            }
            view.measure(i, makeMeasureSpec);
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            int baseline2222 = view.getBaseline();
            if (z) {
            }
            if (z2) {
            }
            int i12222 = mfVar.o;
            if (i12222 <= 0) {
            }
            i4 = mfVar.p;
            if (i4 > 0) {
            }
            int i13222 = mfVar.r;
            if (i13222 <= 0) {
            }
            i5 = mfVar.s;
            if (i5 > 0) {
            }
            if (!z3) {
            }
            if (z4) {
            }
            if (measuredWidth == max) {
            }
            if (measuredWidth != max) {
            }
            if (measuredHeight != max2) {
            }
            view.measure(i, makeMeasureSpec);
            measuredWidth2 = view.getMeasuredWidth();
            measuredHeight2 = view.getMeasuredHeight();
            baseline = view.getBaseline();
            i6 = -1;
            if (baseline == i6) {
            }
            aVar.i = (measuredWidth2 == aVar.c || measuredHeight2 != aVar.d) ? 1 : i3;
            if (!bVar5222.Y) {
            }
            if (z5 != 0) {
            }
            aVar.e = measuredWidth2;
            aVar.f = measuredHeight2;
            aVar.h = z5;
            aVar.g = baseline;
        }

        public void c(int i, int i2, int i3, int i4, int i5, int i6) {
            this.b = i3;
            this.c = i4;
            this.d = i5;
            this.e = i6;
            this.f = i;
            this.g = i2;
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new nf();
        this.d = 0;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
        this.h = true;
        this.i = 263;
        this.j = null;
        this.k = null;
        this.l = -1;
        this.m = new HashMap();
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = 0;
        this.s = 0;
        this.t = new SparseArray();
        this.u = new c(this);
        this.v = 0;
        this.w = 0;
        j(attributeSet, 0, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max2 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
        return max2 > 0 ? max2 : max;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
    }

    public void c(boolean z, View view, mf mfVar, b bVar, SparseArray sparseArray) {
        float f;
        mf mfVar2;
        mf mfVar3;
        mf mfVar4;
        mf mfVar5;
        int i;
        bVar.a();
        bVar.o0 = false;
        mfVar.D0(view.getVisibility());
        if (bVar.b0) {
            mfVar.p0(true);
            mfVar.D0(8);
        }
        mfVar.c0(view);
        if (view instanceof androidx.constraintlayout.widget.c) {
            ((androidx.constraintlayout.widget.c) view).h(mfVar, this.c.a1());
        }
        if (bVar.Z) {
            jy jyVar = (jy) mfVar;
            int i2 = bVar.k0;
            int i3 = bVar.l0;
            float f2 = bVar.m0;
            if (f2 != -1.0f) {
                jyVar.Q0(f2);
                return;
            } else if (i2 != -1) {
                jyVar.O0(i2);
                return;
            } else {
                if (i3 != -1) {
                    jyVar.P0(i3);
                    return;
                }
                return;
            }
        }
        int i4 = bVar.d0;
        int i5 = bVar.e0;
        int i6 = bVar.f0;
        int i7 = bVar.g0;
        int i8 = bVar.h0;
        int i9 = bVar.i0;
        float f3 = bVar.j0;
        int i10 = bVar.m;
        if (i10 != -1) {
            mf mfVar6 = (mf) sparseArray.get(i10);
            if (mfVar6 != null) {
                mfVar.k(mfVar6, bVar.o, bVar.n);
            }
        } else {
            if (i4 != -1) {
                mf mfVar7 = (mf) sparseArray.get(i4);
                if (mfVar7 != null) {
                    kf.b bVar2 = kf.b.LEFT;
                    f = f3;
                    mfVar.T(bVar2, mfVar7, bVar2, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i8);
                } else {
                    f = f3;
                }
            } else {
                f = f3;
                if (i5 != -1 && (mfVar2 = (mf) sparseArray.get(i5)) != null) {
                    mfVar.T(kf.b.LEFT, mfVar2, kf.b.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i8);
                }
            }
            if (i6 != -1) {
                mf mfVar8 = (mf) sparseArray.get(i6);
                if (mfVar8 != null) {
                    mfVar.T(kf.b.RIGHT, mfVar8, kf.b.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i9);
                }
            } else if (i7 != -1 && (mfVar3 = (mf) sparseArray.get(i7)) != null) {
                kf.b bVar3 = kf.b.RIGHT;
                mfVar.T(bVar3, mfVar3, bVar3, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i9);
            }
            int i11 = bVar.h;
            if (i11 != -1) {
                mf mfVar9 = (mf) sparseArray.get(i11);
                if (mfVar9 != null) {
                    kf.b bVar4 = kf.b.TOP;
                    mfVar.T(bVar4, mfVar9, bVar4, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.u);
                }
            } else {
                int i12 = bVar.i;
                if (i12 != -1 && (mfVar4 = (mf) sparseArray.get(i12)) != null) {
                    mfVar.T(kf.b.TOP, mfVar4, kf.b.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.u);
                }
            }
            int i13 = bVar.j;
            if (i13 != -1) {
                mf mfVar10 = (mf) sparseArray.get(i13);
                if (mfVar10 != null) {
                    mfVar.T(kf.b.BOTTOM, mfVar10, kf.b.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.w);
                }
            } else {
                int i14 = bVar.k;
                if (i14 != -1 && (mfVar5 = (mf) sparseArray.get(i14)) != null) {
                    kf.b bVar5 = kf.b.BOTTOM;
                    mfVar.T(bVar5, mfVar5, bVar5, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.w);
                }
            }
            int i15 = bVar.l;
            if (i15 != -1) {
                View view2 = (View) this.a.get(i15);
                mf mfVar11 = (mf) sparseArray.get(bVar.l);
                if (mfVar11 != null && view2 != null && (view2.getLayoutParams() instanceof b)) {
                    b bVar6 = (b) view2.getLayoutParams();
                    bVar.Y = true;
                    bVar6.Y = true;
                    kf.b bVar7 = kf.b.BASELINE;
                    mfVar.m(bVar7).b(mfVar11.m(bVar7), 0, -1, true);
                    mfVar.g0(true);
                    bVar6.n0.g0(true);
                    mfVar.m(kf.b.TOP).l();
                    mfVar.m(kf.b.BOTTOM).l();
                }
            }
            float f4 = f;
            if (f4 >= 0.0f) {
                mfVar.i0(f4);
            }
            float f5 = bVar.A;
            if (f5 >= 0.0f) {
                mfVar.x0(f5);
            }
        }
        if (z && ((i = bVar.Q) != -1 || bVar.R != -1)) {
            mfVar.v0(i, bVar.R);
        }
        if (bVar.W) {
            mfVar.l0(mf.b.FIXED);
            mfVar.E0(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                mfVar.l0(mf.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
            if (bVar.T) {
                mfVar.l0(mf.b.MATCH_CONSTRAINT);
            } else {
                mfVar.l0(mf.b.MATCH_PARENT);
            }
            mfVar.m(kf.b.LEFT).e = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            mfVar.m(kf.b.RIGHT).e = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        } else {
            mfVar.l0(mf.b.MATCH_CONSTRAINT);
            mfVar.E0(0);
        }
        if (bVar.X) {
            mfVar.A0(mf.b.FIXED);
            mfVar.h0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                mfVar.A0(mf.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
            if (bVar.U) {
                mfVar.A0(mf.b.MATCH_CONSTRAINT);
            } else {
                mfVar.A0(mf.b.MATCH_PARENT);
            }
            mfVar.m(kf.b.TOP).e = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            mfVar.m(kf.b.BOTTOM).e = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        } else {
            mfVar.A0(mf.b.MATCH_CONSTRAINT);
            mfVar.h0(0);
        }
        mfVar.e0(bVar.B);
        mfVar.n0(bVar.E);
        mfVar.C0(bVar.F);
        mfVar.j0(bVar.G);
        mfVar.y0(bVar.H);
        mfVar.m0(bVar.I, bVar.K, bVar.M, bVar.O);
        mfVar.B0(bVar.J, bVar.L, bVar.N, bVar.P);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.ViewGroup
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((androidx.constraintlayout.widget.c) this.b.get(i)).k(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public Object f(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap hashMap = this.m;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.m.get(str);
    }

    @Override // android.view.View
    public void forceLayout() {
        l();
        super.forceLayout();
    }

    public final mf g(int i) {
        if (i == 0) {
            return this.c;
        }
        View view = (View) this.a.get(i);
        if (view == null && (view = findViewById(i)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.c;
        }
        if (view == null) {
            return null;
        }
        return ((b) view.getLayoutParams()).n0;
    }

    public int getMaxHeight() {
        return this.g;
    }

    public int getMaxWidth() {
        return this.f;
    }

    public int getMinHeight() {
        return this.e;
    }

    public int getMinWidth() {
        return this.d;
    }

    public int getOptimizationLevel() {
        return this.c.V0();
    }

    public View h(int i) {
        return (View) this.a.get(i);
    }

    public final mf i(View view) {
        if (view == this) {
            return this.c;
        }
        if (view == null) {
            return null;
        }
        return ((b) view.getLayoutParams()).n0;
    }

    public final void j(AttributeSet attributeSet, int i, int i2) {
        this.c.c0(this);
        this.c.f1(this.u);
        this.a.put(getId(), this);
        this.j = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, gn0.a1, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == gn0.k1) {
                    this.d = obtainStyledAttributes.getDimensionPixelOffset(index, this.d);
                } else if (index == gn0.l1) {
                    this.e = obtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                } else if (index == gn0.i1) {
                    this.f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == gn0.j1) {
                    this.g = obtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                } else if (index == gn0.L2) {
                    this.i = obtainStyledAttributes.getInt(index, this.i);
                } else if (index == gn0.M1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            m(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.k = null;
                        }
                    }
                } else if (index == gn0.s1) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        d dVar = new d();
                        this.j = dVar;
                        dVar.k(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.j = null;
                    }
                    this.l = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.c.g1(this.i);
    }

    public boolean k() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    public final void l() {
        this.h = true;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = 0;
        this.s = 0;
    }

    public void m(int i) {
        this.k = new lf(getContext(), this, i);
    }

    public void n(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        c cVar = this.u;
        int i5 = cVar.e;
        int resolveSizeAndState = View.resolveSizeAndState(i3 + cVar.d, i, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(i4 + i5, i2, 0) & 16777215;
        int min = Math.min(this.f, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.g, resolveSizeAndState2);
        if (z) {
            min |= 16777216;
        }
        if (z2) {
            min2 |= 16777216;
        }
        setMeasuredDimension(min, min2);
        this.n = min;
        this.o = min2;
    }

    public void o(nf nfVar, int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i4 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.u.c(i2, i3, max, max2, paddingWidth, i4);
        int max3 = Math.max(0, getPaddingStart());
        int max4 = Math.max(0, getPaddingEnd());
        int max5 = (max3 > 0 || max4 > 0) ? k() ? max4 : max3 : Math.max(0, getPaddingLeft());
        int i5 = size - paddingWidth;
        int i6 = size2 - i4;
        r(nfVar, mode, i5, mode2, i6);
        nfVar.c1(i, mode, i5, mode2, i6, this.n, this.o, max5, max);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            b bVar = (b) childAt.getLayoutParams();
            mf mfVar = bVar.n0;
            if ((childAt.getVisibility() != 8 || bVar.Z || bVar.a0 || bVar.c0 || isInEditMode) && !bVar.b0) {
                int Q = mfVar.Q();
                int R = mfVar.R();
                childAt.layout(Q, R, mfVar.P() + Q, mfVar.v() + R);
            }
        }
        int size = this.b.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((androidx.constraintlayout.widget.c) this.b.get(i6)).i(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        this.v = i;
        this.w = i2;
        this.c.h1(k());
        if (this.h) {
            this.h = false;
            if (s()) {
                this.c.j1();
            }
        }
        o(this.c, this.i, i, i2);
        n(i, i2, this.c.P(), this.c.v(), this.c.b1(), this.c.Z0());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        mf i = i(view);
        if ((view instanceof e) && !(i instanceof jy)) {
            b bVar = (b) view.getLayoutParams();
            jy jyVar = new jy();
            bVar.n0 = jyVar;
            bVar.Z = true;
            jyVar.R0(bVar.S);
        }
        if (view instanceof androidx.constraintlayout.widget.c) {
            androidx.constraintlayout.widget.c cVar = (androidx.constraintlayout.widget.c) view;
            cVar.m();
            ((b) view.getLayoutParams()).a0 = true;
            if (!this.b.contains(cVar)) {
                this.b.add(cVar);
            }
        }
        this.a.put(view.getId(), view);
        this.h = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.a.remove(view.getId());
        this.c.L0(i(view));
        this.b.remove(view);
        this.h = true;
    }

    public final void p() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            mf i2 = i(getChildAt(i));
            if (i2 != null) {
                i2.Y();
            }
        }
        if (isInEditMode) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    q(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    g(childAt.getId()).d0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.l != -1) {
            for (int i4 = 0; i4 < childCount; i4++) {
                getChildAt(i4).getId();
            }
        }
        d dVar = this.j;
        if (dVar != null) {
            dVar.d(this, true);
        }
        this.c.M0();
        int size = this.b.size();
        if (size > 0) {
            for (int i5 = 0; i5 < size; i5++) {
                ((androidx.constraintlayout.widget.c) this.b.get(i5)).l(this);
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            getChildAt(i6);
        }
        this.t.clear();
        this.t.put(0, this.c);
        this.t.put(getId(), this.c);
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt2 = getChildAt(i7);
            this.t.put(childAt2.getId(), i(childAt2));
        }
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt3 = getChildAt(i8);
            mf i9 = i(childAt3);
            if (i9 != null) {
                b bVar = (b) childAt3.getLayoutParams();
                this.c.a(i9);
                c(isInEditMode, childAt3, i9, bVar, this.t);
            }
        }
    }

    public void q(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.m == null) {
                this.m = new HashMap();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.m.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public void r(nf nfVar, int i, int i2, int i3, int i4) {
        mf.b bVar;
        c cVar = this.u;
        int i5 = cVar.e;
        int i6 = cVar.d;
        mf.b bVar2 = mf.b.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            bVar = mf.b.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.d);
            }
        } else if (i == 0) {
            bVar = mf.b.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.d);
            }
            i2 = 0;
        } else if (i != 1073741824) {
            bVar = bVar2;
            i2 = 0;
        } else {
            i2 = Math.min(this.f - i6, i2);
            bVar = bVar2;
        }
        if (i3 == Integer.MIN_VALUE) {
            bVar2 = mf.b.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.e);
            }
        } else if (i3 != 0) {
            if (i3 == 1073741824) {
                i4 = Math.min(this.g - i5, i4);
            }
            i4 = 0;
        } else {
            bVar2 = mf.b.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.e);
            }
            i4 = 0;
        }
        if (i2 != nfVar.P() || i4 != nfVar.v()) {
            nfVar.Y0();
        }
        nfVar.F0(0);
        nfVar.G0(0);
        nfVar.s0(this.f - i6);
        nfVar.r0(this.g - i5);
        nfVar.u0(0);
        nfVar.t0(0);
        nfVar.l0(bVar);
        nfVar.E0(i2);
        nfVar.A0(bVar2);
        nfVar.h0(i4);
        nfVar.u0(this.d - i6);
        nfVar.t0(this.e - i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        l();
        super.requestLayout();
    }

    public final boolean s() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            p();
        }
        return z;
    }

    public void setConstraintSet(d dVar) {
        this.j = dVar;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.a.remove(getId());
        super.setId(i);
        this.a.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.g) {
            return;
        }
        this.g = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f) {
            return;
        }
        this.f = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.e) {
            return;
        }
        this.e = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.d) {
            return;
        }
        this.d = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(of ofVar) {
        lf lfVar = this.k;
        if (lfVar != null) {
            lfVar.c(ofVar);
        }
    }

    public void setOptimizationLevel(int i) {
        this.i = i;
        this.c.g1(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new nf();
        this.d = 0;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
        this.h = true;
        this.i = 263;
        this.j = null;
        this.k = null;
        this.l = -1;
        this.m = new HashMap();
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = 0;
        this.s = 0;
        this.t = new SparseArray();
        this.u = new c(this);
        this.v = 0;
        this.w = 0;
        j(attributeSet, i, 0);
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        public float C;
        public int D;
        public float E;
        public float F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public float O;
        public float P;
        public int Q;
        public int R;
        public int S;
        public boolean T;
        public boolean U;
        public String V;
        public boolean W;
        public boolean X;
        public boolean Y;
        public boolean Z;
        public int a;
        public boolean a0;
        public int b;
        public boolean b0;
        public float c;
        public boolean c0;
        public int d;
        public int d0;
        public int e;
        public int e0;
        public int f;
        public int f0;
        public int g;
        public int g0;
        public int h;
        public int h0;
        public int i;
        public int i0;
        public int j;
        public float j0;
        public int k;
        public int k0;
        public int l;
        public int l0;
        public int m;
        public float m0;
        public int n;
        public mf n0;
        public float o;
        public boolean o0;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        public static class a {
            public static final SparseIntArray a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                a = sparseIntArray;
                sparseIntArray.append(gn0.l2, 8);
                sparseIntArray.append(gn0.m2, 9);
                sparseIntArray.append(gn0.o2, 10);
                sparseIntArray.append(gn0.p2, 11);
                sparseIntArray.append(gn0.v2, 12);
                sparseIntArray.append(gn0.u2, 13);
                sparseIntArray.append(gn0.T1, 14);
                sparseIntArray.append(gn0.S1, 15);
                sparseIntArray.append(gn0.Q1, 16);
                sparseIntArray.append(gn0.U1, 2);
                sparseIntArray.append(gn0.W1, 3);
                sparseIntArray.append(gn0.V1, 4);
                sparseIntArray.append(gn0.D2, 49);
                sparseIntArray.append(gn0.E2, 50);
                sparseIntArray.append(gn0.a2, 5);
                sparseIntArray.append(gn0.b2, 6);
                sparseIntArray.append(gn0.c2, 7);
                sparseIntArray.append(gn0.b1, 1);
                sparseIntArray.append(gn0.q2, 17);
                sparseIntArray.append(gn0.r2, 18);
                sparseIntArray.append(gn0.Z1, 19);
                sparseIntArray.append(gn0.Y1, 20);
                sparseIntArray.append(gn0.H2, 21);
                sparseIntArray.append(gn0.K2, 22);
                sparseIntArray.append(gn0.I2, 23);
                sparseIntArray.append(gn0.F2, 24);
                sparseIntArray.append(gn0.J2, 25);
                sparseIntArray.append(gn0.G2, 26);
                sparseIntArray.append(gn0.h2, 29);
                sparseIntArray.append(gn0.w2, 30);
                sparseIntArray.append(gn0.X1, 44);
                sparseIntArray.append(gn0.j2, 45);
                sparseIntArray.append(gn0.y2, 46);
                sparseIntArray.append(gn0.i2, 47);
                sparseIntArray.append(gn0.x2, 48);
                sparseIntArray.append(gn0.O1, 27);
                sparseIntArray.append(gn0.N1, 28);
                sparseIntArray.append(gn0.z2, 31);
                sparseIntArray.append(gn0.d2, 32);
                sparseIntArray.append(gn0.B2, 33);
                sparseIntArray.append(gn0.A2, 34);
                sparseIntArray.append(gn0.C2, 35);
                sparseIntArray.append(gn0.f2, 36);
                sparseIntArray.append(gn0.e2, 37);
                sparseIntArray.append(gn0.g2, 38);
                sparseIntArray.append(gn0.k2, 39);
                sparseIntArray.append(gn0.t2, 40);
                sparseIntArray.append(gn0.n2, 41);
                sparseIntArray.append(gn0.R1, 42);
                sparseIntArray.append(gn0.P1, 43);
                sparseIntArray.append(gn0.s2, 51);
            }
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = false;
            this.c0 = false;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = 0.5f;
            this.n0 = new mf();
            this.o0 = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, gn0.a1);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = a.a.get(index);
                switch (i3) {
                    case 1:
                        this.S = obtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId == -1) {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case q02.c.c /* 3 */:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f;
                        if (f < 0.0f) {
                            this.o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case q02.c.e /* 5 */:
                        this.a = obtainStyledAttributes.getDimensionPixelOffset(index, this.a);
                        break;
                    case q02.c.f /* 6 */:
                        this.b = obtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case q02.c.g /* 7 */:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.d);
                        this.d = resourceId2;
                        if (resourceId2 == -1) {
                            this.d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.e);
                        this.e = resourceId3;
                        if (resourceId3 == -1) {
                            this.e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 == -1) {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 == -1) {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 == -1) {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 == -1) {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 28:
                        this.U = obtainStyledAttributes.getBoolean(index, this.U);
                        break;
                    case 29:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        this.I = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                        this.J = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.O));
                        this.I = 2;
                        break;
                    case 36:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.P = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.P));
                        this.J = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = Float.NaN;
                                this.D = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.D = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.D = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.B.substring(i);
                                        if (substring2.length() > 0) {
                                            this.C = Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.B.substring(i, indexOf2);
                                        String substring4 = this.B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.D == 1) {
                                                        this.C = Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        this.C = Math.abs(parseFloat / parseFloat2);
                                                        break;
                                                    }
                                                }
                                            } catch (NumberFormatException unused5) {
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    break;
                                }
                                break;
                            case 45:
                                this.E = obtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 46:
                                this.F = obtainStyledAttributes.getFloat(index, this.F);
                                break;
                            case 47:
                                this.G = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.H = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                            case 50:
                                this.R = obtainStyledAttributes.getDimensionPixelOffset(index, this.R);
                                break;
                            case 51:
                                this.V = obtainStyledAttributes.getString(index);
                                break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Z = false;
            this.W = true;
            this.X = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.U) {
                this.X = false;
                if (this.J == 0) {
                    this.J = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.W = false;
                if (i == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.T = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.X = false;
                if (i2 == 0 && this.J == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.U = true;
                }
            }
            if (this.c == -1.0f && this.a == -1 && this.b == -1) {
                return;
            }
            this.Z = true;
            this.W = true;
            this.X = true;
            if (!(this.n0 instanceof jy)) {
                this.n0 = new jy();
            }
            ((jy) this.n0).R0(this.S);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007c  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void resolveLayoutDirection(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i7 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i);
            boolean z = false;
            boolean z2 = 1 == getLayoutDirection();
            this.f0 = -1;
            this.g0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.h0 = this.t;
            this.i0 = this.v;
            float f = this.z;
            this.j0 = f;
            int i8 = this.a;
            this.k0 = i8;
            int i9 = this.b;
            this.l0 = i9;
            float f2 = this.c;
            this.m0 = f2;
            if (z2) {
                int i10 = this.p;
                if (i10 != -1) {
                    this.f0 = i10;
                } else {
                    int i11 = this.q;
                    if (i11 != -1) {
                        this.g0 = i11;
                    }
                    i2 = this.r;
                    if (i2 != -1) {
                        this.e0 = i2;
                        z = true;
                    }
                    i3 = this.s;
                    if (i3 != -1) {
                        this.d0 = i3;
                        z = true;
                    }
                    i4 = this.x;
                    if (i4 != -1) {
                        this.i0 = i4;
                    }
                    i5 = this.y;
                    if (i5 != -1) {
                        this.h0 = i5;
                    }
                    if (z) {
                        this.j0 = 1.0f - f;
                    }
                    if (this.Z && this.S == 1) {
                        if (f2 == -1.0f) {
                            this.m0 = 1.0f - f2;
                            this.k0 = -1;
                            this.l0 = -1;
                        } else if (i8 != -1) {
                            this.l0 = i8;
                            this.k0 = -1;
                            this.m0 = -1.0f;
                        } else if (i9 != -1) {
                            this.k0 = i9;
                            this.l0 = -1;
                            this.m0 = -1.0f;
                        }
                    }
                }
                z = true;
                i2 = this.r;
                if (i2 != -1) {
                }
                i3 = this.s;
                if (i3 != -1) {
                }
                i4 = this.x;
                if (i4 != -1) {
                }
                i5 = this.y;
                if (i5 != -1) {
                }
                if (z) {
                }
                if (this.Z) {
                    if (f2 == -1.0f) {
                    }
                }
            } else {
                int i12 = this.p;
                if (i12 != -1) {
                    this.e0 = i12;
                }
                int i13 = this.q;
                if (i13 != -1) {
                    this.d0 = i13;
                }
                int i14 = this.r;
                if (i14 != -1) {
                    this.f0 = i14;
                }
                int i15 = this.s;
                if (i15 != -1) {
                    this.g0 = i15;
                }
                int i16 = this.x;
                if (i16 != -1) {
                    this.h0 = i16;
                }
                int i17 = this.y;
                if (i17 != -1) {
                    this.i0 = i17;
                }
            }
            if (this.r == -1 && this.s == -1 && this.q == -1 && this.p == -1) {
                int i18 = this.f;
                if (i18 != -1) {
                    this.f0 = i18;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                    }
                } else {
                    int i19 = this.g;
                    if (i19 != -1) {
                        this.g0 = i19;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                        }
                    }
                }
                int i20 = this.d;
                if (i20 != -1) {
                    this.d0 = i20;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                    return;
                }
                int i21 = this.e;
                if (i21 != -1) {
                    this.e0 = i21;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                }
            }
        }

        public b(int i, int i2) {
            super(i, i2);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = false;
            this.c0 = false;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = 0.5f;
            this.n0 = new mf();
            this.o0 = false;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = false;
            this.c0 = false;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = 0.5f;
            this.n0 = new mf();
            this.o0 = false;
        }
    }
}
