package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class tg {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;
    public static go0.b d;
    public static go0.d e;
    public static go0.d f;

    static {
        go0 w = go0.w("android.app.ContextImpl");
        a = w;
        b = w.e("mBasePackageName");
        c = w.e("mPackageInfo");
        d = w.e("mPackageManager");
        e = w.u("setOuterContext", Context.class);
        f = w.u("getAttributionSource", new Class[0]);
    }
}
