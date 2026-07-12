package androidx.appcompat.view.menu;

import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public class wg0 extends ob {
    public final Object p = s80.b.b();

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Integer.valueOf(wg0.m(((Integer) method.invoke(obj, objArr)).intValue()));
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            try {
                Object invoke = method.invoke(obj, objArr);
                go0.w("android.system.StructStat").e("st_uid").e(invoke, Integer.valueOf(wg0.m(-1)));
                return invoke;
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                Objects.requireNonNull(cause);
                throw cause;
            }
        }
    }

    public static int m(int i) {
        return (i <= 0 || i > 10000) ? (jv0.T2() && jv0.B2().S2()) ? jv0.I2() : yu0.p() : i;
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return s80.b.b() != g();
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return this.p;
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        s80.b.d(obj2);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getuid", new a());
        f(new b(), "lstat", "stat");
    }
}
