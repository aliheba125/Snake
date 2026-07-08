package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.g30;

/* loaded from: classes.dex */
public class h30 extends j8 {
    public h30() {
        super((IBinder) bt0.c.b("system_defence_service"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return g30.a.b.b(bt0.c.b("system_defence_service"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("system_defence_service");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("checkTransitionTimoutErrorDefence"));
        d(new di0("checkSkipKilledByRemoveTask"));
        d(new di0("checkSmallIconNULLPackage"));
        d(new di0("checkDelayUpdate"));
        d(new di0("onSetActivityResumed"));
        d(new di0("checkReinstallPacakge"));
        d(new di0("reportFgCrashData"));
    }
}
