package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public class b40 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            IInterface iInterface = (IInterface) method.invoke(obj, objArr);
            Objects.requireNonNull(iInterface);
            c40 c40Var = new c40(iInterface);
            c40Var.b();
            return c40Var.g();
        }
    }

    public b40() {
        super((IBinder) bt0.c.b("window"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return a40.b.b(bt0.c.b("window"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("window");
        z91.b.d(null);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("openSession", new a());
    }
}
