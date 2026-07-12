package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class mp0 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[0] = yu0.o();
            return method.invoke(obj, objArr);
        }
    }

    public mp0() {
        super((IBinder) bt0.c.b("restrictions"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return p20.b.b(bt0.c.b("restrictions"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("restrictions");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getApplicationRestrictions", new a());
    }
}
