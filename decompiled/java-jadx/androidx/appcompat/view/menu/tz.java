package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.app.IServiceConnection;
import android.app.Notification;
import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.PackageParser;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.IInterface;
import androidx.appcompat.view.menu.m90;
import androidx.appcompat.view.menu.qz;
import com.snake.helper.DaemonService;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class tz extends ob {

    public static class a extends b {
        @Override // androidx.appcompat.view.menu.md0
        public Object b(Object obj, Method method, Object[] objArr) {
            objArr[6] = null;
            return super.b(obj, method, objArr);
        }
    }

    public static class a0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            yu0.j().G((ComponentName) objArr[0], (IBinder) objArr[1], jv0.N2());
            return Boolean.TRUE;
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (!y8.j()) {
                return method.invoke(obj, objArr);
            }
            Intent intent = (Intent) objArr[2];
            String str = (String) objArr[3];
            IServiceConnection iServiceConnection = (IServiceConnection) objArr[4];
            int intExtra = intent.getIntExtra("_S_|_UserId", -1);
            if (intExtra == -1) {
                intExtra = jv0.N2();
            }
            if (objArr.length >= 8 && (objArr[6] instanceof String)) {
                objArr[6] = yu0.o();
            }
            long m = tz.m(objArr[5]);
            ResolveInfo B = yu0.u().B(intent, 0, str, intExtra);
            if (B != null || y3.c(intent.getComponent())) {
                if (y8.k()) {
                    objArr[5] = Long.valueOf(m & 2147483647L);
                } else {
                    objArr[5] = Integer.valueOf((int) (m & 2147483647L));
                }
                Intent g = yu0.j().g(intent, iServiceConnection == null ? null : iServiceConnection.asBinder(), str, intExtra);
                if (iServiceConnection != null) {
                    if (intent.getComponent() == null && B != null) {
                        ServiceInfo serviceInfo = B.serviceInfo;
                        intent.setComponent(new ComponentName(serviceInfo.packageName, serviceInfo.name));
                    }
                    IServiceConnection k = ys0.k(iServiceConnection, intent);
                    objArr[4] = k;
                    WeakReference weakReference = (WeakReference) m90.b.a.b.c(iServiceConnection);
                    if (weakReference != null) {
                        m90.b.b.e(weakReference.get(), k);
                    }
                }
                if (g != null) {
                    objArr[2] = g;
                    return method.invoke(obj, objArr);
                }
            }
            return method.invoke(obj, objArr);
        }

        @Override // androidx.appcompat.view.menu.md0
        public boolean e() {
            return yu0.h().z() || yu0.h().B();
        }
    }

    public static class b0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            IServiceConnection iServiceConnection = (IServiceConnection) objArr[0];
            if (iServiceConnection == null) {
                return method.invoke(obj, objArr);
            }
            yu0.j().H(iServiceConnection.asBinder(), jv0.N2());
            ys0 u2 = ys0.u2(iServiceConnection.asBinder());
            if (u2 != null) {
                objArr[0] = u2;
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            int f = f(objArr);
            Intent intent = (Intent) objArr[f];
            Intent A = yu0.j().A(intent, (String) objArr[f + 1], jv0.N2());
            if (A != null) {
                A.setExtrasClassLoader(jv0.H2().getClassLoader());
                jl0.b(A, intent, jv0.N2());
                objArr[f] = A;
            }
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] instanceof String[]) {
                    objArr[i] = null;
                }
            }
            return method.invoke(obj, objArr);
        }

        public int f(Object[] objArr) {
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] instanceof Intent) {
                    return i;
                }
            }
            return 1;
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            IBinder iBinder;
            int f = f();
            Object obj2 = objArr[f];
            if ((obj2 instanceof String) && !kl0.j((String) obj2)) {
                if (y8.f()) {
                    objArr[1] = yu0.o();
                }
                if (obj2.equals("settings") || obj2.equals("media") || obj2.equals("telephony")) {
                    Object invoke = method.invoke(obj, objArr);
                    fg.d(invoke, (String) obj2);
                    return invoke;
                }
                ProviderInfo z = yu0.u().z((String) obj2, PackageParser.PARSE_IS_PRIVILEGED, jv0.N2());
                if (jv0.F2() == -1 || z == null) {
                    iBinder = null;
                } else {
                    p3 q = yu0.j().q(z.packageName, z.processName, jv0.N2());
                    iBinder = q.o != jv0.F2() ? yu0.j().f(z) : null;
                    objArr[f] = kl0.e(q.o);
                    objArr[g()] = Integer.valueOf(yu0.q());
                }
                if (iBinder == null) {
                    return null;
                }
                Object invoke2 = method.invoke(obj, objArr);
                qz.a.b.e(invoke2, z);
                qz.a.c.e(invoke2, new ig().m((IInterface) hg.b.b(iBinder), jv0.E2()));
                return invoke2;
            }
            return method.invoke(obj, objArr);
        }

        public final int f() {
            return y8.f() ? 2 : 1;
        }

        public final int g() {
            return f() + 1;
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return n41.b.b(Integer.valueOf(jv0.N2()), "SnakeEngine", n41.c.b());
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nh0.a(new ArrayList());
        }
    }

    public static class i extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return tz.n(obj, method, objArr);
        }
    }

    public static class j extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return tz.n(obj, method, objArr);
        }
    }

    public static class k extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return yu0.j().m(((IInterface) objArr[0]).asBinder());
        }
    }

    public static class l extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (!yu0.h().z()) {
                return method.invoke(obj, objArr);
            }
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class m extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            aq0 n = dv0.i().n(jv0.E2(), jv0.N2());
            return n == null ? new ArrayList() : n.m;
        }
    }

    public static class n extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            bq0 o = dv0.i().o(jv0.E2(), jv0.N2());
            return o == null ? new ArrayList() : o.m;
        }
    }

    public static class o extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Integer.valueOf(yu0.j().p(((IInterface) objArr[0]).asBinder()));
        }
    }

    public static class p extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.i(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class q extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (!yu0.h().z()) {
                return method.invoke(obj, objArr);
            }
            int length = objArr.length - 1;
            if (objArr[length] instanceof String) {
                objArr[length] = yu0.o();
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class r extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if ("com.tencent.mm".equals((String) objArr[1])) {
                return null;
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class s extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.h(objArr);
            return yu0.j().x((Intent) objArr[0], (String) objArr[1], jv0.N2());
        }
    }

    public static class t extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            int g = g();
            Object obj2 = objArr[g];
            if (obj2 != null) {
                IIntentReceiver iIntentReceiver = (IIntentReceiver) obj2;
                IIntentReceiver j = y40.j(iIntentReceiver);
                WeakReference weakReference = (WeakReference) m90.a.C0022a.b.c(iIntentReceiver);
                if (weakReference != null) {
                    m90.a.b.e(weakReference.get(), j);
                }
                objArr[g] = j;
            }
            if (objArr[f()] != null) {
                objArr[f()] = null;
            }
            return method.invoke(obj, objArr);
        }

        public int f() {
            if (y8.h()) {
                return 6;
            }
            return y8.g() ? 5 : 4;
        }

        public int g() {
            if (y8.h()) {
                return 4;
            }
            return y8.g() ? 3 : 2;
        }
    }

    public static class u extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (objArr.length >= 9) {
                objArr[8] = 4;
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class v extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (objArr.length > 0 && (objArr[0] instanceof String)) {
                objArr[0] = yu0.o();
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class w extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Notification notification = (Notification) objArr[3];
            Intent intent = new Intent(yu0.m(), (Class<?>) DaemonService.class);
            if (notification == null) {
                yu0.m().stopService(intent);
            } else if (y8.d()) {
                yu0.m().startForegroundService(intent);
            } else {
                yu0.m().startService(intent);
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class x extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            objArr[1] = ez0.a((ActivityManager.TaskDescription) objArr[1]);
            return method.invoke(obj, objArr);
        }
    }

    public static class y extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Intent intent = (Intent) objArr[1];
            String str = (String) objArr[2];
            if (yu0.u().B(intent, 0, str, jv0.N2()) == null) {
                return method.invoke(obj, objArr);
            }
            int f = f();
            return yu0.j().E(intent, str, f != -1 ? ((Boolean) objArr[f]).booleanValue() : false, jv0.N2());
        }

        public int f() {
            return y8.d() ? 3 : -1;
        }
    }

    public static class z extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Integer.valueOf(yu0.j().F((Intent) objArr[1], (String) objArr[2], jv0.N2()));
        }
    }

    public static long m(Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).longValue();
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        return -1L;
    }

    public static Object n(Object obj, Method method, Object[] objArr) {
        int intValue = ((Integer) objArr[0]).intValue();
        Intent[] intentArr = (Intent[]) objArr[o(objArr)];
        int a2 = r4.a(objArr, String.class);
        if (a2 == -1) {
            a2 = 1;
        }
        objArr[a2] = yu0.o();
        for (int i2 = 0; i2 < intentArr.length; i2++) {
            Intent intent = intentArr[i2];
            if (intValue == 2) {
                Intent intent2 = new Intent();
                intent2.setComponent(new ComponentName(yu0.o(), kl0.h(jv0.F2())));
                ql0.b(intent2, intent, jv0.N2());
                intentArr[i2] = intent2;
            }
        }
        IInterface iInterface = (IInterface) method.invoke(obj, objArr);
        if (iInterface != null) {
            String[] n2 = qv0.g().n(jv0.K2());
            if (n2.length < 1) {
                n2 = new String[]{yu0.o()};
            }
            yu0.j().l(iInterface.asBinder(), n2[0], jv0.K2());
        }
        return iInterface;
    }

    public static int o(Object[] objArr) {
        for (int i2 = 0; i2 < objArr.length; i2++) {
            if (objArr[i2] instanceof Intent[]) {
                return i2;
            }
        }
        return y8.g() ? 6 : 5;
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return g() != h();
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return uu0.c.b(y8.d() ? m1.b.b() : y8.a() ? l1.b.b() : null, new Object[0]);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        uu0.b.e(y8.d() ? m1.b.b() : y8.a() ? l1.b.b() : null, obj2);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new di0("getAppStartMode"));
        d(new di0("setAppLockedVerifying"));
        d(new di0("reportJunkFromApp"));
        e("getContentProvider", new f());
        e("startService", new y());
        e("stopService", new z());
        e("stopServiceToken", new a0());
        e("bindService", new b());
        e("bindIsolatedService", new a());
        e("unbindService", new b0());
        e("getRunningAppProcesses", new m());
        e("getServices", new n());
        e("getIntentSenderWithFeature", new j());
        e("getIntentSender", new i());
        e("getPackageForIntentSender", new k());
        e("getUidForIntentSender", new o());
        e("broadcastIntent", new c());
        e("peekService", new s());
        e("registerReceiver", new t());
        e("grantUriPermission", new p());
        e("setServiceForeground", new w());
        e("getHistoricalProcessExitReasons", new h());
        e("getCurrentUser", new g());
        e("checkPermission", new d());
        e("checkPermissionForDevice", new d());
        e("checkUriPermission", new e());
        e("setTaskDescription", new x());
        e("overridePendingTransition", new r());
        e("setPackageAskScreenCompat", new v());
        e("handleIncomingUser", new q());
        e("getPersistedUriPermissions", new l());
        e("registerReceiverWithFeature", new u());
        c(j1.a());
    }
}
