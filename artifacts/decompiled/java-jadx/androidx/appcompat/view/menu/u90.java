package androidx.appcompat.view.menu;

import android.location.Location;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class u90 extends ob {
    public Object p;

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Object obj2 = objArr[0];
            if (obj2 instanceof List) {
                List list = (List) obj2;
                list.clear();
                list.add(nv0.f().i(jv0.N2(), jv0.E2()).b());
                objArr[0] = list;
            } else if (obj2 instanceof Location) {
                objArr[0] = nv0.f().i(jv0.N2(), jv0.E2()).b();
            }
            return method.invoke(obj, objArr);
        }
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return this.p;
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
    }

    @Override // androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("onLocationChanged", new a());
    }

    public Object l(Object obj) {
        this.p = obj;
        b();
        return g();
    }
}
