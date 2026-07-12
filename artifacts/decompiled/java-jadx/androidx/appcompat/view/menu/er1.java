package androidx.appcompat.view.menu;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public class er1 extends Handler {
    public final Looper a;

    public er1(Looper looper) {
        super(looper);
        this.a = Looper.getMainLooper();
    }

    public er1(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.a = Looper.getMainLooper();
    }
}
