package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class l1 {
    public static final go0 a;
    public static go0.b b;
    public static go0.e c;

    static {
        go0 w = go0.w("android.app.ActivityManagerNative");
        a = w;
        b = w.e("gDefault");
        c = w.z("getDefault", new Class[0]);
    }
}
