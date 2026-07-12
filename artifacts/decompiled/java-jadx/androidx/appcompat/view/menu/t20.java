package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class t20 extends j8 {
    public t20() {
        super((IBinder) bt0.c.b("search"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return s20.b.b(bt0.c.b("search"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("search");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("launchLegacyAssist"));
    }
}
