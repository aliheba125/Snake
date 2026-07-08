package androidx.appcompat.view.menu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public class pu1 extends BroadcastReceiver {
    public final o82 a;
    public boolean b;
    public boolean c;

    public pu1(o82 o82Var) {
        mj0.i(o82Var);
        this.a = o82Var;
    }

    public final void b() {
        this.a.p0();
        this.a.h().n();
        if (this.b) {
            return;
        }
        this.a.a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.c = this.a.g0().A();
        this.a.l().K().b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.c));
        this.b = true;
    }

    public final void c() {
        this.a.p0();
        this.a.h().n();
        this.a.h().n();
        if (this.b) {
            this.a.l().K().a("Unregistering connectivity change receiver");
            this.b = false;
            this.c = false;
            try {
                this.a.a().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.a.l().G().b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.a.p0();
        String action = intent.getAction();
        this.a.l().K().b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.a.l().L().b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean A = this.a.g0().A();
        if (this.c != A) {
            this.c = A;
            this.a.h().D(new vu1(this, A));
        }
    }
}
