package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class m1 {
    public static final go0 a;
    public static go0.b b;

    static {
        go0 w = go0.w("android.app.ActivityManager");
        a = w;
        b = w.e("IActivityManagerSingleton");
    }
}
