package androidx.appcompat.view.menu;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public class a {
    public static final Map b = new HashMap();
    public final Set a = new HashSet();

    /* JADX WARN: Multi-variable type inference failed */
    public a(File file) {
        ZipFile zipFile;
        boolean hasMoreElements;
        ZipFile zipFile2 = null;
        ZipFile zipFile3 = null;
        try {
            try {
                zipFile = new ZipFile(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (true) {
                hasMoreElements = entries.hasMoreElements();
                if (hasMoreElements == 0) {
                    break;
                }
                String name = entries.nextElement().getName();
                if (name.startsWith("lib/arm64-v8a")) {
                    this.a.add("arm64-v8a");
                } else if (name.startsWith("lib/armeabi")) {
                    this.a.add("armeabi");
                } else if (name.startsWith("lib/armeabi-v7a")) {
                    this.a.add("armeabi-v7a");
                }
            }
            fc.a(zipFile);
            zipFile2 = hasMoreElements;
        } catch (Exception e2) {
            e = e2;
            zipFile3 = zipFile;
            e.printStackTrace();
            fc.a(zipFile3);
            zipFile2 = zipFile3;
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            fc.a(zipFile2);
            throw th;
        }
    }

    public static boolean d(File file) {
        Map map = b;
        a aVar = (a) map.get(file);
        if (aVar == null) {
            aVar = new a(file);
            map.put(file, aVar);
        }
        if (aVar.c()) {
            return true;
        }
        return yu0.y() ? aVar.b() : aVar.a();
    }

    public boolean a() {
        return this.a.contains("armeabi") || this.a.contains("armeabi-v7a");
    }

    public boolean b() {
        return this.a.contains("arm64-v8a");
    }

    public boolean c() {
        return this.a.isEmpty();
    }
}
