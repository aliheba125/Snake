package androidx.appcompat.view.menu;

import android.content.Intent;
import android.os.IBinder;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class w20 extends j8 {

    public class a extends di0 {
        public a(String str) {
            super(str);
        }

        @Override // androidx.appcompat.view.menu.di0, androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nh0.a(new ArrayList());
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return new Intent();
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.TRUE;
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.TRUE;
        }
    }

    public static class f extends md0 {
        public int a;
        public Object b;
        public String c;

        public f(String str, int i, Object obj) {
            this.a = i;
            this.b = obj;
            this.c = str;
        }

        @Override // androidx.appcompat.view.menu.md0
        public String c() {
            return this.c;
        }

        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return f(method, this.b);
        }

        public final Object f(Method method, Object obj) {
            if (!method.toString().contains("AndroidFuture")) {
                return obj;
            }
            Object b = f2.c.b(new Object[0]);
            f2.b.b(b, obj);
            return b;
        }
    }

    public w20() {
        super((IBinder) bt0.c.b("shortcut"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return x20.b.b(bt0.c.b("shortcut"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("shortcut");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.e(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new di0("getShortcuts"));
        d(new di0("disableShortcuts"));
        d(new di0("enableShortcuts"));
        d(new di0("getRemainingCallCount"));
        d(new di0("getRateLimitResetTime"));
        d(new di0("getIconMaxDimensions"));
        d(new di0("getMaxShortcutCountPerActivity"));
        d(new di0("reportShortcutUsed"));
        d(new di0("onApplicationActive"));
        d(new di0("hasShortcutHostPermission"));
        d(new di0("removeAllDynamicShortcuts"));
        d(new di0("removeDynamicShortcuts"));
        d(new di0("removeLongLivedShortcuts"));
        d(new f("pushDynamicShortcut", 1, null));
        Boolean bool = Boolean.FALSE;
        d(new f("requestPinShortcut", 1, bool));
        d(new f("addDynamicShortcuts", 1, bool));
        d(new f("setDynamicShortcuts", 1, bool));
        e("requestPinShortcut", new d());
        e("setDynamicShortcuts", new e());
        e("createShortcutResultIntent", new b());
        e("getMaxShortcutCountPerActivity", new c());
        d(new a("getManifestShortcuts"));
    }
}
