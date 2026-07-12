package androidx.appcompat.view.menu;

import android.content.Intent;
import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class sz {
    public static final go0 a;
    public static go0.d b;

    static {
        go0 w = go0.w("android.app.IActivityManager");
        a = w;
        Class cls = Integer.TYPE;
        b = w.u("finishActivity", IBinder.class, cls, Intent.class, cls);
    }
}
