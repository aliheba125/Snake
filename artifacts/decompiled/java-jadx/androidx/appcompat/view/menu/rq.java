package androidx.appcompat.view.menu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class rq extends h71 {

    public class a extends t11 {
        public final /* synthetic */ View a;

        public a(View view) {
            this.a = view;
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            n61.g(this.a, 1.0f);
            n61.a(this.a);
            s11Var.S(this);
        }
    }

    public static class b extends AnimatorListenerAdapter {
        public final View a;
        public boolean b = false;

        public b(View view) {
            this.a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            n61.g(this.a, 1.0f);
            if (this.b) {
                this.a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (m51.K(this.a) && this.a.getLayerType() == 0) {
                this.b = true;
                this.a.setLayerType(2, null);
            }
        }
    }

    public rq(int i) {
        l0(i);
    }

    public static float n0(y11 y11Var, float f) {
        Float f2;
        return (y11Var == null || (f2 = (Float) y11Var.a.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    @Override // androidx.appcompat.view.menu.h71
    public Animator h0(ViewGroup viewGroup, View view, y11 y11Var, y11 y11Var2) {
        float n0 = n0(y11Var, 0.0f);
        return m0(view, n0 != 1.0f ? n0 : 0.0f, 1.0f);
    }

    @Override // androidx.appcompat.view.menu.h71, androidx.appcompat.view.menu.s11
    public void j(y11 y11Var) {
        super.j(y11Var);
        y11Var.a.put("android:fade:transitionAlpha", Float.valueOf(n61.c(y11Var.b)));
    }

    @Override // androidx.appcompat.view.menu.h71
    public Animator j0(ViewGroup viewGroup, View view, y11 y11Var, y11 y11Var2) {
        n61.e(view);
        return m0(view, n0(y11Var, 1.0f), 0.0f);
    }

    public final Animator m0(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        n61.g(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) n61.b, f2);
        ofFloat.addListener(new b(view));
        a(new a(view));
        return ofFloat;
    }

    public rq() {
    }
}
