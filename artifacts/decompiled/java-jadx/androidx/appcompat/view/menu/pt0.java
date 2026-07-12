package androidx.appcompat.view.menu;

import android.content.pm.PackageInfo;
import android.content.pm.PackageParser;
import android.os.Parcel;
import android.util.ArrayMap;
import android.util.AtomicFile;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class pt0 {
    public final ArrayMap a;
    public final Map b;
    public final Map c;
    public int d;

    public pt0() {
        ArrayMap arrayMap = new ArrayMap();
        this.a = arrayMap;
        this.b = new HashMap();
        this.c = bu0.p;
        this.d = 0;
        synchronized (arrayMap) {
            c();
            bu0.a();
        }
    }

    public final int a(y6 y6Var) {
        Integer num = (Integer) this.b.get(y6Var.m.y);
        if (num != null) {
            return num.intValue();
        }
        int i = this.d;
        if (i >= 19999) {
            return -1;
        }
        int i2 = i + 1;
        this.d = i2;
        this.b.put(y6Var.m.y, Integer.valueOf(i2));
        return this.d + 10000;
    }

    public y6 b(String str, PackageParser.Package r4, j50 j50Var) {
        y6 y6Var = new y6();
        u6 u6Var = new u6(r4);
        y6Var.m = u6Var;
        u6Var.K = j50Var;
        y6Var.o = j50Var;
        u6Var.x = y6Var;
        u6Var.E = zg0.d(u6Var, 0, z6.a(), 0);
        synchronized (this.a) {
            try {
                y6 y6Var2 = (y6) this.a.get(str);
                if (y6Var2 != null) {
                    y6Var.n = y6Var2.n;
                    y6Var.p = y6Var2.p;
                } else if (!f(y6Var)) {
                    throw new RuntimeException("registerAppIdLPw err.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return y6Var;
    }

    public final void c() {
        Parcel obtain = Parcel.obtain();
        try {
            byte[] j = lr.j(lv0.u());
            obtain.unmarshall(j, 0, j.length);
            obtain.setDataPosition(0);
            this.d = obtain.readInt();
            HashMap readHashMap = obtain.readHashMap(HashMap.class.getClassLoader());
            synchronized (this.b) {
                this.b.clear();
                this.b.putAll(readHashMap);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
    }

    public final PackageParser.Package d(String str) {
        try {
            PackageParser b = dh0.b();
            PackageParser.Package c = dh0.c(b, new File(str), 0);
            dh0.a(b, c, 0);
            return c;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final y6 e(PackageInfo packageInfo, j50 j50Var) {
        PackageParser.Package d = d(packageInfo.applicationInfo.sourceDir);
        if (d == null) {
            throw new RuntimeException("parser apk error.");
        }
        d.applicationInfo = yu0.r().getPackageInfo(d.packageName, 0).applicationInfo;
        return b(d.packageName, d, j50Var);
    }

    public boolean f(y6 y6Var) {
        bu0 bu0Var;
        String str = y6Var.m.A;
        if (str != null) {
            bu0Var = (bu0) this.c.get(str);
            if (bu0Var == null) {
                bu0Var = new bu0(str);
                bu0Var.n = a(y6Var);
                this.c.put(str, bu0Var);
            }
        } else {
            bu0Var = null;
        }
        if (bu0Var != null) {
            y6Var.n = bu0Var.n;
        }
        if (y6Var.n == 0) {
            y6Var.n = a(y6Var);
        }
        boolean z = y6Var.n >= 0;
        h();
        bu0.b();
        return z;
    }

    public void g(String str) {
        this.a.remove(str);
    }

    public final void h() {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(lv0.u());
        FileOutputStream fileOutputStream = null;
        try {
            try {
                Set keySet = this.a.keySet();
                Iterator it = new HashSet(this.b.keySet()).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (!keySet.contains(str)) {
                        this.b.remove(str);
                    }
                }
                obtain.writeInt(this.d);
                obtain.writeMap(this.b);
                fileOutputStream = atomicFile.startWrite();
                lr.l(obtain, fileOutputStream);
                atomicFile.finishWrite(fileOutputStream);
            } catch (Exception e) {
                e.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
            }
            obtain.recycle();
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    public void i() {
        synchronized (this.a) {
            try {
                File d = lv0.d();
                lr.g(d);
                File[] listFiles = d.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        if (file.isDirectory()) {
                            j(file.getName());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void j(String str) {
        synchronized (this.a) {
            k(lv0.b(str));
        }
    }

    public final void k(File file) {
        String name = file.getName();
        Parcel obtain = Parcel.obtain();
        try {
            byte[] j = lr.j(lv0.p(name));
            obtain.unmarshall(j, 0, j.length);
            obtain.setDataPosition(0);
            y6 y6Var = new y6(obtain);
            y6Var.m.x = y6Var;
            if (y6Var.o.b(1)) {
                PackageInfo packageInfo = yu0.r().getPackageInfo(name, PackageParser.PARSE_IS_PRIVILEGED);
                if (!packageInfo.applicationInfo.sourceDir.equals(y6Var.m.G)) {
                    a7.e().n(y6Var.m.y);
                    y6Var.m = e(packageInfo, y6Var.o).m;
                }
            } else {
                u6 u6Var = y6Var.m;
                u6Var.E = zg0.d(u6Var, 0, z6.a(), 0);
            }
            y6Var.i();
            this.a.put(y6Var.m.y, y6Var);
        } finally {
            try {
            } finally {
            }
        }
    }
}
