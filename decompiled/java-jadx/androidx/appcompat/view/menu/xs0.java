package androidx.appcompat.view.menu;

import android.app.Application;
import android.content.Context;
import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class xs0 {
    public static final go0 a;
    public static go0.d b;

    static {
        go0 w = go0.w("android.app.Service");
        a = w;
        b = w.u("attach", Context.class, go0.v("android.app.ActivityThread"), String.class, IBinder.class, Application.class, Object.class);
    }
}
