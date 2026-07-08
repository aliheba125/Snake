package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.l20;

/* loaded from: classes.dex */
public class m20 extends j8 {
    public m20() {
        super((IBinder) bt0.c.b("popup_camera_service"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return l20.a.b.b(bt0.c.b("popup_camera_service"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("popup_camera_service");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("notifyCameraStatus"));
    }
}
