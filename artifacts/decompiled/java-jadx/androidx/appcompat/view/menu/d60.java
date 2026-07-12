package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class d60 extends e60 {
    public static int a(int i, int i2, int i3) {
        nj0.f(i2 <= i3, "min (%s) must be less than or equal to max (%s)", i2, i3);
        return Math.min(Math.max(i, i2), i3);
    }
}
