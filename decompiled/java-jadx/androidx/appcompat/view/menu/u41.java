package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class u41 {
    public static final go0 a;
    public static go0.e b;
    public static go0.d c;

    static {
        go0 w = go0.w("dalvik.system.VMRuntime");
        a = w;
        b = w.z("getRuntime", new Class[0]);
        c = w.u("setTargetSdkVersion", Integer.TYPE);
    }
}
