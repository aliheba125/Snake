package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class pz extends ob {
    public final Object p;

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            dv0.i().s((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            dv0.i().t((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            dv0.i().u((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return yu0.j().j((IBinder) objArr[0], jv0.N2());
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[1] = ez0.a((ActivityManager.TaskDescription) objArr[1]);
            return method.invoke(obj, objArr);
        }
    }

    public pz(Object obj) {
        this.p = obj;
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        Object obj = this.p;
        if (obj != null) {
            return obj;
        }
        return uu0.c.b(e1.b.c(e1.c.b(new Object[0])), new Object[0]);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        uu0.b.e(e1.b.c(e1.c.b(new Object[0])), obj2);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("finishActivity", new c());
        e("activityResumed", new b());
        e("activityDestroyed", new a());
        e("setTaskDescription", new e());
        e("getCallingActivity", new d());
    }

    @Override // androidx.appcompat.view.menu.ob
    public void k(boolean z) {
        super.k(z);
    }
}
