package androidx.appcompat.view.menu;

import android.os.Looper;
import java.util.List;

/* loaded from: classes.dex */
public final class d2 implements ra0 {
    @Override // androidx.appcompat.view.menu.ra0
    public String a() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // androidx.appcompat.view.menu.ra0
    public qa0 b(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new py(ry.a(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // androidx.appcompat.view.menu.ra0
    public int c() {
        return 1073741823;
    }
}
