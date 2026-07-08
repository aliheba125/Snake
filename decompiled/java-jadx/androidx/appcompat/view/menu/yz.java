package androidx.appcompat.view.menu;

import android.app.AppOpsManager;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class yz extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.i(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            int intValue = ((Integer) objArr[0]).intValue();
            String str = (String) objArr[1];
            if (intValue == yu0.p() && "com.google.android.gms".equals(str)) {
                return null;
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return method.invoke(obj, objArr);
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public yz() {
        super((IBinder) bt0.c.b("appops"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return zz.b.b(bt0.c.b("appops"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        if (u3.b != null) {
            try {
                u3.b.e((AppOpsManager) yu0.m().getSystemService("appops"), g());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        l("appops");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.f(objArr);
        od0.i(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("noteProxyOperation", new d());
        e("checkPackage", new b());
        e("checkOperation", new a());
        e("noteOperation", new c());
    }
}
