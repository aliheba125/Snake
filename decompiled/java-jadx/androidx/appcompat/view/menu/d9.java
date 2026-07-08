package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class d9 {
    public static final go0 a;
    public static go0.d b;
    public static go0.d c;

    static {
        go0 w = go0.w("android.os.Bundle");
        a = w;
        b = w.u("getIBinder", String.class);
        c = w.u("putIBinder", String.class, IBinder.class);
    }
}
