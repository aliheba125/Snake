package androidx.appcompat.view.menu;

import android.os.Binder;

/* loaded from: classes.dex */
public abstract /* synthetic */ class wu1 {
    public static Object a(uu1 uu1Var) {
        try {
            return uu1Var.a();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return uu1Var.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
