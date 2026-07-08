package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.view.menu.iq;
import androidx.window.extensions.layout.WindowLayoutComponent;

/* loaded from: classes.dex */
public interface g81 {
    public static final a a = a.a;

    public static final class a {
        public static final boolean b = false;
        public static final i80 d;
        public static i81 e;
        public static final /* synthetic */ a a = new a();
        public static final String c = do0.b(g81.class).c();

        /* renamed from: androidx.appcompat.view.menu.g81$a$a, reason: collision with other inner class name */
        public static final class C0005a extends g80 implements dw {
            public static final C0005a n = new C0005a();

            public C0005a() {
                super(0);
            }

            @Override // androidx.appcompat.view.menu.dw
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b81 d() {
                WindowLayoutComponent g;
                try {
                    ClassLoader classLoader = g81.class.getClassLoader();
                    lr0 lr0Var = classLoader != null ? new lr0(classLoader, new qf(classLoader)) : null;
                    if (lr0Var == null || (g = lr0Var.g()) == null) {
                        return null;
                    }
                    iq.a aVar = iq.a;
                    z50.d(classLoader, "loader");
                    return aVar.a(g, new qf(classLoader));
                } catch (Throwable unused) {
                    if (!a.b) {
                        return null;
                    }
                    String unused2 = a.c;
                    return null;
                }
            }
        }

        static {
            i80 a2;
            a2 = m80.a(C0005a.n);
            d = a2;
            e = co.a;
        }

        public final b81 c() {
            return (b81) d.getValue();
        }

        public final g81 d(Context context) {
            z50.e(context, "context");
            b81 c2 = c();
            if (c2 == null) {
                c2 = androidx.window.layout.adapter.sidecar.b.c.a(context);
            }
            return e.a(new k81(da1.b, c2));
        }
    }

    ss a(Activity activity);
}
