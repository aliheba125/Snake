package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class x10 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.g(objArr);
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public x10() {
        super((IBinder) bt0.c.b("network_management"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return w10.b.b(bt0.c.b("network_management"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("network_management");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new g31("setUidCleartextNetworkPolicy", 0));
        d(new g31("setUidMeteredNetworkBlacklist", 0));
        d(new g31("setUidMeteredNetworkWhitelist", 0));
        e("getNetworkStatsUidDetail", new a());
    }
}
