package androidx.appcompat.view.menu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.appcompat.view.menu.y81;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class l81 {
    public e a;

    public static final class a {
        public final h50 a;
        public final h50 b;

        public a(h50 h50Var, h50 h50Var2) {
            this.a = h50Var;
            this.b = h50Var2;
        }

        public static a d(WindowInsetsAnimation.Bounds bounds) {
            return new a(bounds);
        }

        public h50 a() {
            return this.a;
        }

        public h50 b() {
            return this.b;
        }

        public WindowInsetsAnimation.Bounds c() {
            return d.e(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.a + " upper=" + this.b + "}";
        }

        public a(WindowInsetsAnimation.Bounds bounds) {
            this.a = d.g(bounds);
            this.b = d.f(bounds);
        }
    }

    public static abstract class b {
        public WindowInsets a;
        public final int b;

        public b(int i) {
            this.b = i;
        }

        public final int a() {
            return this.b;
        }

        public abstract void b(l81 l81Var);

        public abstract void c(l81 l81Var);

        public abstract y81 d(y81 y81Var, List list);

        public abstract a e(l81 l81Var, a aVar);
    }

    public static class c extends e {
        public static final Interpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
        public static final Interpolator f = new vq();
        public static final Interpolator g = new DecelerateInterpolator();

        public static class a implements View.OnApplyWindowInsetsListener {
            public final b a;
            public y81 b;

            /* renamed from: androidx.appcompat.view.menu.l81$c$a$a, reason: collision with other inner class name */
            public class C0018a implements ValueAnimator.AnimatorUpdateListener {
                public final /* synthetic */ l81 a;
                public final /* synthetic */ y81 b;
                public final /* synthetic */ y81 c;
                public final /* synthetic */ int d;
                public final /* synthetic */ View e;

                public C0018a(l81 l81Var, y81 y81Var, y81 y81Var2, int i, View view) {
                    this.a = l81Var;
                    this.b = y81Var;
                    this.c = y81Var2;
                    this.d = i;
                    this.e = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.a.e(valueAnimator.getAnimatedFraction());
                    c.k(this.e, c.o(this.b, this.c, this.a.b(), this.d), Collections.singletonList(this.a));
                }
            }

            public class b extends AnimatorListenerAdapter {
                public final /* synthetic */ l81 a;
                public final /* synthetic */ View b;

                public b(l81 l81Var, View view) {
                    this.a = l81Var;
                    this.b = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.a.e(1.0f);
                    c.i(this.b, this.a);
                }
            }

            /* renamed from: androidx.appcompat.view.menu.l81$c$a$c, reason: collision with other inner class name */
            public class RunnableC0019c implements Runnable {
                public final /* synthetic */ View m;
                public final /* synthetic */ l81 n;
                public final /* synthetic */ a o;
                public final /* synthetic */ ValueAnimator p;

                public RunnableC0019c(View view, l81 l81Var, a aVar, ValueAnimator valueAnimator) {
                    this.m = view;
                    this.n = l81Var;
                    this.o = aVar;
                    this.p = valueAnimator;
                }

                @Override // java.lang.Runnable
                public void run() {
                    c.l(this.m, this.n, this.o);
                    this.p.start();
                }
            }

            public a(View view, b bVar) {
                this.a = bVar;
                y81 D = m51.D(view);
                this.b = D != null ? new y81.b(D).a() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                int e;
                if (!view.isLaidOut()) {
                    this.b = y81.u(windowInsets, view);
                    return c.m(view, windowInsets);
                }
                y81 u = y81.u(windowInsets, view);
                if (this.b == null) {
                    this.b = m51.D(view);
                }
                if (this.b == null) {
                    this.b = u;
                    return c.m(view, windowInsets);
                }
                b n = c.n(view);
                if ((n == null || !Objects.equals(n.a, windowInsets)) && (e = c.e(u, this.b)) != 0) {
                    y81 y81Var = this.b;
                    l81 l81Var = new l81(e, c.g(e, u, y81Var), 160L);
                    l81Var.e(0.0f);
                    ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(l81Var.a());
                    a f = c.f(u, y81Var, e);
                    c.j(view, l81Var, windowInsets, false);
                    duration.addUpdateListener(new C0018a(l81Var, u, y81Var, e, view));
                    duration.addListener(new b(l81Var, view));
                    og0.a(view, new RunnableC0019c(view, l81Var, f, duration));
                    this.b = u;
                    return c.m(view, windowInsets);
                }
                return c.m(view, windowInsets);
            }
        }

        public c(int i, Interpolator interpolator, long j) {
            super(i, interpolator, j);
        }

        public static int e(y81 y81Var, y81 y81Var2) {
            int i = 0;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if (!y81Var.f(i2).equals(y81Var2.f(i2))) {
                    i |= i2;
                }
            }
            return i;
        }

        public static a f(y81 y81Var, y81 y81Var2, int i) {
            h50 f2 = y81Var.f(i);
            h50 f3 = y81Var2.f(i);
            return new a(h50.b(Math.min(f2.a, f3.a), Math.min(f2.b, f3.b), Math.min(f2.c, f3.c), Math.min(f2.d, f3.d)), h50.b(Math.max(f2.a, f3.a), Math.max(f2.b, f3.b), Math.max(f2.c, f3.c), Math.max(f2.d, f3.d)));
        }

        public static Interpolator g(int i, y81 y81Var, y81 y81Var2) {
            return (i & 8) != 0 ? y81Var.f(y81.m.c()).d > y81Var2.f(y81.m.c()).d ? e : f : g;
        }

        public static View.OnApplyWindowInsetsListener h(View view, b bVar) {
            return new a(view, bVar);
        }

        public static void i(View view, l81 l81Var) {
            b n = n(view);
            if (n != null) {
                n.b(l81Var);
                if (n.a() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    i(viewGroup.getChildAt(i), l81Var);
                }
            }
        }

        public static void j(View view, l81 l81Var, WindowInsets windowInsets, boolean z) {
            b n = n(view);
            if (n != null) {
                n.a = windowInsets;
                if (!z) {
                    n.c(l81Var);
                    z = n.a() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    j(viewGroup.getChildAt(i), l81Var, windowInsets, z);
                }
            }
        }

        public static void k(View view, y81 y81Var, List list) {
            b n = n(view);
            if (n != null) {
                y81Var = n.d(y81Var, list);
                if (n.a() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    k(viewGroup.getChildAt(i), y81Var, list);
                }
            }
        }

        public static void l(View view, l81 l81Var, a aVar) {
            b n = n(view);
            if (n != null) {
                n.e(l81Var, aVar);
                if (n.a() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    l(viewGroup.getChildAt(i), l81Var, aVar);
                }
            }
        }

        public static WindowInsets m(View view, WindowInsets windowInsets) {
            return view.getTag(mm0.L) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        public static b n(View view) {
            Object tag = view.getTag(mm0.R);
            if (tag instanceof a) {
                return ((a) tag).a;
            }
            return null;
        }

        public static y81 o(y81 y81Var, y81 y81Var2, float f2, int i) {
            y81.b bVar = new y81.b(y81Var);
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) == 0) {
                    bVar.b(i2, y81Var.f(i2));
                } else {
                    h50 f3 = y81Var.f(i2);
                    h50 f4 = y81Var2.f(i2);
                    float f5 = 1.0f - f2;
                    bVar.b(i2, y81.m(f3, (int) (((f3.a - f4.a) * f5) + 0.5d), (int) (((f3.b - f4.b) * f5) + 0.5d), (int) (((f3.c - f4.c) * f5) + 0.5d), (int) (((f3.d - f4.d) * f5) + 0.5d)));
                }
            }
            return bVar.a();
        }

        public static void p(View view, b bVar) {
            Object tag = view.getTag(mm0.L);
            if (bVar == null) {
                view.setTag(mm0.R, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener h = h(view, bVar);
            view.setTag(mm0.R, h);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(h);
            }
        }
    }

    public static class d extends e {
        public final WindowInsetsAnimation e;

        public static class a extends WindowInsetsAnimation$Callback {
            public final b a;
            public List b;
            public ArrayList c;
            public final HashMap d;

            public a(b bVar) {
                super(bVar.a());
                this.d = new HashMap();
                this.a = bVar;
            }

            public final l81 a(WindowInsetsAnimation windowInsetsAnimation) {
                l81 l81Var = (l81) this.d.get(windowInsetsAnimation);
                if (l81Var != null) {
                    return l81Var;
                }
                l81 f = l81.f(windowInsetsAnimation);
                this.d.put(windowInsetsAnimation, f);
                return f;
            }

            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.a.b(a(windowInsetsAnimation));
                this.d.remove(windowInsetsAnimation);
            }

            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.a.c(a(windowInsetsAnimation));
            }

            public WindowInsets onProgress(WindowInsets windowInsets, List list) {
                float fraction;
                ArrayList arrayList = this.c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.c = arrayList2;
                    this.b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation a = w81.a(list.get(size));
                    l81 a2 = a(a);
                    fraction = a.getFraction();
                    a2.e(fraction);
                    this.c.add(a2);
                }
                return this.a.d(y81.t(windowInsets), this.b).s();
            }

            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.a.e(a(windowInsetsAnimation), a.d(bounds)).c();
            }
        }

        public d(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.e = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds e(a aVar) {
            t81.a();
            return s81.a(aVar.a().e(), aVar.b().e());
        }

        public static h50 f(WindowInsetsAnimation.Bounds bounds) {
            Insets upperBound;
            upperBound = bounds.getUpperBound();
            return h50.d(upperBound);
        }

        public static h50 g(WindowInsetsAnimation.Bounds bounds) {
            Insets lowerBound;
            lowerBound = bounds.getLowerBound();
            return h50.d(lowerBound);
        }

        public static void h(View view, b bVar) {
            view.setWindowInsetsAnimationCallback(bVar != null ? new a(bVar) : null);
        }

        @Override // androidx.appcompat.view.menu.l81.e
        public long a() {
            long durationMillis;
            durationMillis = this.e.getDurationMillis();
            return durationMillis;
        }

        @Override // androidx.appcompat.view.menu.l81.e
        public float b() {
            float interpolatedFraction;
            interpolatedFraction = this.e.getInterpolatedFraction();
            return interpolatedFraction;
        }

        @Override // androidx.appcompat.view.menu.l81.e
        public int c() {
            int typeMask;
            typeMask = this.e.getTypeMask();
            return typeMask;
        }

        @Override // androidx.appcompat.view.menu.l81.e
        public void d(float f) {
            this.e.setFraction(f);
        }

        public d(int i, Interpolator interpolator, long j) {
            this(r81.a(i, interpolator, j));
        }
    }

    public static class e {
        public final int a;
        public float b;
        public final Interpolator c;
        public final long d;

        public e(int i, Interpolator interpolator, long j) {
            this.a = i;
            this.c = interpolator;
            this.d = j;
        }

        public long a() {
            return this.d;
        }

        public float b() {
            Interpolator interpolator = this.c;
            return interpolator != null ? interpolator.getInterpolation(this.b) : this.b;
        }

        public int c() {
            return this.a;
        }

        public void d(float f) {
            this.b = f;
        }
    }

    public l81(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new d(i, interpolator, j);
        } else {
            this.a = new c(i, interpolator, j);
        }
    }

    public static void d(View view, b bVar) {
        if (Build.VERSION.SDK_INT >= 30) {
            d.h(view, bVar);
        } else {
            c.p(view, bVar);
        }
    }

    public static l81 f(WindowInsetsAnimation windowInsetsAnimation) {
        return new l81(windowInsetsAnimation);
    }

    public long a() {
        return this.a.a();
    }

    public float b() {
        return this.a.b();
    }

    public int c() {
        return this.a.c();
    }

    public void e(float f) {
        this.a.d(f);
    }

    public l81(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new d(windowInsetsAnimation);
        }
    }
}
