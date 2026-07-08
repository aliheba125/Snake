package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import androidx.appcompat.view.menu.pu;
import androidx.appcompat.view.menu.sy;
import androidx.window.extensions.layout.FoldingFeature;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class oq {
    public static final oq a = new oq();

    public final pu a(ba1 ba1Var, FoldingFeature foldingFeature) {
        sy.b a2;
        pu.b bVar;
        z50.e(ba1Var, "windowMetrics");
        z50.e(foldingFeature, "oemFeature");
        int type = foldingFeature.getType();
        if (type == 1) {
            a2 = sy.b.b.a();
        } else {
            if (type != 2) {
                return null;
            }
            a2 = sy.b.b.b();
        }
        int state = foldingFeature.getState();
        if (state == 1) {
            bVar = pu.b.c;
        } else {
            if (state != 2) {
                return null;
            }
            bVar = pu.b.d;
        }
        Rect bounds = foldingFeature.getBounds();
        z50.d(bounds, "oemFeature.bounds");
        if (!d(ba1Var, new q8(bounds))) {
            return null;
        }
        Rect bounds2 = foldingFeature.getBounds();
        z50.d(bounds2, "oemFeature.bounds");
        return new sy(new q8(bounds2), a2, bVar);
    }

    public final y91 b(Context context, WindowLayoutInfo windowLayoutInfo) {
        z50.e(context, "context");
        z50.e(windowLayoutInfo, "info");
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return c(da1.b.d(context), windowLayoutInfo);
        }
        if (i < 29 || !(context instanceof Activity)) {
            throw new UnsupportedOperationException("Display Features are only supported after Q. Display features for non-Activity contexts are not expected to be reported on devices running Q.");
        }
        return c(da1.b.c((Activity) context), windowLayoutInfo);
    }

    public final y91 c(ba1 ba1Var, WindowLayoutInfo windowLayoutInfo) {
        pu puVar;
        z50.e(ba1Var, "windowMetrics");
        z50.e(windowLayoutInfo, "info");
        List<FoldingFeature> displayFeatures = windowLayoutInfo.getDisplayFeatures();
        z50.d(displayFeatures, "info.displayFeatures");
        ArrayList arrayList = new ArrayList();
        for (FoldingFeature foldingFeature : displayFeatures) {
            if (foldingFeature instanceof FoldingFeature) {
                oq oqVar = a;
                z50.d(foldingFeature, "feature");
                puVar = oqVar.a(ba1Var, foldingFeature);
            } else {
                puVar = null;
            }
            if (puVar != null) {
                arrayList.add(puVar);
            }
        }
        return new y91(arrayList);
    }

    public final boolean d(ba1 ba1Var, q8 q8Var) {
        Rect a2 = ba1Var.a();
        if (q8Var.e()) {
            return false;
        }
        if (q8Var.d() != a2.width() && q8Var.a() != a2.height()) {
            return false;
        }
        if (q8Var.d() >= a2.width() || q8Var.a() >= a2.height()) {
            return (q8Var.d() == a2.width() && q8Var.a() == a2.height()) ? false : true;
        }
        return false;
    }
}
