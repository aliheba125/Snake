package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.appcompat.view.menu.ai;
import androidx.appcompat.view.menu.b20;
import androidx.appcompat.view.menu.hc2;
import androidx.appcompat.view.menu.je2;
import androidx.appcompat.view.menu.lk1;
import androidx.appcompat.view.menu.m92;
import androidx.appcompat.view.menu.mj0;
import androidx.appcompat.view.menu.od2;
import androidx.appcompat.view.menu.vf0;
import androidx.appcompat.view.menu.vm1;
import androidx.appcompat.view.menu.wf0;
import androidx.appcompat.view.menu.yx;
import androidx.appcompat.view.menu.zh1;
import com.google.android.gms.common.util.DynamiteApi;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class DynamiteModule {
    public static Boolean h = null;
    public static String i = null;
    public static boolean j = false;
    public static int k = -1;
    public static Boolean l;
    public static od2 q;
    public static je2 r;
    public final Context a;
    public static final ThreadLocal m = new ThreadLocal();
    public static final ThreadLocal n = new vm1();
    public static final b.a o = new com.google.android.gms.dynamite.a();
    public static final b b = new com.google.android.gms.dynamite.b();
    public static final b c = new c();
    public static final b d = new d();
    public static final b e = new e();
    public static final b f = new f();
    public static final b g = new g();
    public static final b p = new h();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        public /* synthetic */ a(String str, hc2 hc2Var) {
            super(str);
        }

        public /* synthetic */ a(String str, Throwable th, hc2 hc2Var) {
            super(str, th);
        }
    }

    public interface b {

        public interface a {
            int a(Context context, String str);

            int b(Context context, String str, boolean z);
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b, reason: collision with other inner class name */
        public static class C0058b {
            public int a = 0;
            public int b = 0;
            public int c = 0;
        }

        C0058b a(Context context, String str, a aVar);
    }

    public DynamiteModule(Context context) {
        mj0.i(context);
        this.a = context;
    }

    public static int a(Context context, String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (wf0.a(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb = new StringBuilder();
            sb.append("Module descriptor id '");
            sb.append(valueOf);
            sb.append("' didn't match expected id '");
            sb.append(str);
            sb.append("'");
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Local module descriptor class for ");
            sb2.append(str);
            sb2.append(" not found.");
            return 0;
        } catch (Exception e2) {
            "Failed to load module descriptor class: ".concat(String.valueOf(e2.getMessage()));
            return 0;
        }
    }

    public static int b(Context context, String str) {
        return e(context, str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x02b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DynamiteModule d(Context context, b bVar, String str) {
        long j2;
        Cursor cursor;
        Boolean bool;
        b20 y2;
        DynamiteModule dynamiteModule;
        je2 je2Var;
        Boolean valueOf;
        ThreadLocal threadLocal = m;
        m92 m92Var = (m92) threadLocal.get();
        m92 m92Var2 = new m92(null);
        threadLocal.set(m92Var2);
        ThreadLocal threadLocal2 = n;
        long longValue = ((Long) threadLocal2.get()).longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            b.C0058b a2 = bVar.a(context, str, o);
            int i2 = a2.a;
            int i3 = a2.b;
            StringBuilder sb = new StringBuilder();
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i3);
            int i4 = a2.c;
            if (i4 != 0) {
                if (i4 == -1) {
                    try {
                        if (a2.a != 0) {
                            i4 = -1;
                        }
                    } catch (Throwable th) {
                        th = th;
                        j2 = 0;
                        if (longValue != j2) {
                            n.remove();
                        } else {
                            n.set(Long.valueOf(longValue));
                        }
                        cursor = m92Var2.a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        m.set(m92Var);
                        throw th;
                    }
                }
                if (i4 != 1 || a2.b != 0) {
                    if (i4 == -1) {
                        DynamiteModule g2 = g(context, str);
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor2 = m92Var2.a;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        threadLocal.set(m92Var);
                        return g2;
                    }
                    if (i4 != 1) {
                        throw new a("VersionPolicy returned invalid code:" + i4, null);
                    }
                    try {
                        int i5 = a2.b;
                        try {
                            synchronized (DynamiteModule.class) {
                                if (!j(context)) {
                                    throw new a("Remote loading disabled", null);
                                }
                                bool = h;
                            }
                            if (bool == null) {
                                throw new a("Failed to determine which loading route to use.", null);
                            }
                            if (bool.booleanValue()) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Selected remote version of ");
                                sb2.append(str);
                                sb2.append(", version >= ");
                                sb2.append(i5);
                                synchronized (DynamiteModule.class) {
                                    je2Var = r;
                                }
                                if (je2Var == null) {
                                    throw new a("DynamiteLoaderV2 was not cached.", null);
                                }
                                m92 m92Var3 = (m92) threadLocal.get();
                                if (m92Var3 == null || m92Var3.a == null) {
                                    throw new a("No result cursor", null);
                                }
                                Context applicationContext = context.getApplicationContext();
                                Cursor cursor3 = m92Var3.a;
                                vf0.k(null);
                                synchronized (DynamiteModule.class) {
                                    valueOf = Boolean.valueOf(k >= 2);
                                }
                                Context context2 = (Context) vf0.j(valueOf.booleanValue() ? je2Var.u2(vf0.k(applicationContext), str, i5, vf0.k(cursor3)) : je2Var.k(vf0.k(applicationContext), str, i5, vf0.k(cursor3)));
                                if (context2 == null) {
                                    throw new a("Failed to get module context", null);
                                }
                                dynamiteModule = new DynamiteModule(context2);
                            } else {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("Selected remote version of ");
                                sb3.append(str);
                                sb3.append(", version >= ");
                                sb3.append(i5);
                                od2 k2 = k(context);
                                if (k2 == null) {
                                    throw new a("Failed to create IDynamiteLoader.", null);
                                }
                                int k3 = k2.k();
                                if (k3 >= 3) {
                                    m92 m92Var4 = (m92) threadLocal.get();
                                    if (m92Var4 == null) {
                                        throw new a("No cached result cursor holder", null);
                                    }
                                    y2 = k2.x2(vf0.k(context), str, i5, vf0.k(m92Var4.a));
                                } else {
                                    y2 = k3 == 2 ? k2.y2(vf0.k(context), str, i5) : k2.w2(vf0.k(context), str, i5);
                                }
                                Object j3 = vf0.j(y2);
                                if (j3 == null) {
                                    throw new a("Failed to load remote module.", null);
                                }
                                dynamiteModule = new DynamiteModule((Context) j3);
                            }
                            if (longValue == 0) {
                                threadLocal2.remove();
                            } else {
                                threadLocal2.set(Long.valueOf(longValue));
                            }
                            Cursor cursor4 = m92Var2.a;
                            if (cursor4 != null) {
                                cursor4.close();
                            }
                            threadLocal.set(m92Var);
                            return dynamiteModule;
                        } catch (RemoteException e2) {
                            throw new a("Failed to load remote module.", e2, null);
                        } catch (a e3) {
                            throw e3;
                        } catch (Throwable th2) {
                            ai.a(context, th2);
                            throw new a("Failed to load remote module.", th2, null);
                        }
                    } catch (a e4) {
                        String message = e4.getMessage();
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Failed to load remote module: ");
                        sb4.append(message);
                        int i6 = a2.a;
                        if (i6 == 0 || bVar.a(context, str, new i(i6, 0)).c != -1) {
                            throw new a("Remote load failed. No local fallback found.", e4, null);
                        }
                        DynamiteModule g3 = g(context, str);
                        if (longValue == 0) {
                            n.remove();
                        } else {
                            n.set(Long.valueOf(longValue));
                        }
                        Cursor cursor5 = m92Var2.a;
                        if (cursor5 != null) {
                            cursor5.close();
                        }
                        m.set(m92Var);
                        return g3;
                    }
                }
            }
            throw new a("No acceptable module " + str + " found. Local version is " + a2.a + " and remote version is " + a2.b + ".", null);
        } catch (Throwable th3) {
            th = th3;
            j2 = 0;
            if (longValue != j2) {
            }
            cursor = m92Var2.a;
            if (cursor != null) {
            }
            m.set(m92Var);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x014b, code lost:
    
        if (i(r11) != false) goto L100;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x018d -> B:24:0x0192). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x018f -> B:24:0x0192). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int e(Context context, String str, boolean z) {
        Field declaredField;
        Throwable th;
        RemoteException e2;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = h;
                Cursor cursor2 = null;
                int i2 = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e3) {
                        String obj = e3.toString();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Failed to load module via V2: ");
                        sb.append(obj);
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                h(classLoader);
                            } catch (a unused) {
                            }
                            bool = Boolean.TRUE;
                        } else {
                            if (!j(context)) {
                                return 0;
                            }
                            if (!j) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int f2 = f(context, str, z, true);
                                        String str2 = i;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader a2 = zh1.a();
                                            if (a2 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    String str3 = i;
                                                    mj0.i(str3);
                                                    a2 = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = i;
                                                    mj0.i(str4);
                                                    a2 = new lk1(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            h(a2);
                                            declaredField.set(null, a2);
                                            h = bool2;
                                            return f2;
                                        }
                                        return f2;
                                    } catch (a unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        h = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return f(context, str, z, false);
                    } catch (a e4) {
                        String message = e4.getMessage();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Failed to retrieve remote module version: ");
                        sb2.append(message);
                        return 0;
                    }
                }
                od2 k2 = k(context);
                try {
                    if (k2 != null) {
                        try {
                            int k3 = k2.k();
                            if (k3 >= 3) {
                                m92 m92Var = (m92) m.get();
                                if (m92Var == null || (cursor = m92Var.a) == null) {
                                    Cursor cursor3 = (Cursor) vf0.j(k2.z2(vf0.k(context), str, z, ((Long) n.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i3 = cursor3.getInt(0);
                                                if (i3 > 0) {
                                                }
                                                cursor2 = cursor3;
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                i2 = i3;
                                            }
                                        } catch (RemoteException e5) {
                                            e2 = e5;
                                            cursor2 = cursor3;
                                            String message2 = e2.getMessage();
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append("Failed to retrieve remote module version: ");
                                            sb3.append(message2);
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return i2;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                } else {
                                    i2 = cursor.getInt(0);
                                }
                            } else {
                                i2 = k3 == 2 ? k2.v2(vf0.k(context), str, z) : k2.u2(vf0.k(context), str, z);
                            }
                        } catch (RemoteException e6) {
                            e2 = e6;
                        }
                    }
                    return i2;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            ai.a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a5, code lost:
    
        r10.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c6  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int f(Context context, String str, boolean z, boolean z2) {
        Throwable th;
        Exception e2;
        ?? r0 = 0;
        ?? r02 = 0;
        ?? r03 = 0;
        ?? r04 = 0;
        try {
            try {
                boolean z3 = true;
                Cursor query = context.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(((Long) n.get()).longValue())).build(), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            boolean z4 = false;
                            int i2 = query.getInt(0);
                            if (i2 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        i = query.getString(2);
                                        int columnIndex = query.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            k = query.getInt(columnIndex);
                                        }
                                        int columnIndex2 = query.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            if (query.getInt(columnIndex2) == 0) {
                                                z3 = false;
                                            }
                                            j = z3;
                                            z4 = z3;
                                        }
                                    } finally {
                                    }
                                }
                                if (i(query)) {
                                    query = null;
                                }
                            }
                            if (z2 && z4) {
                                throw new a("forcing fallback to container DynamiteLoader impl", r03 == true ? 1 : 0);
                            }
                            return i2;
                        }
                    } catch (Exception e3) {
                        e2 = e3;
                        if (e2 instanceof a) {
                            throw e2;
                        }
                        throw new a("V2 version check failed", e2, r02 == true ? 1 : 0);
                    }
                }
                throw new a("Failed to connect to dynamite module ContentResolver.", r04 == true ? 1 : 0);
            } catch (Throwable th2) {
                th = th2;
                r0 = context;
                if (r0 != 0) {
                    r0.close();
                }
                throw th;
            }
        } catch (Exception e4) {
            e2 = e4;
        } catch (Throwable th3) {
            th = th3;
            if (r0 != 0) {
            }
            throw th;
        }
    }

    public static DynamiteModule g(Context context, String str) {
        "Selected local version of ".concat(String.valueOf(str));
        return new DynamiteModule(context.getApplicationContext());
    }

    public static void h(ClassLoader classLoader) {
        je2 je2Var;
        hc2 hc2Var = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                je2Var = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                je2Var = queryLocalInterface instanceof je2 ? (je2) queryLocalInterface : new je2(iBinder);
            }
            r = je2Var;
        } catch (ClassNotFoundException e2) {
            e = e2;
            throw new a("Failed to instantiate dynamite loader", e, hc2Var);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw new a("Failed to instantiate dynamite loader", e, hc2Var);
        } catch (InstantiationException e4) {
            e = e4;
            throw new a("Failed to instantiate dynamite loader", e, hc2Var);
        } catch (NoSuchMethodException e5) {
            e = e5;
            throw new a("Failed to instantiate dynamite loader", e, hc2Var);
        } catch (InvocationTargetException e6) {
            e = e6;
            throw new a("Failed to instantiate dynamite loader", e, hc2Var);
        }
    }

    public static boolean i(Cursor cursor) {
        m92 m92Var = (m92) m.get();
        if (m92Var == null || m92Var.a != null) {
            return false;
        }
        m92Var.a = cursor;
        return true;
    }

    public static boolean j(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(l)) {
            return true;
        }
        boolean z = false;
        if (l == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (yx.f().h(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z = true;
            }
            Boolean valueOf = Boolean.valueOf(z);
            l = valueOf;
            z = valueOf.booleanValue();
            if (z && resolveContentProvider != null && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                j = true;
            }
        }
        return z;
    }

    public static od2 k(Context context) {
        od2 od2Var;
        synchronized (DynamiteModule.class) {
            od2 od2Var2 = q;
            if (od2Var2 != null) {
                return od2Var2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    od2Var = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    od2Var = queryLocalInterface instanceof od2 ? (od2) queryLocalInterface : new od2(iBinder);
                }
                if (od2Var != null) {
                    q = od2Var;
                    return od2Var;
                }
            } catch (Exception e2) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to load IDynamiteLoader from GmsCore: ");
                sb.append(message);
            }
            return null;
        }
    }

    public IBinder c(String str) {
        try {
            return (IBinder) this.a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            throw new a("Failed to instantiate module class: ".concat(String.valueOf(str)), e2, null);
        }
    }
}
