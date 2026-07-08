package androidx.appcompat.view.menu;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class qz {
    public static final go0 a;
    public static go0.d b;
    public static go0.d c;
    public static go0.d d;

    public static class a {
        public static final go0 a;
        public static go0.b b;
        public static go0.b c;

        static {
            go0 w = go0.w("android.app.IActivityManager$ContentProviderHolder");
            a = w;
            b = w.e("info");
            c = w.e("provider");
        }
    }

    static {
        go0 w = go0.w("android.app.IActivityManager");
        a = w;
        b = w.u("getTaskForActivity", IBinder.class, Boolean.TYPE);
        Class cls = Integer.TYPE;
        c = w.u("setRequestedOrientation", IBinder.class, cls);
        d = w.u("startActivity", go0.f("android.app.IApplicationThread"), String.class, Intent.class, String.class, IBinder.class, String.class, cls, cls, go0.f("android.app.ProfilerInfo"), Bundle.class);
    }
}
