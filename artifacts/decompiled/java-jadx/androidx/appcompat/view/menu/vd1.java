package androidx.appcompat.view.menu;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiActivity;

/* loaded from: classes.dex */
public final class vd1 implements Runnable {
    public final qd1 m;
    public final /* synthetic */ yd1 n;

    public vd1(yd1 yd1Var, qd1 qd1Var) {
        this.n = yd1Var;
        this.m = qd1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.n.b) {
            ef b = this.m.b();
            if (b.k()) {
                yd1 yd1Var = this.n;
                yd1Var.a.startActivityForResult(GoogleApiActivity.a(yd1Var.b(), (PendingIntent) mj0.i(b.i()), this.m.a(), false), 1);
                return;
            }
            yd1 yd1Var2 = this.n;
            if (yd1Var2.e.b(yd1Var2.b(), b.d(), null) != null) {
                yd1 yd1Var3 = this.n;
                yd1Var3.e.v(yd1Var3.b(), this.n.a, b.d(), 2, this.n);
            } else {
                if (b.d() != 18) {
                    this.n.l(b, this.m.a());
                    return;
                }
                yd1 yd1Var4 = this.n;
                Dialog q = yd1Var4.e.q(yd1Var4.b(), this.n);
                yd1 yd1Var5 = this.n;
                yd1Var5.e.r(yd1Var5.b().getApplicationContext(), new td1(this, q));
            }
        }
    }
}
