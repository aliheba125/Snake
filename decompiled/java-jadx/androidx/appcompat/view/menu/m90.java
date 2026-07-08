package androidx.appcompat.view.menu;

import android.app.Instrumentation;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class m90 {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;
    public static go0.b d;
    public static go0.b e;
    public static go0.b f;
    public static go0.b g;
    public static go0.d h;
    public static go0.d i;

    public static class a {
        public static final go0 a;
        public static go0.b b;

        /* renamed from: androidx.appcompat.view.menu.m90$a$a, reason: collision with other inner class name */
        public static class C0022a {
            public static final go0 a;
            public static go0.b b;

            static {
                go0 w = go0.w("android.app.LoadedApk$ReceiverDispatcher$InnerReceiver");
                a = w;
                b = w.e("mDispatcher");
            }
        }

        static {
            go0 w = go0.w("android.app.LoadedApk$ReceiverDispatcher");
            a = w;
            b = w.e("mIIntentReceiver");
        }
    }

    public static class b {
        public static final go0 a;
        public static go0.b b;

        public static class a {
            public static final go0 a;
            public static go0.b b;

            static {
                go0 w = go0.w("android.app.LoadedApk$ServiceDispatcher$InnerConnection");
                a = w;
                b = w.e("mDispatcher");
            }
        }

        static {
            go0 w = go0.w("android.app.LoadedApk$ServiceDispatcher");
            a = w;
            b = w.e("mConnection");
        }
    }

    static {
        go0 w = go0.w("android.app.LoadedApk");
        a = w;
        b = w.e("mClassLoader");
        c = w.e("mDataDirFile");
        d = w.e("mDeviceProtectedDataDirFile");
        e = w.e("mCredentialProtectedDataDirFile");
        f = w.e("mApplicationInfo");
        g = w.e("mSecurityViolation");
        h = w.u("getClassLoader", new Class[0]);
        i = w.u("makeApplication", Boolean.TYPE, Instrumentation.class);
    }
}
