package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageParser;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import androidx.appcompat.view.menu.st;
import io.flutter.embedding.engine.FlutterJNI;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class st {
    public boolean a = false;
    public c b;
    public long c;
    public gt d;
    public FlutterJNI e;
    public ExecutorService f;
    public Future g;

    public class a implements Callable {
        public final /* synthetic */ Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public b call() {
            p11 i = p11.i("FlutterLoader initTask");
            try {
                st.a(st.this, this.a);
                try {
                    st.this.e.loadLibrary();
                    st.this.e.updateRefreshRate();
                    st.this.f.execute(new Runnable() { // from class: androidx.appcompat.view.menu.rt
                        @Override // java.lang.Runnable
                        public final void run() {
                            st.a.this.c();
                        }
                    });
                    b bVar = new b(uh0.d(this.a), uh0.a(this.a), uh0.c(this.a), null);
                    if (i != null) {
                        i.close();
                    }
                    return bVar;
                } catch (UnsatisfiedLinkError e) {
                    if (!e.toString().contains("couldn't find \"libflutter.so\"") && !e.toString().contains("dlopen failed: library \"libflutter.so\" not found")) {
                        throw e;
                    }
                    String property = System.getProperty("os.arch");
                    File file = new File(st.this.d.f);
                    throw new UnsupportedOperationException("Could not load libflutter.so this is possibly because the application is running on an architecture that Flutter Android does not support (e.g. x86) see https://docs.flutter.dev/deployment/android#what-are-the-supported-target-architectures for more detail.\nApp is using cpu architecture: " + property + ", and the native libraries directory (with path " + file.getAbsolutePath() + ") contains the following files: " + Arrays.toString(file.list()), e);
                }
            } catch (Throwable th) {
                if (i != null) {
                    try {
                        i.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public final /* synthetic */ void c() {
            st.this.e.prefetchDefaultFontManager();
        }
    }

    public static class b {
        public final String a;
        public final String b;
        public final String c;

        public /* synthetic */ b(String str, String str2, String str3, a aVar) {
            this(str, str2, str3);
        }

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }
    }

    public static class c {
        public String a;

        public String a() {
            return this.a;
        }
    }

    public st(FlutterJNI flutterJNI, ExecutorService executorService) {
        this.e = flutterJNI;
        this.f = executorService;
    }

    public static /* synthetic */ dp0 a(st stVar, Context context) {
        stVar.h(context);
        return null;
    }

    public static boolean j(Bundle bundle) {
        if (bundle == null) {
            return true;
        }
        return bundle.getBoolean("io.flutter.embedding.android.LeakVM", true);
    }

    public boolean e() {
        return this.d.g;
    }

    public void f(Context context, String[] strArr) {
        if (this.a) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
        }
        if (this.b == null) {
            throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
        }
        try {
            p11 i = p11.i("FlutterLoader#ensureInitializationComplete");
            try {
                b bVar = (b) this.g.get();
                ArrayList arrayList = new ArrayList();
                arrayList.add("--icu-symbol-prefix=_binary_icudtl_dat");
                StringBuilder sb = new StringBuilder();
                sb.append("--icu-native-lib-path=");
                sb.append(this.d.f);
                String str = File.separator;
                sb.append(str);
                sb.append("libflutter.so");
                arrayList.add(sb.toString());
                if (strArr != null) {
                    Collections.addAll(arrayList, strArr);
                }
                arrayList.add("--aot-shared-library-name=" + this.d.a);
                arrayList.add("--aot-shared-library-name=" + this.d.f + str + this.d.a);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("--cache-dir-path=");
                sb2.append(bVar.b);
                arrayList.add(sb2.toString());
                if (this.d.e != null) {
                    arrayList.add("--domain-network-policy=" + this.d.e);
                }
                if (this.b.a() != null) {
                    arrayList.add("--log-tag=" + this.b.a());
                }
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageParser.PARSE_IS_PRIVILEGED).metaData;
                int i2 = bundle != null ? bundle.getInt("io.flutter.embedding.android.OldGenHeapSize") : 0;
                if (i2 == 0) {
                    ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(new ActivityManager.MemoryInfo());
                    i2 = (int) ((r6.totalMem / 1000000.0d) / 2.0d);
                }
                arrayList.add("--old-gen-heap-size=" + i2);
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                arrayList.add("--resource-cache-max-bytes-threshold=" + (displayMetrics.widthPixels * displayMetrics.heightPixels * 48));
                arrayList.add("--prefetched-default-font-manager");
                if (bundle != null) {
                    if (bundle.getBoolean("io.flutter.embedding.android.EnableImpeller", false)) {
                        arrayList.add("--enable-impeller");
                    }
                    if (bundle.getBoolean("io.flutter.embedding.android.EnableVulkanValidation", false)) {
                        arrayList.add("--enable-vulkan-validation");
                    }
                    if (bundle.getBoolean("io.flutter.embedding.android.EnableOpenGLGPUTracing", false)) {
                        arrayList.add("--enable-opengl-gpu-tracing");
                    }
                    if (bundle.getBoolean("io.flutter.embedding.android.EnableVulkanGPUTracing", false)) {
                        arrayList.add("--enable-vulkan-gpu-tracing");
                    }
                    String string = bundle.getString("io.flutter.embedding.android.ImpellerBackend");
                    if (string != null) {
                        arrayList.add("--impeller-backend=" + string);
                    }
                }
                arrayList.add("--leak-vm=" + (j(bundle) ? "true" : "false"));
                this.e.init(context, (String[]) arrayList.toArray(new String[0]), null, bVar.a, bVar.b, SystemClock.uptimeMillis() - this.c);
                this.a = true;
                if (i != null) {
                    i.close();
                }
            } finally {
            }
        } catch (Exception e) {
            ea0.c("FlutterLoader", "Flutter initialization failed.", e);
            throw new RuntimeException(e);
        }
    }

    public String g() {
        return this.d.d;
    }

    public final dp0 h(Context context) {
        return null;
    }

    public boolean i() {
        return this.a;
    }

    public void k(Context context) {
        l(context, new c());
    }

    public void l(Context context, c cVar) {
        if (this.b != null) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("startInitialization must be called on the main thread");
        }
        p11 i = p11.i("FlutterLoader#startInitialization");
        try {
            Context applicationContext = context.getApplicationContext();
            this.b = cVar;
            this.c = SystemClock.uptimeMillis();
            this.d = a4.e(applicationContext);
            l71.f((DisplayManager) applicationContext.getSystemService("display"), this.e).g();
            this.g = this.f.submit(new a(applicationContext));
            if (i != null) {
                i.close();
            }
        } catch (Throwable th) {
            if (i != null) {
                try {
                    i.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
