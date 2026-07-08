package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class bc {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;
    public static go0.e d;
    public static go0.e e;
    public static go0.d f;
    public static go0.d g;
    public static go0.a h;
    public static go0.d i;

    static {
        go0 w = go0.w("android.app.servertransaction.ClientTransaction");
        a = w;
        b = w.e("mActivityCallbacks");
        c = w.e("mActivityToken");
        d = w.z("obtain", go0.v("android.app.IApplicationThread"), IBinder.class);
        e = w.z("obtain", go0.v("android.app.IApplicationThread"));
        f = w.u("addCallback", go0.v("android.app.servertransaction.ClientTransactionItem"));
        g = w.u("setLifecycleStateRequest", go0.v("android.app.servertransaction.ActivityLifecycleItem"));
        h = w.c(go0.v("android.app.IApplicationThread"));
        i = w.u("addTransactionItem", go0.v("android.app.servertransaction.ClientTransactionItem"));
    }
}
