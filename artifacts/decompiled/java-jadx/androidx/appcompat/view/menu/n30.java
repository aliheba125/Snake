package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class n30 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public n30() {
        super((IBinder) bt0.c.b("telephony.registry"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return m30.b.b(bt0.c.b("telephony.registry"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("telephony.registry");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("listenForSubscriber", new b());
        e("listen", new a());
    }
}
