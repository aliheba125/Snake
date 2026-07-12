package androidx.appcompat.view.menu;

import android.net.wifi.WifiInfo;
import android.os.IBinder;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class y30 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            WifiInfo wifiInfo = (WifiInfo) method.invoke(obj, objArr);
            z71.b.e(wifiInfo, "ac:62:5a:82:65:c4");
            z71.c.e(wifiInfo, "ac:62:5a:82:65:c4");
            z71.d.e(wifiInfo, a81.b.b("SnakeEngine_Wifi"));
            return wifiInfo;
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return new ArrayList();
        }
    }

    public y30() {
        super((IBinder) bt0.c.b("wifi"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return x30.b.b(bt0.c.b("wifi"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("wifi");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        e("getConnectionInfo", new a());
        e("getScanResults", new b());
    }
}
