package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.j20;

/* loaded from: classes.dex */
public class k20 extends j8 {
    public k20() {
        super((IBinder) bt0.c.b("physical_fling_service"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return j20.a.b.b(bt0.c.b("physical_fling_service"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("physical_fling_service");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("isSupportPhysicalFling"));
    }
}
