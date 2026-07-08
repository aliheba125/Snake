package androidx.appcompat.view.menu;

import android.util.DisplayMetrics;
import androidx.appcompat.view.menu.go0;
import java.io.File;

/* loaded from: classes.dex */
public abstract class ch0 {
    public static final go0 a;
    public static go0.d b;
    public static go0.d c;

    public static class a {
        public static final go0 a;
        public static go0.b b;

        static {
            go0 w = go0.w("android.content.pm.PackageParser$SigningDetails");
            a = w;
            b = w.e("signatures");
        }
    }

    static {
        go0 w = go0.w("android.content.pm.PackageParser");
        a = w;
        Class cls = Integer.TYPE;
        b = w.u("collectCertificates", go0.v("android.content.pm.PackageParser$Package"), cls);
        c = w.u("parsePackage", File.class, String.class, DisplayMetrics.class, cls);
    }
}
