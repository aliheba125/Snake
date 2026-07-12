package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class r20 extends j8 {
    public r20() {
        super((IBinder) bt0.c.b("role"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return q20.b.b(bt0.c.b("role"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("role");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("isRoleHeld"));
    }
}
