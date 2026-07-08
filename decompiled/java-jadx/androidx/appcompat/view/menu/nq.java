package androidx.appcompat.view.menu;

import androidx.window.extensions.WindowExtensionsProvider;

/* loaded from: classes.dex */
public final class nq {
    public static final nq a = new nq();
    public static final String b = do0.b(nq.class).c();

    public final int a() {
        try {
            return WindowExtensionsProvider.getWindowExtensions().getVendorApiLevel();
        } catch (NoClassDefFoundError unused) {
            z8.a.a();
            e51 e51Var = e51.STRICT;
            return 0;
        } catch (UnsupportedOperationException unused2) {
            z8.a.a();
            e51 e51Var2 = e51.STRICT;
            return 0;
        }
    }
}
