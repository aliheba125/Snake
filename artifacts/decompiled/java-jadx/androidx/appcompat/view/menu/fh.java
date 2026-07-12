package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.cz;
import dalvik.system.PathClassLoader;
import java.lang.invoke.MethodHandle;
import java.lang.reflect.Executable;

/* loaded from: classes.dex */
public final class fh extends PathClassLoader {
    public fh() {
        super(a(), null);
    }

    public static String a() {
        return System.getProperty("java.boot.class.path", "").split(":", 2)[0];
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str) {
        if (Object.class.getName().equals(str)) {
            return Object.class;
        }
        try {
            return findClass(str);
        } catch (ClassNotFoundException unused) {
            return Executable.class.getName().equals(str) ? cz.c.class : MethodHandle.class.getName().equals(str) ? cz.e.class : Class.class.getName().equals(str) ? cz.b.class : super.loadClass(str);
        }
    }
}
