package androidx.appcompat.view.menu;

import android.app.Activity;
import android.os.Bundle;
import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class zp1 extends mn1.a {
    public final /* synthetic */ Bundle q;
    public final /* synthetic */ Activity r;
    public final /* synthetic */ mn1.b s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zp1(mn1.b bVar, Bundle bundle, Activity activity) {
        super(mn1.this);
        this.s = bVar;
        this.q = bundle;
        this.r = activity;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        Bundle bundle;
        fm1 fm1Var;
        if (this.q != null) {
            bundle = new Bundle();
            if (this.q.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.q.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        fm1Var = mn1.this.i;
        ((fm1) mj0.i(fm1Var)).onActivityCreated(vf0.k(this.r), bundle, this.n);
    }
}
