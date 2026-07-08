package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class z3 {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;
    public static go0.b d;

    static {
        go0 w = go0.w("android.content.pm.ApplicationInfo");
        a = w;
        b = w.e("primaryCpuAbi");
        c = w.e("scanPublicSourceDir");
        d = w.e("scanSourceDir");
    }
}
