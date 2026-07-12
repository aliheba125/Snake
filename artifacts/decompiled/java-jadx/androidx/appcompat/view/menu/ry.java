package androidx.appcompat.view.menu;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class ry {
    public static final qy a;
    private static volatile Choreographer choreographer;

    static {
        Object a2;
        try {
            np0.a aVar = np0.m;
            a2 = np0.a(new py(a(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            np0.a aVar2 = np0.m;
            a2 = np0.a(op0.a(th));
        }
        a = (qy) (np0.c(a2) ? null : a2);
    }

    public static final Handler a(Looper looper, boolean z) {
        if (!z) {
            return new Handler(looper);
        }
        Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        z50.c(invoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) invoke;
    }
}
