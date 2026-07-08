package androidx.appcompat.view.menu;

import android.app.job.JobInfo;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class m10 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[0] = Integer.valueOf(yu0.k().f(jv0.D2().n, ((Integer) objArr[0]).intValue()));
            return method.invoke(obj, objArr);
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            yu0.k().g(jv0.D2().n);
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[0] = yu0.k().j((JobInfo) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[0] = yu0.k().j((JobInfo) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public m10() {
        super((IBinder) bt0.c.b("jobscheduler"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return l10.b.b(bt0.c.b("jobscheduler"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("jobscheduler");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("schedule", new d());
        e("cancel", new a());
        e("cancelAll", new b());
        e("enqueue", new c());
    }
}
