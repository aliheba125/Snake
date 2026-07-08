package androidx.appcompat.view.menu;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public final class wl1 extends Handler {
    public final Looper a;

    public wl1(Looper looper) {
        super(looper);
        this.a = Looper.getMainLooper();
    }
}
