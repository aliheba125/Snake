package androidx.appcompat.view.menu;

import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import android.util.ArrayMap;
import androidx.appcompat.view.menu.qz;
import androidx.appcompat.view.menu.t1;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class fg {
    public static final Set a = new HashSet();

    public static void a(Object obj) {
        if (!y8.d()) {
            lt0.b.e(obj, null);
            return;
        }
        Object c = mt0.b.c(obj);
        if (c != null) {
            jt0.b.e(c, null);
        }
    }

    public static void b() {
        Object b = ot0.b.b();
        if (b != null) {
            a(b);
        }
        Object b2 = nt0.b.b();
        if (b2 != null) {
            a(b2);
        }
        Object b3 = kt0.b.b();
        if (b3 != null) {
            a(b3);
        }
    }

    public static void c() {
        b();
        yu0.m().getContentResolver().call(Uri.parse("content://settings"), "", (String) null, (Bundle) null);
        for (Object obj : ((ArrayMap) t1.j.c(yu0.D())).values()) {
            String[] strArr = (String[]) t1.e.b.c(obj);
            if (strArr != null && strArr.length > 0) {
                String str = strArr[0];
                Set set = a;
                if (!set.contains(str)) {
                    set.add(str);
                    t1.e.c.e(obj, new ig().m((IInterface) t1.e.c.c(obj), yu0.o()));
                    t1.e.b.e(obj, new String[]{str});
                }
            }
        }
    }

    public static void d(Object obj, String str) {
        IInterface l;
        IInterface iInterface = y8.d() ? (IInterface) gg.b.c(obj) : (IInterface) qz.a.c.c(obj);
        if (iInterface instanceof Proxy) {
            return;
        }
        str.hashCode();
        switch (str) {
            case "media":
            case "telephony":
            case "settings":
                l = new wy0().l(iInterface, yu0.o());
                break;
            default:
                l = new ig().m(iInterface, yu0.o());
                break;
        }
        if (y8.d()) {
            gg.b.e(obj, l);
        } else {
            qz.a.c.e(obj, l);
        }
    }
}
