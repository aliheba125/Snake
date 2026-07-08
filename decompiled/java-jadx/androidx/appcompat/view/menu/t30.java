package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.u30;

/* loaded from: classes.dex */
public class t30 extends j8 {
    public t30() {
        super((IBinder) bt0.c.b("vivo_permission_service"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return u30.a.b.b(bt0.c.b("vivo_permission_service"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("vivo_permission_service");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("checkPermission"));
        d(new di0("getAppPermission"));
        d(new di0("setAppPermission"));
        d(new di0("setWhiteListApp"));
        d(new di0("setBlackListApp"));
        d(new di0("noteStartActivityProcess"));
        d(new di0("isBuildInThirdPartApp"));
    }
}
