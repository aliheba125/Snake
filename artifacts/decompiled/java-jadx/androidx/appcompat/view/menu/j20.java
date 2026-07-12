package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class j20 {
    public static final go0 a = go0.w("vivo.app.physicalfling.IPhysicalFlingManager");

    public static class a {
        public static final go0 a;
        public static go0.e b;

        static {
            go0 w = go0.w("vivo.app.physicalfling.IPhysicalFlingManager$Stub");
            a = w;
            b = w.z("asInterface", IBinder.class);
        }
    }
}
