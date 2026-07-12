package androidx.appcompat.view.menu;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public abstract /* synthetic */ class fb {
    public static final void a(vn0 vn0Var, Throwable th) {
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                r0 = np.a("Channel was consumed, consumer had failed", th);
            }
        }
        vn0Var.e(r0);
    }
}
