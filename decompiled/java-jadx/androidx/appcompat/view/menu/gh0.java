package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.go0;
import java.io.File;

/* loaded from: classes.dex */
public abstract class gh0 {
    public static final go0 a;
    public static go0.a b;
    public static go0.d c;
    public static go0.d d;

    static {
        go0 w = go0.w("android.content.pm.PackageParser");
        a = w;
        b = w.c(new Class[0]);
        Class cls = Integer.TYPE;
        c = w.u("collectCertificates", PackageParser.Package.class, cls);
        d = w.u("parsePackage", File.class, cls);
    }
}
