package androidx.appcompat.view.menu;

import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public final class kf1 extends er1 {
    public final /* synthetic */ xp0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kf1(xp0 xp0Var, Looper looper) {
        super(looper);
        this.b = xp0Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        xp0.e(this.b, message);
    }
}
