package androidx.appcompat.view.menu;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class d22 implements Runnable {
    public final /* synthetic */ hm1 m;
    public final /* synthetic */ d02 n;

    public d22(d02 d02Var, hm1 hm1Var) {
        this.n = d02Var;
        this.m = hm1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Long l;
        y62 u = this.n.u();
        if (!dd2.a() || !u.e().s(si1.D0)) {
            u.l().M().a("getSessionId has been disabled.");
        } else if (!u.i().J().y()) {
            u.l().M().a("Analytics storage consent denied; will not get session id");
        } else if (!u.i().y(u.b().a()) && u.i().q.a() != 0) {
            l = Long.valueOf(u.i().q.a());
            if (l == null) {
                this.n.a.L().P(this.m, l.longValue());
                return;
            }
            try {
                this.m.f(null);
                return;
            } catch (RemoteException e) {
                this.n.a.l().G().b("getSessionId failed with exception", e);
                return;
            }
        }
        l = null;
        if (l == null) {
        }
    }
}
