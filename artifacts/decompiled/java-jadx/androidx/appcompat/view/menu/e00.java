package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class e00 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (objArr != null) {
                for (int i = 0; i < objArr.length; i++) {
                    Object obj2 = objArr[i];
                    if (obj2 != null && (obj2 instanceof ComponentName)) {
                        objArr[i] = new ComponentName(yu0.o(), kl0.d(jv0.F2(), false));
                    }
                }
            }
            return method.invoke(obj, objArr);
        }
    }

    public e00() {
        super((IBinder) bt0.c.b("autofill"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return d00.b.b(bt0.c.b("autofill"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("autofill");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        e("startSession", new a());
    }
}
