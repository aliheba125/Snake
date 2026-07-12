package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class c10 extends j8 {
    public c10() {
        super((IBinder) bt0.c.b("fingerprint"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return h10.b.b(bt0.c.b("fingerprint"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("fingerprint");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new di0("isHardwareDetected"));
        d(new di0("hasEnrolledFingerprints"));
        d(new di0("authenticate"));
        d(new di0("cancelAuthentication"));
        d(new di0("getEnrolledFingerprints"));
        d(new di0("getAuthenticatorId"));
    }
}
