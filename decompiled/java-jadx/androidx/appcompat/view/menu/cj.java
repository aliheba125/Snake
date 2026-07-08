package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class cj {
    public static final go0 a;
    public static go0.e b;

    static {
        go0 w = go0.w("android.ddm.DdmHandleAppName");
        a = w;
        b = w.z("setAppName", String.class, Integer.TYPE);
    }
}
