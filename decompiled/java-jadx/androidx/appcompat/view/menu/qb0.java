package androidx.appcompat.view.menu;

import android.content.res.Resources;
import android.view.View;

/* loaded from: classes.dex */
public class qb0 extends hb0 {
    public final float f;
    public final float g;
    public final float h;

    public qb0(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f = resources.getDimension(em0.i);
        this.g = resources.getDimension(em0.h);
        this.h = resources.getDimension(em0.j);
    }
}
