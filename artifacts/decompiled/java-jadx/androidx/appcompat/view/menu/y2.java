package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.view.menu.ep0;

/* loaded from: classes.dex */
public final class y2 {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static y2 c;
    public ep0 a;

    public class a implements ep0.c {
        public final int[] a = {jm0.R, jm0.P, jm0.a};
        public final int[] b = {jm0.o, jm0.B, jm0.t, jm0.p, jm0.q, jm0.s, jm0.r};
        public final int[] c = {jm0.O, jm0.Q, jm0.k, jm0.K, jm0.L, jm0.M, jm0.N};
        public final int[] d = {jm0.w, jm0.i, jm0.v};
        public final int[] e = {jm0.J, jm0.S};
        public final int[] f = {jm0.c, jm0.g, jm0.d, jm0.h};

        @Override // androidx.appcompat.view.menu.ep0.c
        public Drawable a(ep0 ep0Var, Context context, int i) {
            if (i == jm0.j) {
                return new LayerDrawable(new Drawable[]{ep0Var.i(context, jm0.i), ep0Var.i(context, jm0.k)});
            }
            if (i == jm0.y) {
                return l(ep0Var, context, fm0.c);
            }
            if (i == jm0.x) {
                return l(ep0Var, context, fm0.d);
            }
            if (i == jm0.z) {
                return l(ep0Var, context, fm0.e);
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0066 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0051  */
        @Override // androidx.appcompat.view.menu.ep0.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean b(Context context, int i, Drawable drawable) {
            PorterDuff.Mode mode;
            int i2;
            boolean z;
            int round;
            PorterDuff.Mode mode2 = y2.b;
            if (f(this.a, i)) {
                i2 = am0.l;
            } else if (f(this.c, i)) {
                i2 = am0.j;
            } else {
                if (f(this.d, i)) {
                    mode2 = PorterDuff.Mode.MULTIPLY;
                } else {
                    if (i == jm0.u) {
                        z = true;
                        round = Math.round(40.8f);
                        i2 = 16842800;
                        mode = mode2;
                        if (z) {
                            return false;
                        }
                        Drawable mutate = drawable.mutate();
                        mutate.setColorFilter(y2.d(g01.c(context, i2), mode));
                        if (round != -1) {
                            mutate.setAlpha(round);
                        }
                        return true;
                    }
                    if (i != jm0.l) {
                        mode = mode2;
                        i2 = 0;
                        z = false;
                        round = -1;
                        if (z) {
                        }
                    }
                }
                mode = mode2;
                round = -1;
                i2 = 16842801;
                z = true;
                if (z) {
                }
            }
            mode = mode2;
            z = true;
            round = -1;
            if (z) {
            }
        }

        @Override // androidx.appcompat.view.menu.ep0.c
        public PorterDuff.Mode c(int i) {
            if (i == jm0.H) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.ep0.c
        public ColorStateList d(Context context, int i) {
            if (i == jm0.m) {
                return i3.a(context, cm0.c);
            }
            if (i == jm0.I) {
                return i3.a(context, cm0.f);
            }
            if (i == jm0.H) {
                return k(context);
            }
            if (i == jm0.f) {
                return j(context);
            }
            if (i == jm0.b) {
                return g(context);
            }
            if (i == jm0.e) {
                return i(context);
            }
            if (i == jm0.D || i == jm0.E) {
                return i3.a(context, cm0.e);
            }
            if (f(this.b, i)) {
                return g01.e(context, am0.l);
            }
            if (f(this.e, i)) {
                return i3.a(context, cm0.b);
            }
            if (f(this.f, i)) {
                return i3.a(context, cm0.a);
            }
            if (i == jm0.A) {
                return i3.a(context, cm0.d);
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.ep0.c
        public boolean e(Context context, int i, Drawable drawable) {
            if (i == jm0.C) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m(layerDrawable.findDrawableByLayerId(R.id.background), g01.c(context, am0.l), y2.b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), g01.c(context, am0.l), y2.b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), g01.c(context, am0.j), y2.b);
                return true;
            }
            if (i != jm0.y && i != jm0.x && i != jm0.z) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), g01.b(context, am0.l), y2.b);
            m(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), g01.c(context, am0.j), y2.b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), g01.c(context, am0.j), y2.b);
            return true;
        }

        public final boolean f(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public final ColorStateList g(Context context) {
            return h(context, 0);
        }

        public final ColorStateList h(Context context, int i) {
            int c = g01.c(context, am0.k);
            return new ColorStateList(new int[][]{g01.b, g01.e, g01.c, g01.i}, new int[]{g01.b(context, am0.i), cd.g(c, i), cd.g(c, i), i});
        }

        public final ColorStateList i(Context context) {
            return h(context, g01.c(context, am0.h));
        }

        public final ColorStateList j(Context context) {
            return h(context, g01.c(context, am0.i));
        }

        public final ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList e = g01.e(context, am0.m);
            if (e == null || !e.isStateful()) {
                iArr[0] = g01.b;
                iArr2[0] = g01.b(context, am0.m);
                iArr[1] = g01.f;
                iArr2[1] = g01.c(context, am0.j);
                iArr[2] = g01.i;
                iArr2[2] = g01.c(context, am0.m);
            } else {
                int[] iArr3 = g01.b;
                iArr[0] = iArr3;
                iArr2[0] = e.getColorForState(iArr3, 0);
                iArr[1] = g01.f;
                iArr2[1] = g01.c(context, am0.j);
                iArr[2] = g01.i;
                iArr2[2] = e.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        public final LayerDrawable l(ep0 ep0Var, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable i2 = ep0Var.i(context, jm0.F);
            Drawable i3 = ep0Var.i(context, jm0.G);
            if ((i2 instanceof BitmapDrawable) && i2.getIntrinsicWidth() == dimensionPixelSize && i2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) i2;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                i2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                i2.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((i3 instanceof BitmapDrawable) && i3.getIntrinsicWidth() == dimensionPixelSize && i3.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) i3;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                i3.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                i3.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        public final void m(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable mutate = drawable.mutate();
            if (mode == null) {
                mode = y2.b;
            }
            mutate.setColorFilter(y2.d(i, mode));
        }
    }

    public static synchronized y2 b() {
        y2 y2Var;
        synchronized (y2.class) {
            try {
                if (c == null) {
                    f();
                }
                y2Var = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return y2Var;
    }

    public static synchronized PorterDuffColorFilter d(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter k;
        synchronized (y2.class) {
            k = ep0.k(i, mode);
        }
        return k;
    }

    public static synchronized void f() {
        synchronized (y2.class) {
            if (c == null) {
                y2 y2Var = new y2();
                c = y2Var;
                y2Var.a = ep0.g();
                c.a.s(new a());
            }
        }
    }

    public static void g(Drawable drawable, w01 w01Var, int[] iArr) {
        ep0.u(drawable, w01Var, iArr);
    }

    public synchronized Drawable c(Context context, int i) {
        return this.a.i(context, i);
    }

    public synchronized ColorStateList e(Context context, int i) {
        return this.a.l(context, i);
    }
}
