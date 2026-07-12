package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class z00 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return new ComponentName("", "");
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return "SnakeEngine";
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return "SnakeEngine";
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.TRUE;
        }
    }

    public z00() {
        super((IBinder) bt0.c.b("device_policy"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return y00.b.b(bt0.c.b("device_policy"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("device_policy");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getStorageEncryptionStatus", new d());
        e("getDeviceOwnerComponent", new a());
        e("getDeviceOwnerName", new b());
        e("getProfileOwnerName", new c());
        e("isDeviceProvisioned", new e());
    }
}
