package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class b30 extends j8 {
    public b30() {
        super((IBinder) bt0.c.b("storagestats"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return a30.b.b(bt0.c.b("storagestats"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("storagestats");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.f(objArr);
        od0.i(objArr);
        return super.invoke(obj, method, objArr);
    }
}
