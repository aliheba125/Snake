package androidx.appcompat.view.menu;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class g40 implements Closeable {
    public final URL m;
    public volatile Future n;
    public zy0 o;

    public g40(URL url) {
        this.m = url;
    }

    public static g40 e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new g40(new URL(str));
        } catch (MalformedURLException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Not downloading image, bad URL: ");
            sb.append(str);
            return null;
        }
    }

    public Bitmap c() {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Starting download of: ");
            sb.append(this.m);
        }
        byte[] d = d();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(d, 0, d.length);
        if (decodeByteArray == null) {
            throw new IOException("Failed to decode image: " + this.m);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Successfully downloaded image: ");
            sb2.append(this.m);
        }
        return decodeByteArray;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.n.cancel(true);
    }

    public final byte[] d() {
        URLConnection openConnection = this.m.openConnection();
        if (openConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = openConnection.getInputStream();
        try {
            byte[] d = g9.d(g9.b(inputStream, 1048577L));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Downloaded ");
                sb.append(d.length);
                sb.append(" bytes from ");
                sb.append(this.m);
            }
            if (d.length <= 1048576) {
                return d;
            }
            throw new IOException("Image exceeds max size of 1048576");
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public zy0 h() {
        return (zy0) mj0.i(this.o);
    }

    public final /* synthetic */ void i(bz0 bz0Var) {
        try {
            bz0Var.c(c());
        } catch (Exception e) {
            bz0Var.b(e);
        }
    }

    public void j(ExecutorService executorService) {
        final bz0 bz0Var = new bz0();
        this.n = executorService.submit(new Runnable() { // from class: androidx.appcompat.view.menu.f40
            @Override // java.lang.Runnable
            public final void run() {
                g40.this.i(bz0Var);
            }
        });
        this.o = bz0Var.a();
    }
}
