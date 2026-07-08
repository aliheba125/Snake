package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class w00 extends j8 {
    public w00() {
        super((IBinder) bt0.c.b("device_identifiers"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return x00.b.b(bt0.c.b("device_identifiers"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("device_identifiers");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("getSerialForPackage"));
    }
}
