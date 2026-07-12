package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;
import android.os.storage.StorageVolume;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class z20 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (objArr == null) {
                StorageVolume[] h = yu0.l().h(jv0.J2(), null, 0, jv0.N2());
                return h == null ? method.invoke(obj, objArr) : h;
            }
            try {
                StorageVolume[] h2 = yu0.l().h(((Integer) objArr[0]).intValue(), (String) objArr[1], ((Integer) objArr[2]).intValue(), jv0.N2());
                return h2 == null ? method.invoke(obj, objArr) : h2;
            } catch (Throwable unused) {
                return method.invoke(obj, objArr);
            }
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public z20() {
        super((IBinder) bt0.c.b("mount"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return y8.d() ? (IInterface) y20.b.b(bt0.c.b("mount")) : (IInterface) v10.b.b(bt0.c.b("mount"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("mount");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getVolumeList", new a());
        e("mkdirs", new b());
    }
}
