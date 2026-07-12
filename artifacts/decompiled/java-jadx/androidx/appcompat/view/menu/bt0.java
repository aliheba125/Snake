package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class bt0 {
    public static final go0 a;
    public static go0.b b;
    public static go0.e c;

    static {
        go0 w = go0.w("android.os.ServiceManager");
        a = w;
        b = w.e("sCache");
        c = w.z("getService", String.class);
    }
}
