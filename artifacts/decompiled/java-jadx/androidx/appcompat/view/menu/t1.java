package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.os.IBinder;
import androidx.appcompat.view.menu.go0;
import java.util.List;

/* loaded from: classes.dex */
public abstract class t1 {
    public static final go0 a;
    public static go0.d b;
    public static go0.b c;
    public static go0.b d;
    public static go0.b e;
    public static go0.b f;
    public static go0.b g;
    public static go0.b h;
    public static go0.b i;
    public static go0.b j;
    public static go0.e k;
    public static go0.d l;
    public static go0.d m;
    public static go0.d n;
    public static go0.d o;
    public static go0.d p;

    public static class a {
        public static final go0 a;
        public static go0.b b;
        public static go0.b c;
        public static go0.b d;
        public static go0.b e;
        public static go0.b f;
        public static go0.b g;

        static {
            go0 w = go0.w("android.app.ActivityThread$ActivityClientRecord");
            a = w;
            b = w.e("activity");
            c = w.e("activityInfo");
            d = w.e("intent");
            e = w.e("token");
            f = w.e("isTopResumedActivity");
            g = w.e("packageInfo");
        }
    }

    public static class b {
        public static final go0 a;
        public static go0.b b;
        public static go0.b c;
        public static go0.b d;
        public static go0.b e;
        public static go0.b f;

        static {
            go0 w = go0.w("android.app.ActivityThread$AppBindData");
            a = w;
            b = w.e("appInfo");
            c = w.e("info");
            d = w.e("instrumentationName");
            e = w.e("processName");
            f = w.e("providers");
        }
    }

    public static class c {
        public static final go0 a;
        public static go0.b b;

        static {
            go0 w = go0.w("android.app.ActivityThread$CreateServiceData");
            a = w;
            b = w.e("info");
        }
    }

    public static class d {
        public static final go0 a;
        public static go0.b b;
        public static go0.b c;
        public static go0.b d;

        static {
            go0 w = go0.w("android.app.ActivityThread$H");
            a = w;
            b = w.e("CREATE_SERVICE");
            c = w.e("EXECUTE_TRANSACTION");
            d = w.e("LAUNCH_ACTIVITY");
        }
    }

    public static class e {
        public static final go0 a;
        public static go0.b b;
        public static go0.b c;

        static {
            go0 w = go0.w("android.app.ActivityThread$ProviderClientRecord");
            a = w;
            b = w.e("mNames");
            c = w.e("mProvider");
        }
    }

    static {
        go0 w = go0.w("android.app.ActivityThread");
        a = w;
        b = w.u("scheduleTransaction", go0.v("android.app.servertransaction.ClientTransaction"));
        c = w.e("sPackageManager");
        d = w.e("sPermissionManager");
        e = w.e("mActivities");
        f = w.e("mBoundApplication");
        g = w.e("mH");
        h = w.e("mInitialApplication");
        i = w.e("mInstrumentation");
        j = w.e("mProviderMap");
        k = w.z("currentActivityThread", new Class[0]);
        l = w.u("getApplicationThread", new Class[0]);
        m = w.u("getSystemContext", new Class[0]);
        n = w.u("getLaunchingActivity", IBinder.class);
        o = w.u("performNewIntents", IBinder.class, List.class);
        Class cls = Boolean.TYPE;
        p = w.u("installProvider", Context.class, go0.v("android.app.ContentProviderHolder"), ProviderInfo.class, cls, cls, cls);
    }
}
