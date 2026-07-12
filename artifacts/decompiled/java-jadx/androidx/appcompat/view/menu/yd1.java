package androidx.appcompat.view.menu;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class yd1 extends LifecycleCallback implements DialogInterface.OnCancelListener {
    public volatile boolean b;
    public final AtomicReference c;
    public final Handler d;
    public final xx e;

    public yd1(y80 y80Var, xx xxVar) {
        super(y80Var);
        this.c = new AtomicReference(null);
        this.d = new zd1(Looper.getMainLooper());
        this.e = xxVar;
    }

    public static final int p(qd1 qd1Var) {
        if (qd1Var == null) {
            return -1;
        }
        return qd1Var.a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void e(int i, int i2, Intent intent) {
        qd1 qd1Var = (qd1) this.c.get();
        if (i != 1) {
            if (i == 2) {
                int g = this.e.g(b());
                if (g == 0) {
                    o();
                    return;
                } else {
                    if (qd1Var == null) {
                        return;
                    }
                    if (qd1Var.b().d() == 18 && g == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            o();
            return;
        } else if (i2 == 0) {
            if (qd1Var == null) {
                return;
            }
            l(new ef(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, qd1Var.b().toString()), p(qd1Var));
            return;
        }
        if (qd1Var != null) {
            l(qd1Var.b(), qd1Var.a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void f(Bundle bundle) {
        super.f(bundle);
        if (bundle != null) {
            this.c.set(bundle.getBoolean("resolving_error", false) ? new qd1(new ef(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void i(Bundle bundle) {
        super.i(bundle);
        qd1 qd1Var = (qd1) this.c.get();
        if (qd1Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", qd1Var.a());
        bundle.putInt("failed_status", qd1Var.b().d());
        bundle.putParcelable("failed_resolution", qd1Var.b().i());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void j() {
        super.j();
        this.b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void k() {
        super.k();
        this.b = false;
    }

    public final void l(ef efVar, int i) {
        this.c.set(null);
        m(efVar, i);
    }

    public abstract void m(ef efVar, int i);

    public abstract void n();

    public final void o() {
        this.c.set(null);
        n();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        l(new ef(13, null), p((qd1) this.c.get()));
    }

    public final void s(ef efVar, int i) {
        qd1 qd1Var = new qd1(efVar, i);
        if (wd1.a(this.c, null, qd1Var)) {
            this.d.post(new vd1(this, qd1Var));
        }
    }
}
