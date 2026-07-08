package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class sd2 extends ne2 {
    public sd2(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override // androidx.appcompat.view.menu.ne2
    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            d(null);
        } else {
            c(new se2(4, "Invalid response to one way request", null));
        }
    }

    @Override // androidx.appcompat.view.menu.ne2
    public final boolean b() {
        return true;
    }
}
