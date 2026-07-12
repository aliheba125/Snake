package androidx.appcompat.view.menu;

import android.os.Parcel;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;

/* loaded from: classes.dex */
public abstract class lr {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void b(File file, File file2) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    FileChannel channel = fileInputStream2.getChannel();
                    FileChannel channel2 = fileOutputStream.getChannel();
                    ByteBuffer allocate = ByteBuffer.allocate(1024);
                    while (true) {
                        allocate.clear();
                        if (channel.read(allocate) == -1) {
                            a(fileInputStream2);
                            a(fileOutputStream);
                            return;
                        } else {
                            allocate.limit(allocate.position());
                            allocate.position(0);
                            channel2.write(allocate);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    a(fileInputStream);
                    a(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static void c(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (Throwable unused) {
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    a(inputStream);
                    a(fileOutputStream);
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Throwable unused2) {
            fileOutputStream2 = fileOutputStream;
            a(inputStream);
            a(fileOutputStream2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000b, code lost:
    
        if (f(r6) == false) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:5:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int d(File file) {
        int i = 0;
        if (file.isDirectory()) {
        }
        return !file.delete() ? i + 1 : i;
        String[] list = file.list();
        int length = list.length;
        int i2 = 0;
        while (i < length) {
            i2 += d(new File(file, list[i]));
            i++;
        }
        i = i2;
        if (!file.delete()) {
        }
    }

    public static boolean e(String str) {
        return new File(str).exists();
    }

    public static boolean f(File file) {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static void g(File file) {
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static void h(String str) {
        g(new File(str));
    }

    public static boolean i(File file, File file2) {
        return file.renameTo(file2);
    }

    public static byte[] j(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return k(fileInputStream);
        } finally {
            a(fileInputStream);
        }
    }

    public static byte[] k(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[100];
        while (true) {
            int read = inputStream.read(bArr, 0, 100);
            if (read <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static void l(Parcel parcel, FileOutputStream fileOutputStream) {
        fileOutputStream.write(parcel.marshall());
    }

    public static void m(byte[] bArr, File file) {
        ReadableByteChannel newChannel = Channels.newChannel(new ByteArrayInputStream(bArr));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                FileChannel channel = fileOutputStream.getChannel();
                try {
                    channel.transferFrom(newChannel, 0L, bArr.length);
                    channel.close();
                    fileOutputStream.close();
                    if (newChannel != null) {
                        newChannel.close();
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            if (newChannel != null) {
                try {
                    newChannel.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
