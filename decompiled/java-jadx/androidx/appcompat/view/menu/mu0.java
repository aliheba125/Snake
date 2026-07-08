package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class mu0 {
    public static final go0 a;
    public static go0.a b;

    static {
        go0 w = go0.w("android.content.pm.SigningInfo");
        a = w;
        b = w.c(PackageParser.SigningDetails.class);
    }
}
