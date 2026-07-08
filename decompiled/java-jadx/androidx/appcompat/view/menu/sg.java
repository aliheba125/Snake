package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;

/* loaded from: classes.dex */
public final class sg {
    public static final sg a = new sg();

    public final Rect a(Context context) {
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        z50.e(context, "context");
        currentWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
        bounds = currentWindowMetrics.getBounds();
        z50.d(bounds, "wm.currentWindowMetrics.bounds");
        return bounds;
    }

    public final y81 b(Context context) {
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        z50.e(context, "context");
        currentWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
        windowInsets = currentWindowMetrics.getWindowInsets();
        z50.d(windowInsets, "context.getSystemService…indowMetrics.windowInsets");
        y81 t = y81.t(windowInsets);
        z50.d(t, "toWindowInsetsCompat(platformInsets)");
        return t;
    }

    public final ba1 c(Context context) {
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        WindowMetrics currentWindowMetrics2;
        Rect bounds;
        z50.e(context, "context");
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        windowInsets = currentWindowMetrics.getWindowInsets();
        y81 t = y81.t(windowInsets);
        z50.d(t, "toWindowInsetsCompat(wm.…ndowMetrics.windowInsets)");
        currentWindowMetrics2 = windowManager.getCurrentWindowMetrics();
        bounds = currentWindowMetrics2.getBounds();
        z50.d(bounds, "wm.currentWindowMetrics.bounds");
        return new ba1(bounds, t);
    }

    public final Rect d(Context context) {
        WindowMetrics maximumWindowMetrics;
        Rect bounds;
        z50.e(context, "context");
        maximumWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getMaximumWindowMetrics();
        bounds = maximumWindowMetrics.getBounds();
        z50.d(bounds, "wm.maximumWindowMetrics.bounds");
        return bounds;
    }
}
