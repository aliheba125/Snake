package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class gx0 {
    public static final go0 a;
    public static go0.b b;
    public static go0.b c;
    public static go0.b d;
    public static go0.e e;

    static {
        go0 w = go0.w("android.os.StrictMode");
        a = w;
        b = w.e("DETECT_VM_FILE_URI_EXPOSURE");
        c = w.e("PENALTY_DEATH_ON_FILE_URI_EXPOSURE");
        d = w.e("sVmPolicyMask");
        e = w.z("disableDeathOnFileUriExposure", new Class[0]);
    }
}
