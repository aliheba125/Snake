package androidx.appcompat.view.menu;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class l32 implements Runnable {
    public final URL m;
    public final byte[] n;
    public final f32 o;
    public final String p;
    public final Map q;
    public final /* synthetic */ h32 r;

    public l32(h32 h32Var, String str, URL url, byte[] bArr, Map map, f32 f32Var) {
        this.r = h32Var;
        mj0.e(str);
        mj0.i(url);
        mj0.i(f32Var);
        this.m = url;
        this.n = null;
        this.o = f32Var;
        this.p = str;
        this.q = null;
    }

    public final /* synthetic */ void a(int i, Exception exc, byte[] bArr, Map map) {
        this.o.a(this.p, i, exc, bArr, map);
    }

    public final void b(final int i, final Exception exc, final byte[] bArr, final Map map) {
        this.r.h().D(new Runnable() { // from class: androidx.appcompat.view.menu.j32
            @Override // java.lang.Runnable
            public final void run() {
                l32.this.a(i, exc, bArr, map);
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpURLConnection httpURLConnection;
        Map<String, List<String>> map;
        byte[] v;
        this.r.k();
        int i = 0;
        try {
            URLConnection b = yk1.a().b(this.m, "client-measurement");
            if (!(b instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) b;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                i = httpURLConnection.getResponseCode();
                map = httpURLConnection.getHeaderFields();
                try {
                    h32 h32Var = this.r;
                    v = h32.v(httpURLConnection);
                    httpURLConnection.disconnect();
                    b(i, null, v, map);
                } catch (IOException e) {
                    e = e;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    b(i, e, null, map);
                } catch (Throwable th) {
                    th = th;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    b(i, null, null, map);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                map = null;
            } catch (Throwable th2) {
                th = th2;
                map = null;
            }
        } catch (IOException e3) {
            e = e3;
            httpURLConnection = null;
            map = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            map = null;
        }
    }
}
