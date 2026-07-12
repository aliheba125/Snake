package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class q00 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return null;
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return method.invoke(obj, objArr);
        }
    }

    public q00() {
        super((IBinder) bt0.c.b("bluetooth_manager"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return p00.b.b(bt0.c.b("bluetooth_manager"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("bluetooth_manager");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getName", new a());
        e("registerAdapter", new b());
    }
}
