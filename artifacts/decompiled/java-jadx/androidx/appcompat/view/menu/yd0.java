package androidx.appcompat.view.menu;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* loaded from: classes.dex */
public class yd0 {
    public long a;
    public long b;
    public TimeInterpolator c;
    public int d;
    public int e;

    public yd0(long j, long j2) {
        this.c = null;
        this.d = 0;
        this.e = 1;
        this.a = j;
        this.b = j2;
    }

    public static yd0 a(ValueAnimator valueAnimator) {
        yd0 yd0Var = new yd0(valueAnimator.getStartDelay(), valueAnimator.getDuration(), e(valueAnimator));
        yd0Var.d = valueAnimator.getRepeatCount();
        yd0Var.e = valueAnimator.getRepeatMode();
        return yd0Var;
    }

    public static TimeInterpolator e(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? j2.b : interpolator instanceof AccelerateInterpolator ? j2.c : interpolator instanceof DecelerateInterpolator ? j2.d : interpolator;
    }

    public long b() {
        return this.a;
    }

    public long c() {
        return this.b;
    }

    public TimeInterpolator d() {
        TimeInterpolator timeInterpolator = this.c;
        return timeInterpolator != null ? timeInterpolator : j2.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yd0)) {
            return false;
        }
        yd0 yd0Var = (yd0) obj;
        if (b() == yd0Var.b() && c() == yd0Var.c() && f() == yd0Var.f() && g() == yd0Var.g()) {
            return d().getClass().equals(yd0Var.d().getClass());
        }
        return false;
    }

    public int f() {
        return this.d;
    }

    public int g() {
        return this.e;
    }

    public int hashCode() {
        return (((((((((int) (b() ^ (b() >>> 32))) * 31) + ((int) (c() ^ (c() >>> 32)))) * 31) + d().getClass().hashCode()) * 31) + f()) * 31) + g();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + b() + " duration: " + c() + " interpolator: " + d().getClass() + " repeatCount: " + f() + " repeatMode: " + g() + "}\n";
    }

    public yd0(long j, long j2, TimeInterpolator timeInterpolator) {
        this.d = 0;
        this.e = 1;
        this.a = j;
        this.b = j2;
        this.c = timeInterpolator;
    }
}
