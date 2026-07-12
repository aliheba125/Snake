package androidx.appcompat.view.menu;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class tc1 extends bc1 {
    public final bz0 b;

    public tc1(int i, bz0 bz0Var) {
        super(i);
        this.b = bz0Var;
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void a(Status status) {
        this.b.d(new o2(status));
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void b(Exception exc) {
        this.b.d(exc);
    }

    @Override // androidx.appcompat.view.menu.jd1
    public final void c(tb1 tb1Var) {
        try {
            h(tb1Var);
        } catch (DeadObjectException e) {
            a(jd1.e(e));
            throw e;
        } catch (RemoteException e2) {
            a(jd1.e(e2));
        } catch (RuntimeException e3) {
            this.b.d(e3);
        }
    }

    public abstract void h(tb1 tb1Var);
}
