package androidx.appcompat.view.menu;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class cd1 extends bc1 {
    public final az0 b;
    public final bz0 c;
    public final bx0 d;

    public cd1(int i, az0 az0Var, bz0 bz0Var, bx0 bx0Var) {
        super(i);
        this.c = bz0Var;
        this.b = az0Var;
        this.d = bx0Var;
        if (i == 2 && az0Var.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void a(Status status) {
        this.c.d(this.d.a(status));
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void b(Exception exc) {
        this.c.d(exc);
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void c(tb1 tb1Var) {
        try {
            this.b.b(tb1Var.u(), this.c);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a(jd1.e(e2));
        } catch (RuntimeException e3) {
            this.c.d(e3);
        }
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void d(gb1 gb1Var, boolean z) {
        gb1Var.b(this.c, z);
    }

    @Override // androidx.appcompat.view.menu.bc1
    public final boolean f(tb1 tb1Var) {
        return this.b.c();
    }

    @Override // androidx.appcompat.view.menu.bc1
    public final hr[] g(tb1 tb1Var) {
        return this.b.e();
    }
}
