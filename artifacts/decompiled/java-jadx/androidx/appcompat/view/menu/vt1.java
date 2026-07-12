package androidx.appcompat.view.menu;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class vt1 extends ContentObserver {
    public vt1(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = ot1.e;
        atomicBoolean.set(true);
    }
}
