package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class x12 implements Runnable {
    public final /* synthetic */ Bundle m;
    public final /* synthetic */ d02 n;

    public x12(d02 d02Var, Bundle bundle) {
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
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        mj0.e(string);
        mj0.e(string2);
        mj0.i(bundle.get("value"));
        if (!d02Var.a.p()) {
            d02Var.l().K().a("Conditional property not set since app measurement is disabled");
            return;
        }
        v92 v92Var = new v92(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            oi1 G = d02Var.j().G(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            d02Var.t().D(new if1(bundle.getString("app_id"), string2, v92Var, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), d02Var.j().G(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), G, bundle.getLong("time_to_live"), d02Var.j().G(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
