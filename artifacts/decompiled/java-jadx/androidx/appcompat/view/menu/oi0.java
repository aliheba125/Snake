package androidx.appcompat.view.menu;

import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.view.menu.ui;

/* loaded from: classes.dex */
public class oi0 implements ui.b {
    public final Handler a = oy.a(Looper.getMainLooper());

    @Override // androidx.appcompat.view.menu.ui.b
    public void a(Runnable runnable) {
        this.a.post(runnable);
    }
}
