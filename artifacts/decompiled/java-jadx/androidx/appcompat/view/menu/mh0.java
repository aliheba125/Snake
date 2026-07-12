package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;
import java.util.List;

/* loaded from: classes.dex */
public abstract class mh0 {
    public static final go0 a;
    public static go0.a b;
    public static go0.a c;
    public static go0.d d;
    public static go0.d e;
    public static go0.d f;

    static {
        go0 w = go0.w("android.content.pm.ParceledListSlice");
        a = w;
        b = w.c(new Class[0]);
        c = w.c(List.class);
        d = w.u("append", Object.class);
        e = w.u("getList", new Class[0]);
        f = w.u("setLastSlice", Boolean.TYPE);
    }
}
