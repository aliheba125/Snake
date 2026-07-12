package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.e30;

/* loaded from: classes.dex */
public class f30 extends j8 {
    public f30() {
        super((IBinder) bt0.c.b("SuperResolutionManager"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return e30.a.b.b(bt0.c.b("SuperResolutionManager"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("SuperResolutionManager");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("registerPackageSettingStateChangeListener"));
        d(new di0("unRegisterPackageSettingStateChangeListener"));
        d(new di0("registerSuperResolutionStateChange"));
        d(new di0("unRegisterSuperResolutionStateChange"));
        d(new di0("getPackageSettingState"));
        d(new di0("putPackageSettingState"));
    }
}
