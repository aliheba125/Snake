package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class g20 extends j8 {
    public g20() {
        super((IBinder) bt0.c.b("persistent_data_block"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return f20.b.b(bt0.c.b("persistent_data_block"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("persistent_data_block");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("write", -1));
        d(new y41("read", new byte[0]));
        d(new y41("wipe", null));
        d(new y41("getDataBlockSize", 0));
        d(new y41("getMaximumDataBlockSize", 0));
        d(new y41("setOemUnlockEnabled", 0));
        d(new y41("getOemUnlockEnabled", Boolean.FALSE));
    }
}
