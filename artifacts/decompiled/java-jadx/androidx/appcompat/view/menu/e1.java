package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class e1 {
    public static final go0 a;
    public static go0.b b;
    public static go0.e c;
    public static go0.e d;

    public static class a {
        public static final go0 a;
        public static go0.b b;

        static {
            go0 w = go0.w("android.app.ActivityClient$ActivityClientControllerSingleton");
            a = w;
            b = w.e("mKnownInstance");
        }
    }

    static {
        go0 w = go0.w("android.app.ActivityClient");
        a = w;
        b = w.e("INTERFACE_SINGLETON");
        c = w.z("getInstance", new Class[0]);
        d = w.z("getActivityClientController", new Class[0]);
    }
}
