package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.appcompat.view.menu.cp0;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class d {
    public static final cp0 a = cp0.w();
    public static final Object b = new Object();
    public static c c = null;

    public static class a {
        public static PackageInfo a(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    public static class b {
        public final int a;
        public final int b;
        public final long c;
        public final long d;

        public b(int i, int i2, long j, long j2) {
            this.a = i;
            this.b = i2;
            this.c = j;
            this.d = j2;
        }

        public static b a(File file) {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                b bVar = new b(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return bVar;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public void b(File file) {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.a);
                dataOutputStream.writeInt(this.b);
                dataOutputStream.writeLong(this.c);
                dataOutputStream.writeLong(this.d);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.b == bVar.b && this.c == bVar.c && this.a == bVar.a && this.d == bVar.d;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.a), Long.valueOf(this.d));
        }
    }

    public static class c {
        public final int a;
        public final boolean b;
        public final boolean c;

        public c(int i, boolean z, boolean z2) {
            this.a = i;
            this.c = z2;
            this.b = z;
        }
    }

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? a.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static c b(int i, boolean z, boolean z2) {
        c cVar = new c(i, z, z2);
        c = cVar;
        a.s(cVar);
        return c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:14|(1:79)(1:18)|19|(1:78)(1:23)|24|25|26|(2:63|64)(1:28)|29|(8:36|(1:40)|(1:47)|48|(2:55|56)|52|53|54)|(1:62)|(1:40)|(3:42|45|47)|48|(1:50)|55|56|52|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d1, code lost:
    
        r3 = 196608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a2, code lost:
    
        r3 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static c c(Context context, boolean z) {
        b a2;
        b bVar;
        int i;
        c cVar;
        if (!z && (cVar = c) != null) {
            return cVar;
        }
        synchronized (b) {
            if (!z) {
                try {
                    c cVar2 = c;
                    if (cVar2 != null) {
                        return cVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i2 = 0;
            if (Build.VERSION.SDK_INT == 30) {
                return b(262144, false, false);
            }
            File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
            long length = file.length();
            boolean z2 = file.exists() && length > 0;
            File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
            long length2 = file2.length();
            boolean z3 = file2.exists() && length2 > 0;
            try {
                long a3 = a(context);
                File file3 = new File(context.getFilesDir(), "profileInstalled");
                if (file3.exists()) {
                    try {
                        a2 = b.a(file3);
                    } catch (IOException unused) {
                        return b(131072, z2, z3);
                    }
                } else {
                    a2 = null;
                }
                if (a2 != null && a2.c == a3 && (i = a2.b) != 2) {
                    i2 = i;
                    if (z && z3 && i2 != 1) {
                        i2 = 2;
                    }
                    if (a2 != null && a2.b == 2 && i2 == 1 && length < a2.d) {
                        i2 = 3;
                    }
                    bVar = new b(1, i2, a3, length2);
                    if (a2 != null || !a2.equals(bVar)) {
                        bVar.b(file3);
                    }
                    return b(i2, z2, z3);
                }
                if (z3) {
                    i2 = 2;
                }
                if (z) {
                    i2 = 2;
                }
                if (a2 != null) {
                    i2 = 3;
                }
                bVar = new b(1, i2, a3, length2);
                if (a2 != null) {
                }
                bVar.b(file3);
                return b(i2, z2, z3);
            } catch (PackageManager.NameNotFoundException unused2) {
                return b(65536, z2, z3);
            }
        }
    }
}
