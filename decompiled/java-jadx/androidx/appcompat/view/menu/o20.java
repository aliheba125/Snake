package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class o20 extends j8 {
    public o20() {
        super((IBinder) bt0.c.b("power"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return n20.b.b(bt0.c.b("power"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("power");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("acquireWakeLock", 0));
        d(new y41("acquireWakeLockWithUid", 0));
        d(new y41("releaseWakeLock", 0));
        d(new y41("updateWakeLockWorkSource", 0));
        d(new y41("isWakeLockLevelSupported", Boolean.TRUE));
        d(new y41("reboot", null));
        d(new y41("rebootSafeMode", null));
        d(new y41("shutdown", null));
    }
}
