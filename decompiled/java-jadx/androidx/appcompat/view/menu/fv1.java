package androidx.appcompat.view.menu;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class fv1 {

    public static class a {
        public static volatile rg0 a;

        public static rg0 a(Context context) {
            rg0 rg0Var;
            rg0 a2;
            synchronized (a.class) {
                try {
                    rg0Var = a;
                    if (rg0Var == null) {
                        new fv1();
                        String str = Build.TYPE;
                        String str2 = Build.TAGS;
                        if (!str.equals("eng")) {
                            if (str.equals("userdebug")) {
                            }
                            a2 = rg0.a();
                            rg0Var = a2;
                            a = rg0Var;
                        }
                        if (!str2.contains("dev-keys")) {
                            if (str2.contains("test-keys")) {
                            }
                            a2 = rg0.a();
                            rg0Var = a2;
                            a = rg0Var;
                        }
                        if (zt1.a() && !context.isDeviceProtectedStorage()) {
                            context = context.createDeviceProtectedStorageContext();
                        }
                        a2 = fv1.a(context);
                        rg0Var = a2;
                        a = rg0Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return rg0Var;
        }
    }

    public static rg0 a(Context context) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            rg0 d = d(context);
            rg0 d2 = d.c() ? rg0.d(b(context, (File) d.b())) : rg0.a();
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return d2;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public static cv1 b(Context context, File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                nu0 nu0Var = new nu0();
                HashMap hashMap = new HashMap();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        String valueOf = String.valueOf(file);
                        String packageName = context.getPackageName();
                        StringBuilder sb = new StringBuilder("Parsed ");
                        sb.append(valueOf);
                        sb.append(" for Android package ");
                        sb.append(packageName);
                        su1 su1Var = new su1(nu0Var);
                        bufferedReader.close();
                        return su1Var;
                    }
                    String[] split = readLine.split(" ", 3);
                    if (split.length != 3) {
                        new StringBuilder("Invalid: ").append(readLine);
                    } else {
                        String c = c(split[0]);
                        String decode = Uri.decode(c(split[1]));
                        String str = (String) hashMap.get(split[2]);
                        if (str == null) {
                            String c2 = c(split[2]);
                            str = Uri.decode(c2);
                            if (str.length() < 1024 || str == c2) {
                                hashMap.put(c2, str);
                            }
                        }
                        if (!nu0Var.containsKey(c)) {
                            nu0Var.put(c, new nu0());
                        }
                        ((nu0) nu0Var.get(c)).put(decode, str);
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    } catch (Exception unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static final String c(String str) {
        return new String(str);
    }

    public static rg0 d(Context context) {
        try {
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? rg0.d(file) : rg0.a();
        } catch (RuntimeException unused) {
            return rg0.a();
        }
    }
}
