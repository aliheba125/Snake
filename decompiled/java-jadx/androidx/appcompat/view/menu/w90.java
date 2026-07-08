package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class w90 {
    public static final go0 a;
    public static go0.d b;

    static {
        go0 w = go0.w("android.location.LocationManager$GpsStatusListenerTransport");
        a = w;
        b = w.u("onNmeaReceived", Long.TYPE, String.class);
    }
}
