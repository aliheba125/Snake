package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Looper;
import androidx.appcompat.view.menu.z7;
import androidx.appcompat.view.menu.zx;
import java.util.Set;

/* loaded from: classes.dex */
public final class m2 {
    public final a a;
    public final g b;
    public final String c;

    public static abstract class a extends e {
        public f a(Context context, Looper looper, ac acVar, Object obj, df dfVar, hg0 hg0Var) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }

        public f b(Context context, Looper looper, ac acVar, Object obj, zx.a aVar, zx.b bVar) {
            return a(context, looper, acVar, obj, aVar, bVar);
        }
    }

    public interface b {
    }

    public static class c {
    }

    public interface d {
    }

    public static abstract class e {
    }

    public interface f extends b {
        boolean a();

        Set b();

        void c(String str);

        boolean d();

        int e();

        boolean f();

        hr[] g();

        String h();

        String j();

        void k(mz mzVar, Set set);

        void l(z7.e eVar);

        void m(z7.c cVar);

        void n();

        boolean o();
    }

    public static final class g extends c {
    }

    public m2(String str, a aVar, g gVar) {
        mj0.j(aVar, "Cannot construct an Api with a null ClientBuilder");
        mj0.j(gVar, "Cannot construct an Api with a null ClientKey");
        this.c = str;
        this.a = aVar;
        this.b = gVar;
    }

    public final a a() {
        return this.a;
    }

    public final String b() {
        return this.c;
    }
}
