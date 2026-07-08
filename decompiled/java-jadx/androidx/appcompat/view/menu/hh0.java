package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class hh0 {
    public static final go0 a;
    public static go0.e b;

    static {
        go0 w = go0.w("android.content.pm.PackageParser");
        a = w;
        b = w.z("collectCertificates", PackageParser.Package.class, Integer.TYPE);
    }
}
