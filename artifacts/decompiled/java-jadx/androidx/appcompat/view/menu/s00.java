package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class s00 extends j8 {
    public s00() {
        super((IBinder) bt0.c.b("connectivity"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return r00.b.b(bt0.c.b("connectivity"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("connectivity");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("getAllNetworkInfo", null));
        d(new y41("getAllNetworks", null));
        d(new y41("getNetworkCapabilities", null));
    }
}
