package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class op0 {
    public static final Object a(Throwable th) {
        z50.e(th, "exception");
        return new np0.b(th);
    }

    public static final void b(Object obj) {
        if (obj instanceof np0.b) {
            throw ((np0.b) obj).m;
        }
    }
}
