package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public abstract class ta0 {
    public static final boolean a = false;

    public static final rd0 a(Throwable th, String str) {
        if (a) {
            return new rd0(th, str);
        }
        if (th != null) {
            throw th;
        }
        d();
        throw new d80();
    }

    public static /* synthetic */ rd0 b(Throwable th, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final boolean c(qa0 qa0Var) {
        return qa0Var.F() instanceof rd0;
    }

    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final qa0 e(ra0 ra0Var, List list) {
        try {
            return ra0Var.b(list);
        } catch (Throwable th) {
            return a(th, ra0Var.a());
        }
    }
}
