package androidx.appcompat.view.menu;

import android.app.Activity;

/* loaded from: classes.dex */
public class w80 {
    public final Object a;

    public w80(Activity activity) {
        mj0.j(activity, "Activity must not be null");
        this.a = activity;
    }

    public final Activity a() {
        return (Activity) this.a;
    }

    public final bv b() {
        jy0.a(this.a);
        return null;
    }

    public final boolean c() {
        return this.a instanceof Activity;
    }

    public final boolean d() {
        return false;
    }
}
