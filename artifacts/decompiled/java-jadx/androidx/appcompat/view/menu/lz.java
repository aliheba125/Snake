package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class lz extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (objArr != null) {
                int length = objArr.length - 1;
                if (objArr[length] instanceof Integer) {
                    objArr[length] = Integer.valueOf(d7.c(yu0.m().getApplicationInfo().uid));
                }
            }
            return method.invoke(obj, objArr);
        }
    }

    public lz() {
        super((IBinder) bt0.c.b("accessibility"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return kz.b.b(bt0.c.b("accessibility"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("accessibility");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        f(new a(), "interrupt", "sendAccessibilityEvent", "addClient", "removeClient", "getInstalledAccessibilityServiceList", "getEnabledAccessibilityServiceList", "addAccessibilityInteractionConnection", "getWindowToken", "setSystemAudioCaptioningEnabled", "isSystemAudioCaptioningUiEnabled", "setSystemAudioCaptioningUiEnabled");
    }
}
