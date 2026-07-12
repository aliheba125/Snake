package androidx.appcompat.view.menu;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class k5 implements View.OnTouchListener {
    public static final int r = ViewConfiguration.getTapTimeout();
    public final View c;
    public Runnable d;
    public int g;
    public int h;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public final a a = new a();
    public final Interpolator b = new AccelerateInterpolator();
    public float[] e = {0.0f, 0.0f};
    public float[] f = {Float.MAX_VALUE, Float.MAX_VALUE};
    public float[] i = {0.0f, 0.0f};
    public float[] j = {0.0f, 0.0f};
    public float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    public static class a {
        public int a;
        public int b;
        public float c;
        public float d;
        public float j;
        public int k;
        public long e = Long.MIN_VALUE;
        public long i = -1;
        public long f = 0;
        public int g = 0;
        public int h = 0;

        public void a() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float g = g(e(currentAnimationTimeMillis));
            long j = currentAnimationTimeMillis - this.f;
            this.f = currentAnimationTimeMillis;
            float f = j * g;
            this.g = (int) (this.c * f);
            this.h = (int) (f * this.d);
        }

        public int b() {
            return this.g;
        }

        public int c() {
            return this.h;
        }

        public int d() {
            float f = this.c;
            return (int) (f / Math.abs(f));
        }

        public final float e(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return k5.e((j - r0) / this.a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.j;
            return (1.0f - f) + (f * k5.e((j - j2) / this.k, 0.0f, 1.0f));
        }

        public int f() {
            float f = this.d;
            return (int) (f / Math.abs(f));
        }

        public final float g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        public boolean h() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public void i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = k5.f((int) (currentAnimationTimeMillis - this.e), 0, this.b);
            this.j = e(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public void j(int i) {
            this.b = i;
        }

        public void k(int i) {
            this.a = i;
        }

        public void l(float f, float f2) {
            this.c = f;
            this.d = f2;
        }

        public void m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.e = currentAnimationTimeMillis;
            this.i = -1L;
            this.f = currentAnimationTimeMillis;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k5 k5Var = k5.this;
            if (k5Var.o) {
                if (k5Var.m) {
                    k5Var.m = false;
                    k5Var.a.m();
                }
                a aVar = k5.this.a;
                if (aVar.h() || !k5.this.u()) {
                    k5.this.o = false;
                    return;
                }
                k5 k5Var2 = k5.this;
                if (k5Var2.n) {
                    k5Var2.n = false;
                    k5Var2.c();
                }
                aVar.a();
                k5.this.j(aVar.b(), aVar.c());
                m51.c0(k5.this.c, this);
            }
        }
    }

    public k5(View view) {
        this.c = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = (int) ((1575.0f * f) + 0.5f);
        o(f2, f2);
        float f3 = (int) ((f * 315.0f) + 0.5f);
        p(f3, f3);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(r);
        r(500);
        q(500);
    }

    public static float e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public static int f(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public abstract boolean a(int i);

    public abstract boolean b(int i);

    public void c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.c.onTouchEvent(obtain);
        obtain.recycle();
    }

    public final float d(int i, float f, float f2, float f3) {
        float h = h(this.e[i], f2, this.f[i], f);
        if (h == 0.0f) {
            return 0.0f;
        }
        float f4 = this.i[i];
        float f5 = this.j[i];
        float f6 = this.k[i];
        float f7 = f4 * f3;
        return h > 0.0f ? e(h * f7, f5, f6) : -e((-h) * f7, f5, f6);
    }

    public final float g(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.g;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.o && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    public final float h(float f, float f2, float f3, float f4) {
        float interpolation;
        float e = e(f * f2, 0.0f, f3);
        float g = g(f2 - f4, e) - g(f4, e);
        if (g < 0.0f) {
            interpolation = -this.b.getInterpolation(-g);
        } else {
            if (g <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.b.getInterpolation(g);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    public final void i() {
        if (this.m) {
            this.o = false;
        } else {
            this.a.i();
        }
    }

    public abstract void j(int i, int i2);

    public k5 k(int i) {
        this.h = i;
        return this;
    }

    public k5 l(int i) {
        this.g = i;
        return this;
    }

    public k5 m(boolean z) {
        if (this.p && !z) {
            i();
        }
        this.p = z;
        return this;
    }

    public k5 n(float f, float f2) {
        float[] fArr = this.f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    public k5 o(float f, float f2) {
        float[] fArr = this.k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L20;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                }
            }
            i();
            return this.q && this.o;
        }
        this.n = true;
        this.l = false;
        this.a.l(d(0, motionEvent.getX(), view.getWidth(), this.c.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.c.getHeight()));
        if (!this.o && u()) {
            v();
        }
        if (this.q) {
            return false;
        }
    }

    public k5 p(float f, float f2) {
        float[] fArr = this.j;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public k5 q(int i) {
        this.a.j(i);
        return this;
    }

    public k5 r(int i) {
        this.a.k(i);
        return this;
    }

    public k5 s(float f, float f2) {
        float[] fArr = this.e;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    public k5 t(float f, float f2) {
        float[] fArr = this.i;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public boolean u() {
        a aVar = this.a;
        int f = aVar.f();
        int d = aVar.d();
        return (f != 0 && b(f)) || (d != 0 && a(d));
    }

    public final void v() {
        int i;
        if (this.d == null) {
            this.d = new b();
        }
        this.o = true;
        this.m = true;
        if (this.l || (i = this.h) <= 0) {
            this.d.run();
        } else {
            m51.d0(this.c, this.d, i);
        }
        this.l = true;
    }
}
