package androidx.appcompat.view.menu;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: classes.dex */
public final class ev1 extends ContentObserver {
    public ev1(av1 av1Var, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        ov1.m();
    }
}
