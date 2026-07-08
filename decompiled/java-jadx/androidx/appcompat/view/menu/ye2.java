package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ye2 extends ne2 {
    public ye2(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // androidx.appcompat.view.menu.ne2
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        d(bundle2);
    }

    @Override // androidx.appcompat.view.menu.ne2
    public final boolean b() {
        return false;
    }
}
