package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class km {
    public static final go0 a;
    public static go0.b b;
    public static go0.e c;

    static {
        go0 w = go0.w("android.hardware.display.DisplayManagerGlobal");
        a = w;
        b = w.e("mDm");
        c = w.z("getInstance", new Class[0]);
    }
}
