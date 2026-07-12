package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class s1 {
    public static final go0 a;
    public static go0.b b;

    static {
        go0 w = go0.w("android.app.ActivityTaskManager");
        a = w;
        b = w.e("IActivityTaskManagerSingleton");
    }
}
