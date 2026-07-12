package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class vz extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[1] = ez0.a((ActivityManager.TaskDescription) objArr[1]);
            return method.invoke(obj, objArr);
        }
    }

    public vz() {
        super((IBinder) bt0.c.b("activity_task"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return uz.b.b(bt0.c.b("activity_task"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("activity_task");
        uu0.b.e(s1.b.b(), uz.b.b(this));
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        c(j1.a());
        e("setTaskDescription", new a());
    }
}
