package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class l30 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (nv0.l()) {
                return nv0.f().g(jv0.N2(), jv0.E2());
            }
            try {
                return method.invoke(obj, objArr);
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (!nv0.l() || nv0.f().h(jv0.N2(), jv0.E2()) == null) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return wb0.b(yu0.o());
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return wb0.b(yu0.o());
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return wb0.b(yu0.o());
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return null;
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return wb0.b(yu0.o());
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nv0.l() ? nv0.f().j(jv0.N2(), jv0.E2()) : method.invoke(obj, objArr);
        }
    }

    public static class i extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return method.invoke(obj, objArr);
        }
    }

    public static class j extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            try {
                return method.invoke(obj, objArr);
            } catch (Throwable unused) {
                return 0;
            }
        }
    }

    public static class k extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return wb0.b(yu0.o());
        }
    }

    public static class l extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.TRUE;
        }
    }

    public l30() {
        super((IBinder) bt0.c.b("phone"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return k30.b.b(bt0.c.b("phone"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("phone");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getDeviceId", new c());
        e("getImeiForSlot", new e());
        e("getMeidForSlot", new g());
        e("isUserDataEnabled", new l());
        e("getLine1NumberForDisplay", new f());
        e("getSubscriberId", new k());
        e("getDeviceIdWithFeature", new d());
        e("getCellLocation", new b());
        e("getAllCellInfo", new a());
        e("getNetworkOperator", new i());
        e("getNetworkTypeForSubscriber", new j());
        e("getNeighboringCellInfo", new h());
    }
}
