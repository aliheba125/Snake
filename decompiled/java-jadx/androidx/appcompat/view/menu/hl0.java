package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class hl0 {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;

    static {
        go0 w = go0.w("android.location.provider.ProviderProperties");
        a = w;
        b = w.e("mHasNetworkRequirement");
        c = w.e("mHasCellRequirement");
    }
}
