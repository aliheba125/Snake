package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class gw1 implements qu1 {
    public static final Map g = new o4();
    public final SharedPreferences a;
    public final Runnable b;
    public final SharedPreferences.OnSharedPreferenceChangeListener c;
    public final Object d;
    public volatile Map e;
    public final List f;

    public gw1(SharedPreferences sharedPreferences, Runnable runnable) {
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: androidx.appcompat.view.menu.mw1
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                gw1.this.d(sharedPreferences2, str);
            }
        };
        this.c = onSharedPreferenceChangeListener;
        this.d = new Object();
        this.f = new ArrayList();
        this.a = sharedPreferences;
        this.b = runnable;
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static SharedPreferences a(Context context, String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!str.startsWith("direct_boot:")) {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return sharedPreferences;
            }
            if (zt1.a()) {
                context = context.createDeviceProtectedStorageContext();
            }
            SharedPreferences sharedPreferences2 = context.getSharedPreferences(str.substring(12), 0);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return sharedPreferences2;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static gw1 b(Context context, String str, Runnable runnable) {
        gw1 gw1Var;
        if (zt1.a() && !str.startsWith("direct_boot:") && !zt1.c(context)) {
            return null;
        }
        synchronized (gw1.class) {
            try {
                Map map = g;
                gw1Var = (gw1) map.get(str);
                if (gw1Var == null) {
                    gw1Var = new gw1(a(context, str), runnable);
                    map.put(str, gw1Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return gw1Var;
    }

    public static synchronized void c() {
        synchronized (gw1.class) {
            try {
                for (gw1 gw1Var : g.values()) {
                    gw1Var.a.unregisterOnSharedPreferenceChangeListener(gw1Var.c);
                }
                g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void d(SharedPreferences sharedPreferences, String str) {
        synchronized (this.d) {
            this.e = null;
            this.b.run();
        }
        synchronized (this) {
            try {
                Iterator it = this.f.iterator();
                if (it.hasNext()) {
                    jy0.a(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.qu1
    public final Object h(String str) {
        Map<String, ?> map = this.e;
        if (map == null) {
            synchronized (this.d) {
                try {
                    map = this.e;
                    if (map == null) {
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            Map<String, ?> all = this.a.getAll();
                            this.e = all;
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            map = all;
                        } catch (Throwable th) {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            throw th;
                        }
                    }
                } finally {
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }
}
