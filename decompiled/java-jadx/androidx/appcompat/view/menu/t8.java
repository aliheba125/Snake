package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class t8 {
    public static final go0 a;
    public static go0.d b;
    public static go0.d c;

    public static class a {
        public static final go0 a;
        public static go0.a b;
        public static go0.b c;
        public static go0.b d;
        public static go0.b e;
        public static go0.b f;
        public static go0.b g;
        public static go0.b h;
        public static go0.b i;
        public static go0.b j;
        public static go0.b k;

        static {
            go0 w = go0.w("android.content.BroadcastReceiver$PendingResult");
            a = w;
            Class cls = Integer.TYPE;
            Class cls2 = Boolean.TYPE;
            b = w.c(cls, String.class, Bundle.class, cls, cls2, cls2, IBinder.class, cls);
            c = w.e("mAbortBroadcast");
            d = w.e("mFinished");
            e = w.e("mInitialStickyHint");
            f = w.e("mOrderedHint");
            g = w.e("mResultData");
            h = w.e("mResultExtras");
            i = w.e("mSendingUser");
            j = w.e("mToken");
            k = w.e("mType");
        }
    }

    public static class b {
        public static final go0 a;
        public static go0.a b;
        public static go0.b c;
        public static go0.b d;
        public static go0.b e;
        public static go0.b f;
        public static go0.b g;
        public static go0.b h;
        public static go0.b i;
        public static go0.b j;
        public static go0.b k;
        public static go0.b l;

        static {
            go0 w = go0.w("android.content.BroadcastReceiver$PendingResult");
            a = w;
            Class cls = Integer.TYPE;
            Class cls2 = Boolean.TYPE;
            b = w.c(cls, String.class, Bundle.class, cls, cls2, cls2, IBinder.class, cls, cls);
            c = w.e("mAbortBroadcast");
            d = w.e("mFinished");
            e = w.e("mFlags");
            f = w.e("mInitialStickyHint");
            g = w.e("mOrderedHint");
            h = w.e("mResultData");
            i = w.e("mResultExtras");
            j = w.e("mSendingUser");
            k = w.e("mToken");
            l = w.e("mType");
        }
    }

    static {
        go0 w = go0.w("android.content.BroadcastReceiver");
        a = w;
        b = w.u("getPendingResult", new Class[0]);
        c = w.u("setPendingResult", go0.f("android.content.BroadcastReceiver$PendingResult"));
    }
}
