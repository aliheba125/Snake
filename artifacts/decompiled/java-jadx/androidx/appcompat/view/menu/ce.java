package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ce {
    public final Object a;
    public final c b;

    public static class b implements c {
        public final Class a;

        public final Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) this.a), PackageParser.PARSE_IS_PRIVILEGED);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(this.a);
                sb.append(" has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        @Override // androidx.appcompat.view.menu.ce.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public List a(Context context) {
            Bundle b = b(context);
            if (b == null) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : b.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(b.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        public b(Class cls) {
            this.a = cls;
        }
    }

    public interface c {
        List a(Object obj);
    }

    public ce(Object obj, c cVar) {
        this.a = obj;
        this.b = cVar;
    }

    public static ce c(Context context, Class cls) {
        return new ce(context, new b(cls));
    }

    public static ComponentRegistrar d(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                return (ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new f60(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            String.format("Class %s is not an found.", str);
            return null;
        } catch (IllegalAccessException e) {
            throw new f60(String.format("Could not instantiate %s.", str), e);
        } catch (InstantiationException e2) {
            throw new f60(String.format("Could not instantiate %s.", str), e2);
        } catch (NoSuchMethodException e3) {
            throw new f60(String.format("Could not instantiate %s", str), e3);
        } catch (InvocationTargetException e4) {
            throw new f60(String.format("Could not instantiate %s", str), e4);
        }
    }

    public List b() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.b.a(this.a)) {
            arrayList.add(new el0() { // from class: androidx.appcompat.view.menu.be
                @Override // androidx.appcompat.view.menu.el0
                public final Object get() {
                    ComponentRegistrar d;
                    d = ce.d(str);
                    return d;
                }
            });
        }
        return arrayList;
    }
}
