package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class w12 implements Runnable {
    public final /* synthetic */ Bundle m;
    public final /* synthetic */ d02 n;

    public w12(d02 d02Var, Bundle bundle) {
        this.n = d02Var;
        this.m = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d02 d02Var = this.n;
        Bundle bundle = this.m;
        d02Var.n();
        d02Var.v();
        mj0.i(bundle);
        String e = mj0.e(bundle.getString("name"));
        if (!d02Var.a.p()) {
            d02Var.l().K().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            d02Var.t().D(new if1(bundle.getString("app_id"), "", new v92(e, 0L, null, ""), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), d02Var.j().G(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
