package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.PackageParser;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.view.menu.y81;

/* loaded from: classes.dex */
public abstract class m61 {

    public class a implements ag0 {
        public final /* synthetic */ c a;
        public final /* synthetic */ d b;

        public a(c cVar, d dVar) {
            this.a = cVar;
            this.b = dVar;
        }

        @Override // androidx.appcompat.view.menu.ag0
        public y81 a(View view, y81 y81Var) {
            return this.a.a(view, y81Var, new d(this.b));
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            m51.h0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface c {
        y81 a(View view, y81 y81Var, d dVar);
    }

    public static class d {
        public int a;
        public int b;
        public int c;
        public int d;

        public d(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        public d(d dVar) {
            this.a = dVar.a;
            this.b = dVar.b;
            this.c = dVar.c;
            this.d = dVar.d;
        }
    }

    public static void b(View view, c cVar) {
        m51.y0(view, new a(cVar, new d(m51.C(view), view.getPaddingTop(), m51.B(view), view.getPaddingBottom())));
        j(view);
    }

    public static float c(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static Integer d(View view) {
        ColorStateList a2 = tm.a(view.getBackground());
        if (a2 != null) {
            return Integer.valueOf(a2.getDefaultColor());
        }
        return null;
    }

    public static InputMethodManager e(View view) {
        return (InputMethodManager) lg.j(view.getContext(), InputMethodManager.class);
    }

    public static float f(View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += m51.s((View) parent);
        }
        return f;
    }

    public static boolean g(View view) {
        return m51.x(view) == 1;
    }

    public static PorterDuff.Mode i(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void j(View view) {
        if (m51.N(view)) {
            m51.h0(view);
        } else {
            view.addOnAttachStateChangeListener(new b());
        }
    }

    public static void k(final View view, final boolean z) {
        view.requestFocus();
        view.post(new Runnable() { // from class: androidx.appcompat.view.menu.l61
            @Override // java.lang.Runnable
            public final void run() {
                m61.l(view, z);
            }
        });
    }

    public static void l(View view, boolean z) {
        v91 G;
        if (!z || (G = m51.G(view)) == null) {
            e(view).showSoftInput(view, 1);
        } else {
            G.c(y81.m.c());
        }
    }
}
