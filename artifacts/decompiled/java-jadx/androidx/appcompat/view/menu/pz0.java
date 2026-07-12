package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class pz0 {
    public static final go0 a;
    public static go0.e b;
    public static go0.b c;
    public static go0.b d;
    public static go0.d e;

    static {
        go0 w = go0.w("android.telephony.TelephonyManager");
        a = w;
        b = w.z("getSubscriberInfoService", new Class[0]);
        c = w.e("sServiceHandleCacheEnabled");
        d = w.e("sIPhoneSubInfo");
        e = w.u("getSubscriberInfo", new Class[0]);
    }
}
