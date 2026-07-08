package androidx.appcompat.view.menu;

import android.graphics.Point;
import android.view.Display;

/* loaded from: classes.dex */
public final class gm {
    public static final gm a = new gm();

    public final void a(Display display, Point point) {
        z50.e(display, "display");
        z50.e(point, "point");
        display.getRealSize(point);
    }
}
