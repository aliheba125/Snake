package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class u20 {
    public static final go0 a;
    public static go0.d b;

    static {
        go0 w = go0.w("android.app.IServiceConnection");
        a = w;
        b = w.u("connected", ComponentName.class, IBinder.class, Boolean.TYPE);
    }
}
