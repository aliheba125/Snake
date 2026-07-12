package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class h20 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public static class b extends a {
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return null;
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            try {
                return y8.f() ? "unknown" : method.invoke(obj, method, objArr);
            } catch (Throwable unused) {
                return "unknown";
            }
        }

        public d() {
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return wb0.b(yu0.o());
        }
    }

    public h20() {
        super((IBinder) bt0.c.b("iphonesubinfo"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        if (y8.g()) {
            return pz0.d.b();
        }
        return pz0.e.b((TelephonyManager) yu0.m().getSystemService("phone"), new Object[0]);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        if (y8.g()) {
            pz0.d.d(obj2);
        }
        l("iphonesubinfo");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.h(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        d(new di0("getNaiForSubscriber"));
        d(new di0("getDeviceSvn"));
        d(new di0("getDeviceSvnUsingSubId"));
        d(new di0("getGroupIdLevel1"));
        d(new di0("getGroupIdLevel1ForSubscriber"));
        d(new di0("getLine1AlphaTag"));
        d(new di0("getLine1AlphaTagForSubscriber"));
        d(new di0("getMsisdn"));
        d(new di0("getMsisdnForSubscriber"));
        d(new di0("getVoiceMailNumber"));
        d(new di0("getVoiceMailNumberForSubscriber"));
        d(new di0("getVoiceMailAlphaTag"));
        d(new di0("getVoiceMailAlphaTagForSubscriber"));
        d(new di0("getLine1Number"));
        e("getSubscriberId", new d());
        e("getLine1NumberForSubscriber", new c());
        e("getSubscriberIdForSubscriber", new e());
        e("getIccSerialNumber", new a());
        e("getIccSerialNumberForSubscriber", new b());
    }
}
