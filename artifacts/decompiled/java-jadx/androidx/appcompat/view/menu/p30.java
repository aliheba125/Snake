package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class p30 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[0] = yu0.o();
            return method.invoke(obj, objArr);
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return n41.b.b(Integer.valueOf(jv0.N2()), "SnakeEngine", n41.c);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return new ArrayList();
        }
    }

    public p30() {
        super((IBinder) bt0.c.b("user"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return o30.b.b(bt0.c.b("user"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("user");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new y41("getProfileParent", null));
        d(new y41("getUserIcon", null));
        d(new y41("getDefaultGuestRestrictions", null));
        d(new y41("setDefaultGuestRestrictions", null));
        d(new y41("removeRestrictions", null));
        d(new y41("createUser", null));
        d(new y41("createProfileForUser", null));
        e("getApplicationRestrictions", new a());
        e("getProfileParent", new b());
        e("getUsers", new c());
    }
}
