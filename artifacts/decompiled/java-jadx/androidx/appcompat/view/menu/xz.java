package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.WorkSource;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class xz extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object b(Object obj, Method method, Object[] objArr) {
            if (objArr[0] instanceof String) {
                objArr[0] = yu0.o();
            }
            int a = r4.a(objArr, WorkSource.class);
            if (a >= 0) {
                objArr[a] = null;
            }
            return Boolean.TRUE;
        }

        @Override // androidx.appcompat.view.menu.md0
        public String c() {
            return "set";
        }

        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            try {
                return method.invoke(obj, method, objArr);
            } catch (Throwable th) {
                th.printStackTrace();
                return 0;
            }
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public String c() {
            return "setTime";
        }

        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.FALSE;
        }
    }

    public xz() {
        super((IBinder) bt0.c.b("alarm"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return wz.b.b(bt0.c.b("alarm"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("alarm");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("setTimeZone", null));
        e("set", new a());
        e("setTime", new b());
    }
}
