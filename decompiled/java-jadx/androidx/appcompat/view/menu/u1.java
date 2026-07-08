package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.go0;
import java.util.List;

/* loaded from: classes.dex */
public abstract class u1 {
    public static final go0 a;
    public static go0.d b;
    public static go0.d c;
    public static go0.d d;

    static {
        go0 w = go0.w("android.app.ActivityThread");
        a = w;
        b = w.u("handleNewIntent", IBinder.class, List.class, Boolean.TYPE);
        c = w.u("handleNewIntent", IBinder.class, List.class);
        d = w.u("handleNewIntent", go0.v("android.app.ActivityThread$ActivityClientRecord"), List.class);
    }
}
