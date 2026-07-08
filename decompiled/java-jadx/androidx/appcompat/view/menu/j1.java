package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageParser;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class j1 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            yu0.j().s((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            yu0.j().t((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            yu0.j().u((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return yu0.j().j((IBinder) objArr[0], jv0.N2());
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return yu0.j().k((IBinder) objArr[0], jv0.N2());
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            int f = f();
            Intent[] intentArr = (Intent[]) objArr[f];
            String[] strArr = (String[]) objArr[f + 1];
            IBinder iBinder = (IBinder) objArr[f + 2];
            Bundle bundle = (Bundle) objArr[f + 3];
            if (!te.e(intentArr)) {
                return method.invoke(obj, objArr);
            }
            for (Intent intent : intentArr) {
                intent.setExtrasClassLoader(obj.getClass().getClassLoader());
            }
            return Integer.valueOf(yu0.j().B(jv0.N2(), intentArr, strArr, iBinder, bundle));
        }

        public int f() {
            return 2;
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            Intent g = g(objArr);
            if ("android.intent.action.VIEW".equals(g.getAction()) && g.getData() != null) {
                String scheme = g.getData().getScheme();
                if ("http".equals(scheme) || "https".equals(scheme)) {
                    int N2 = jv0.N2();
                    Intent intent = new Intent(g);
                    intent.putExtra("url", g.getData().toString());
                    intent.putExtra("_userId", N2);
                    intent.setPackage(null);
                    intent.setComponent(new ComponentName(yu0.o(), "com.snake.helper.InternalWebBrowser"));
                    yu0.j().D(N2, intent, j(objArr), k(objArr), l(objArr), i(objArr), f(objArr), h(objArr));
                    return 0;
                }
            }
            if (g.getParcelableExtra("_S_|_target_") != null) {
                return method.invoke(obj, objArr);
            }
            if (te.c(g)) {
                if (yu0.h().c(jr.a(jv0.H2(), g.getData()), jv0.N2())) {
                    return 0;
                }
                g.setData(jr.b(jv0.H2(), g.getData()));
                return method.invoke(obj, objArr);
            }
            String dataString = g.getDataString();
            if (dataString != null) {
                if (dataString.equals("package:" + jv0.E2())) {
                    g.setData(Uri.parse("package:" + yu0.o()));
                }
            }
            ResolveInfo y = yu0.u().y(g, PackageParser.PARSE_IS_PRIVILEGED, j(objArr), jv0.N2());
            if (y == null) {
                String str = g.getPackage();
                if (g.getPackage() == null && g.getComponent() == null) {
                    g.setPackage(jv0.E2());
                } else {
                    str = g.getPackage();
                }
                ResolveInfo y2 = yu0.u().y(g, PackageParser.PARSE_IS_PRIVILEGED, j(objArr), jv0.N2());
                if (y2 == null) {
                    g.setPackage(str);
                    return method.invoke(obj, objArr);
                }
                y = y2;
            }
            g.setExtrasClassLoader(obj.getClass().getClassLoader());
            ActivityInfo activityInfo = y.activityInfo;
            g.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            yu0.j().D(jv0.N2(), g(objArr), j(objArr), k(objArr), l(objArr), i(objArr), f(objArr), h(objArr));
            return 0;
        }

        public final int f(Object[] objArr) {
            Object obj = objArr[y8.g() ? '\b' : (char) 7];
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            for (Object obj2 : objArr) {
                if (obj2 instanceof Integer) {
                    return ((Integer) obj2).intValue();
                }
            }
            return 0;
        }

        public final Intent g(Object[] objArr) {
            Object obj = objArr[y8.g() ? (char) 3 : (char) 2];
            if (obj instanceof Intent) {
                return (Intent) obj;
            }
            for (Object obj2 : objArr) {
                if (obj2 instanceof Intent) {
                    return (Intent) obj2;
                }
            }
            return null;
        }

        public final Bundle h(Object[] objArr) {
            Object obj = objArr[y8.g() ? '\t' : '\b'];
            if (obj instanceof Bundle) {
                return (Bundle) obj;
            }
            for (Object obj2 : objArr) {
                if (obj2 instanceof Bundle) {
                    return (Bundle) obj2;
                }
            }
            return null;
        }

        public final int i(Object[] objArr) {
            Object obj = objArr[y8.g() ? (char) 7 : (char) 6];
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            for (Object obj2 : objArr) {
                if (obj2 instanceof Integer) {
                    return ((Integer) obj2).intValue();
                }
            }
            return 0;
        }

        public final String j(Object[] objArr) {
            Object obj = objArr[y8.g() ? (char) 4 : (char) 3];
            if (obj instanceof String) {
                return (String) obj;
            }
            for (Object obj2 : objArr) {
                if (obj2 instanceof String) {
                    return (String) obj2;
                }
            }
            return null;
        }

        public final IBinder k(Object[] objArr) {
            Object obj = objArr[y8.g() ? (char) 5 : (char) 4];
            if (obj instanceof IBinder) {
                return (IBinder) obj;
            }
            for (Object obj2 : objArr) {
                if (obj2 instanceof IBinder) {
                    return (IBinder) obj2;
                }
            }
            return null;
        }

        public final String l(Object[] objArr) {
            Object obj = objArr[y8.g() ? (char) 6 : (char) 5];
            if (obj == null || (obj instanceof String)) {
                return (String) obj;
            }
            return null;
        }
    }

    public static Map a() {
        HashMap hashMap = new HashMap();
        hashMap.put("startActivity", new h());
        hashMap.put("startActivities", new g());
        hashMap.put("activityResumed", new b());
        hashMap.put("activityDestroyed", new a());
        hashMap.put("finishActivity", new c());
        hashMap.put("getAppTasks", new d());
        hashMap.put("getCallingPackage", new f());
        hashMap.put("getCallingActivity", new e());
        return hashMap;
    }
}
