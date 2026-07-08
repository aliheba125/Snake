package androidx.appcompat.view.menu;

import android.content.Intent;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class c1 {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;
    public static go0.b d;
    public static go0.b e;
    public static go0.b f;
    public static go0.b g;
    public static go0.d h;

    static {
        go0 w = go0.w("android.app.Activity");
        a = w;
        b = w.e("mActivityInfo");
        c = w.e("mFinished");
        d = w.e("mParent");
        e = w.e("mResultCode");
        f = w.e("mResultData");
        g = w.e("mToken");
        h = w.u("onNewIntent", Intent.class);
    }
}
