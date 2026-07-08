package androidx.appcompat.view.menu;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* loaded from: classes.dex */
public class e61 implements f61 {
    public final ViewOverlay a;

    public e61(View view) {
        this.a = view.getOverlay();
    }

    @Override // androidx.appcompat.view.menu.f61
    public void b(Drawable drawable) {
        this.a.add(drawable);
    }

    @Override // androidx.appcompat.view.menu.f61
    public void d(Drawable drawable) {
        this.a.remove(drawable);
    }
}
