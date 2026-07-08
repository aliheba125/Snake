package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.VersionedPackage;
import android.os.IInterface;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class c20 extends j8 {

    public class a extends md0 {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            PackageInfo m;
            String packageName = ((VersionedPackage) objArr[0]).getPackageName();
            if (y8.j()) {
                m = yu0.u().m(packageName, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
            } else {
                m = yu0.u().m(packageName, ((Integer) objArr[1]).intValue(), jv0.N2());
            }
            if (m != null) {
                return m;
            }
            if (y3.d(packageName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ActivityInfo h;
            ComponentName componentName = (ComponentName) objArr[0];
            if (y8.j()) {
                h = yu0.u().h(componentName, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
            } else {
                h = yu0.u().h(componentName, Math.toIntExact(((Integer) objArr[1]).intValue()), jv0.N2());
            }
            if (h != null) {
                return h;
            }
            if (y3.c(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ApplicationInfo i;
            String str = (String) objArr[0];
            if (y8.j()) {
                i = yu0.u().i(str, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
            } else {
                i = yu0.u().i(str, ((Integer) objArr[1]).intValue(), jv0.N2());
            }
            if (i != null) {
                return i;
            }
            if (y3.d(str)) {
                return method.invoke(obj, objArr);
            }
            return null;
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
            List j;
            if (y8.j()) {
                j = yu0.u().j(Math.toIntExact(((Long) objArr[0]).longValue()), jv0.N2());
            } else {
                j = yu0.u().j(((Integer) objArr[0]).intValue(), jv0.N2());
            }
            return nh0.a(j);
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            List k;
            if (y8.j()) {
                k = yu0.u().k(Math.toIntExact(((Long) objArr[0]).longValue()), jv0.N2());
            } else {
                k = yu0.u().k(((Integer) objArr[0]).intValue(), jv0.N2());
            }
            return nh0.a(k);
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return "com.android.vending";
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            PackageInfo m;
            try {
                String str = (String) objArr[0];
                if (y8.j()) {
                    m = yu0.u().m(str, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
                } else {
                    m = yu0.u().m(str, ((Integer) objArr[1]).intValue(), jv0.N2());
                }
                if (m != null) {
                    return m;
                }
                if (y3.d(str)) {
                    return method.invoke(obj, objArr);
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static class i extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            int intValue = ((Integer) objArr[0]).intValue();
            if (intValue == yu0.p()) {
                Integer valueOf = Integer.valueOf(jv0.J2());
                objArr[0] = valueOf;
                intValue = valueOf.intValue();
            }
            return yu0.u().n(intValue);
        }
    }

    public static class j extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ProviderInfo o;
            ComponentName componentName = (ComponentName) objArr[0];
            if (y8.j()) {
                o = yu0.u().o(componentName, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
            } else {
                o = yu0.u().o(componentName, ((Integer) objArr[1]).intValue(), jv0.N2());
            }
            if (o != null) {
                return o;
            }
            if (y3.c(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    public static class k extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ActivityInfo p;
            ComponentName componentName = (ComponentName) objArr[0];
            if (y8.j()) {
                p = yu0.u().p(componentName, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
            } else {
                p = yu0.u().p(componentName, ((Integer) objArr[1]).intValue(), jv0.N2());
            }
            if (p != null) {
                return p;
            }
            if (y3.c(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    public static class l extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            ServiceInfo q;
            ComponentName componentName = (ComponentName) objArr[0];
            if (y8.j()) {
                q = yu0.u().q(componentName, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2());
            } else {
                q = yu0.u().q(componentName, ((Integer) objArr[1]).intValue(), jv0.N2());
            }
            if (q != null) {
                return q;
            }
            if (y3.c(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    public static class m extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            y6 z2 = x6.w2().z2((String) objArr[0]);
            if (z2 == null) {
                return method.invoke(obj, objArr);
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = z2.m.B;
            if (arrayList2 != null) {
                arrayList.addAll(arrayList2);
            }
            ArrayList arrayList3 = z2.m.C;
            if (arrayList3 != null) {
                arrayList.addAll(arrayList3);
            }
            return nh0.a(arrayList);
        }
    }

    public static class n extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Intent intent = (Intent) od0.c(objArr, Intent.class);
            String str = (String) od0.c(objArr, String.class);
            List u = y8.j() ? yu0.u().u(intent, Math.toIntExact(((Long) od0.c(objArr, Long.class)).longValue()), str, jv0.N2()) : yu0.u().u(intent, ((Integer) od0.c(objArr, Integer.class)).intValue(), str, jv0.N2());
            return y8.c() ? nh0.a(u) : u;
        }
    }

    public static class o extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            List v;
            if (y8.j()) {
                v = yu0.u().v(jv0.G2(), jv0.J2(), Math.toIntExact(((Long) objArr[2]).longValue()), jv0.N2());
            } else {
                v = yu0.u().v(jv0.G2(), jv0.J2(), ((Integer) objArr[2]).intValue(), jv0.N2());
            }
            return nh0.a(v);
        }
    }

    public static class p extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            List w;
            Intent intent = (Intent) objArr[0];
            String str = (String) objArr[1];
            if (y8.j()) {
                w = yu0.u().w(intent, Math.toIntExact(((Long) objArr[2]).longValue()), str, jv0.N2());
            } else {
                w = yu0.u().w(intent, ((Integer) objArr[2]).intValue(), str, jv0.N2());
            }
            return nh0.a(w);
        }
    }

    public static class q extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Intent intent = (Intent) objArr[0];
            int intExact = y8.j() ? Math.toIntExact(((Long) objArr[2]).longValue()) : ((Integer) objArr[2]).intValue();
            if (!"android.support.customtabs.action.CustomTabsService".equals(intent.getAction())) {
                List x = yu0.u().x(intent, intExact, jv0.N2());
                return (x == null || x.isEmpty()) ? method.invoke(obj, objArr) : nh0.a(x);
            }
            ResolveInfo resolveInfo = new ResolveInfo();
            ServiceInfo serviceInfo = new ServiceInfo();
            resolveInfo.serviceInfo = serviceInfo;
            serviceInfo.packageName = "com.android.chrome";
            serviceInfo.name = "android.support.customtabs.ChromeCustomTabsService";
            ArrayList arrayList = new ArrayList();
            arrayList.add(resolveInfo);
            StringBuilder sb = new StringBuilder();
            sb.append("returned: ");
            sb.append(arrayList);
            return nh0.a(arrayList);
        }
    }

    public static class r extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            String str = (String) objArr[0];
            ProviderInfo z = y8.j() ? yu0.u().z(str, Math.toIntExact(((Long) objArr[1]).longValue()), jv0.N2()) : yu0.u().z(str, ((Integer) objArr[1]).intValue(), jv0.N2());
            return z == null ? method.invoke(obj, objArr) : z;
        }
    }

    public static class s extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Intent intent = (Intent) objArr[0];
            String str = (String) objArr[1];
            ResolveInfo A = y8.j() ? yu0.u().A(intent, str, Math.toIntExact(((Long) objArr[2]).longValue()), jv0.N2()) : yu0.u().A(intent, str, ((Integer) objArr[2]).intValue(), jv0.N2());
            return A != null ? A : method.invoke(obj, objArr);
        }
    }

    public static class t extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Intent intent = (Intent) objArr[0];
            String str = (String) objArr[1];
            if (!"android.support.customtabs.action.CustomTabsService".equals(intent.getAction())) {
                ResolveInfo B = y8.j() ? yu0.u().B(intent, Math.toIntExact(((Long) objArr[2]).longValue()), str, jv0.N2()) : yu0.u().B(intent, ((Integer) objArr[2]).intValue(), str, jv0.N2());
                return B != null ? B : method.invoke(obj, objArr);
            }
            ResolveInfo resolveInfo = new ResolveInfo();
            ServiceInfo serviceInfo = new ServiceInfo();
            resolveInfo.serviceInfo = serviceInfo;
            serviceInfo.packageName = "com.android.chrome";
            serviceInfo.name = "com.snake.helper.CustomTabsService";
            return resolveInfo;
        }
    }

    public static class u extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return null;
        }
    }

    public c20() {
        super(((IInterface) t1.c.b()).asBinder());
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return t1.c.b();
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        t1.c.d(obj2);
        l("package");
        PackageManager packageManager = (PackageManager) tg.d.c(t1.m.b(yu0.D(), new Object[0]));
        if (packageManager != null) {
            try {
                c4.b.e(packageManager, obj2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new di0("getPackageUid"));
        d(new di0("canRequestPackageInstalls"));
        e("resolveIntent", new s());
        e("resolveService", new t());
        e("getPackageInfo", new h());
        e("getProviderInfo", new j());
        e("getReceiverInfo", new k());
        e("getActivityInfo", new b());
        e("getServiceInfo", new l());
        e("getInstalledApplications", new e());
        e("queryIntentActivities", new p());
        e("queryIntentServices", new q());
        e("getInstalledPackages", new f());
        e("getApplicationInfo", new c());
        e("queryContentProviders", new o());
        e("queryIntentReceivers", new n());
        e("resolveContentProvider", new r());
        e("getPackagesForUid", new i());
        e("getInstallerPackageName", new g());
        e("getSharedLibraries", new m());
        e("getComponentEnabledSetting", new d());
        e("setComponentEnabledSetting", new u());
        e("getPackageInfoVersioned", new a());
    }
}
