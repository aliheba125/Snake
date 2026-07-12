package androidx.appcompat.view.menu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public final class jc2 extends BroadcastReceiver {
    public final cx1 a;

    public jc2(cx1 cx1Var) {
        this.a = cx1Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            this.a.l().L().a("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            this.a.l().L().a("App receiver called with null action");
            return;
        }
        if (!action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            this.a.l().L().a("App receiver called with unknown action");
            return;
        }
        final cx1 cx1Var = this.a;
        if (sc2.a() && cx1Var.z().D(null, si1.M0)) {
            cx1Var.l().K().a("App receiver notified triggers are available");
            cx1Var.h().D(new Runnable() { // from class: androidx.appcompat.view.menu.le2
                @Override // java.lang.Runnable
                public final void run() {
                    cx1 cx1Var2 = cx1.this;
                    if (!cx1Var2.L().V0()) {
                        cx1Var2.l().L().a("registerTrigger called but app not eligible");
                        return;
                    }
                    final d02 H = cx1Var2.H();
                    H.getClass();
                    new Thread(new Runnable() { // from class: androidx.appcompat.view.menu.re2
                        @Override // java.lang.Runnable
                        public final void run() {
                            d02.this.p0();
                        }
                    }).start();
                }
            });
        }
    }
}
