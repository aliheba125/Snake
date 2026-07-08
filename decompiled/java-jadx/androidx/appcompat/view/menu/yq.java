package androidx.appcompat.view.menu;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;

/* loaded from: classes.dex */
public final class yq {
    public static final yq a = new yq();

    public final Object a(String str, ClassLoader classLoader, Class cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    public final List b(Class cls, ClassLoader classLoader) {
        List u;
        try {
            return d(cls, classLoader);
        } catch (Throwable unused) {
            u = ad.u(ServiceLoader.load(cls, classLoader));
            return u;
        }
    }

    public final List c() {
        ra0 ra0Var;
        if (!zq.a()) {
            return b(ra0.class, ra0.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            ra0 ra0Var2 = null;
            try {
                ra0Var = (ra0) ra0.class.cast(Class.forName("androidx.appcompat.view.menu.d2", true, ra0.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                ra0Var = null;
            }
            if (ra0Var != null) {
                arrayList.add(ra0Var);
            }
            try {
                ra0Var2 = (ra0) ra0.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, ra0.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (ra0Var2 == null) {
                return arrayList;
            }
            arrayList.add(ra0Var2);
            return arrayList;
        } catch (Throwable unused3) {
            return b(ra0.class, ra0.class.getClassLoader());
        }
    }

    public final List d(Class cls, ClassLoader classLoader) {
        Set x;
        int j;
        ArrayList list = Collections.list(classLoader.getResources("META-INF/services/" + cls.getName()));
        z50.d(list, "list(this)");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            xc.k(arrayList, a.e((URL) it.next()));
        }
        x = ad.x(arrayList);
        if (!(!x.isEmpty())) {
            throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
        }
        j = tc.j(x, 10);
        ArrayList arrayList2 = new ArrayList(j);
        Iterator it2 = x.iterator();
        while (it2.hasNext()) {
            arrayList2.add(a.a((String) it2.next(), classLoader, cls));
        }
        return arrayList2;
    }

    public final List e(URL url) {
        boolean i;
        BufferedReader bufferedReader;
        String z;
        String E;
        String z2;
        String url2 = url.toString();
        i = wx0.i(url2, "jar", false, 2, null);
        if (!i) {
            bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
            try {
                List f = a.f(bufferedReader);
                gc.a(bufferedReader, null);
                return f;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        }
        z = xx0.z(url2, "jar:file:", null, 2, null);
        E = xx0.E(z, '!', null, 2, null);
        z2 = xx0.z(url2, "!/", null, 2, null);
        JarFile jarFile = new JarFile(E, false);
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(z2)), "UTF-8"));
            try {
                List f2 = a.f(bufferedReader);
                gc.a(bufferedReader, null);
                jarFile.close();
                return f2;
            } finally {
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    jarFile.close();
                    throw th3;
                } catch (Throwable th4) {
                    pp.a(th2, th4);
                    throw th2;
                }
            }
        }
    }

    public final List f(BufferedReader bufferedReader) {
        List u;
        String F;
        CharSequence G;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                u = ad.u(linkedHashSet);
                return u;
            }
            F = xx0.F(readLine, "#", null, 2, null);
            G = xx0.G(F);
            String obj = G.toString();
            for (int i = 0; i < obj.length(); i++) {
                char charAt = obj.charAt(i);
                if (charAt != '.' && !Character.isJavaIdentifierPart(charAt)) {
                    throw new IllegalArgumentException(("Illegal service provider class name: " + obj).toString());
                }
            }
            if (obj.length() > 0) {
                linkedHashSet.add(obj);
            }
        }
    }
}
