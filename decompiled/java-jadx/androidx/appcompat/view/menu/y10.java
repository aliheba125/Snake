package androidx.appcompat.view.menu;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.os.IInterface;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class y10 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            String str = (String) objArr[g()];
            ov0.l().f(((Integer) objArr[f()]).intValue(), str);
            return 0;
        }

        public int f() {
            return g() + 1;
        }

        public int g() {
            return y8.g() ? 2 : 1;
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Iterator it = ((List) mh0.e.b(objArr[1], new Object[0])).iterator();
            while (it.hasNext()) {
                ov0.l().h((NotificationChannelGroup) it.next());
            }
            return 0;
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            List list = (List) mh0.e.b(objArr[1], new Object[0]);
            if (list == null) {
                return 0;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ov0.l().g((NotificationChannel) it.next());
            }
            return 0;
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ov0.l().i((String) objArr[1]);
            return 0;
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ov0.l().j((String) objArr[1]);
            return 0;
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            String str = (String) objArr[g()];
            ov0.l().k(((Integer) objArr[f()]).intValue(), str, (Notification) od0.c(objArr, Notification.class));
            return 0;
        }

        public int f() {
            return g() + 1;
        }

        public int g() {
            return 2;
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return ov0.l().m((String) objArr[objArr.length - 1]);
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nh0.a(ov0.l().n(jv0.E2()));
        }
    }

    public static class i extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nh0.a(ov0.l().o(jv0.E2()));
        }
    }

    public static class j extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (!y8.i()) {
                return null;
            }
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public y10() {
        super(((IInterface) jf0.c.b(new Object[0])).asBinder());
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return jf0.c.b(new Object[0]);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        jf0.b.d(g());
        l("notification");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.e(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getNotificationChannel", new g());
        e("getNotificationChannels", new i());
        e("cancelNotificationWithTag", new a());
        e("enqueueNotificationWithTag", new f());
        e("createNotificationChannels", new c());
        e("deleteNotificationChannel", new d());
        e("createNotificationChannelGroups", new b());
        e("deleteNotificationChannelGroup", new e());
        e("getNotificationChannelGroups", new h());
        e("removeEdgeNotification", new j());
    }
}
