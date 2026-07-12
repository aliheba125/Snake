package androidx.appcompat.view.menu;

import android.location.ILocationListener;
import android.os.IBinder;
import android.os.IInterface;
import androidx.appcompat.view.menu.go0;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class r10 extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Arrays.asList("gps", "network");
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nv0.l() ? "gps" : method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nv0.l() ? nv0.f().i(jv0.N2(), jv0.E2()).b() : method.invoke(obj, objArr);
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return nv0.l() ? nv0.f().i(jv0.N2(), jv0.E2()).b() : method.invoke(obj, objArr);
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (nv0.l()) {
                return nv0.f().i(jv0.N2(), jv0.E2()).b();
            }
            return null;
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Object invoke = method.invoke(obj, objArr);
            if (nv0.l()) {
                go0.b bVar = hl0.b;
                Boolean bool = Boolean.FALSE;
                bVar.e(invoke, bool);
                if (nv0.f().h(jv0.N2(), jv0.E2()) == null) {
                    hl0.c.e(invoke, bool);
                }
            }
            return invoke;
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (!nv0.l()) {
                return method.invoke(obj, objArr);
            }
            Object c = od0.c(objArr, v90.a.p());
            if (c != null) {
                v90.b.b(c, new Object[0]);
                p6 i = nv0.f().i(jv0.N2(), jv0.E2());
                if (i != null) {
                    try {
                        String format = new SimpleDateFormat("HHmmss:SS", Locale.US).format(new Date());
                        String c2 = p6.c(i.d());
                        String c3 = p6.c(i.e());
                        String f = p6.f(i);
                        String i2 = p6.i(i);
                        String a = p6.a(String.format("$GPGGA,%s,%s,%s,%s,%s,1,%s,692,.00,M,.00,M,,,", format, c2, f, c3, i2, Integer.valueOf(i.b().getExtras().getInt("satellites"))));
                        String a2 = p6.a(String.format("$GPRMC,%s,A,%s,%s,%s,%s,0,0,260717,,,A,", format, c2, f, c3, i2));
                        v90.c.b(c, Long.valueOf(System.currentTimeMillis()), "$GPGSV,1,1,04,12,05,159,36,15,41,087,15,19,38,262,30,31,56,146,19,*73");
                        if (y8.c()) {
                            w90.b.b(c, Long.valueOf(System.currentTimeMillis()), "$GPGSV,1,1,04,12,05,159,36,15,41,087,15,19,38,262,30,31,56,146,19,*73");
                            w90.b.b(c, Long.valueOf(System.currentTimeMillis()), a);
                            w90.b.b(c, Long.valueOf(System.currentTimeMillis()), "$GPVTG,0,T,0,M,0,N,0,K,A,*25");
                            w90.b.b(c, Long.valueOf(System.currentTimeMillis()), a2);
                            w90.b.b(c, Long.valueOf(System.currentTimeMillis()), "$GPGSA,A,2,12,15,19,31,,,,,,,,,604,712,986,*27");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            return Boolean.TRUE;
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Object d;
            if (nv0.l() && (d = od0.d(objArr, ILocationListener.Stub.class)) != null) {
                try {
                    x90.b.e(d, new u90().l(x90.b.b()));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class i extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.h(objArr);
            if (nv0.l()) {
                return 0;
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class j extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            Object obj2 = objArr[0];
            if (!(obj2 instanceof IInterface)) {
                return method.invoke(obj, objArr);
            }
            nv0.f().m(((IInterface) obj2).asBinder());
            return 0;
        }
    }

    public static class k extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            if (nv0.l()) {
                Object obj2 = objArr[1];
                if (obj2 instanceof IInterface) {
                    nv0.f().n(((IInterface) obj2).asBinder());
                    return 0;
                }
            }
            return method.invoke(obj, objArr);
        }
    }

    public static class l extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.valueOf(Objects.equals((String) objArr[0], "gps"));
        }
    }

    public static class m extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return 0;
        }
    }

    public r10() {
        super((IBinder) bt0.c.b("location"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return q10.b.b(bt0.c.b("location"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("location");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.f(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("registerGnssStatusCallback", new g());
        e("registerLocationListener", new h());
        e("getLastLocation", new e());
        e("getLastKnownLocation", new d());
        e("getCurrentLocation", new c());
        e("requestLocationUpdates", new k());
        e("removeUpdates", new j());
        e("getProviderProperties", new f());
        e("removeGpsStatusListener", new i());
        e("getBestProvider", new b());
        e("getAllProviders", new a());
        e("isProviderEnabledForUser", new l());
        e("setExtraLocationControllerPackageEnabled", new m());
    }
}
