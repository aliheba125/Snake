package androidx.appcompat.view.menu;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public abstract /* synthetic */ class y60 {
    public static final kd a(q60 q60Var) {
        return new t60(q60Var);
    }

    public static /* synthetic */ kd b(q60 q60Var, int i, Object obj) {
        if ((i & 1) != 0) {
            q60Var = null;
        }
        return x60.a(q60Var);
    }

    public static final void c(kh khVar, CancellationException cancellationException) {
        q60 q60Var = (q60) khVar.d(q60.d);
        if (q60Var != null) {
            q60Var.e(cancellationException);
        }
    }

    public static final void d(q60 q60Var) {
        if (!q60Var.c()) {
            throw q60Var.w();
        }
    }
}
