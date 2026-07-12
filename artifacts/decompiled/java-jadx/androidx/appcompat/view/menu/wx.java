package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.view.menu.ac;
import androidx.appcompat.view.menu.m2;
import com.google.android.gms.common.api.GoogleApiActivity;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;

/* loaded from: classes.dex */
public abstract class wx {
    public final Context a;
    public final String b;
    public final m2 c;
    public final m2.d d;
    public final r2 e;
    public final Looper f;
    public final int g;
    public final zx h;
    public final bx0 i;
    public final ay j;

    public static class a {
        public static final a c = new C0032a().a();
        public final bx0 a;
        public final Looper b;

        /* renamed from: androidx.appcompat.view.menu.wx$a$a, reason: collision with other inner class name */
        public static class C0032a {
            public bx0 a;
            public Looper b;

            /* JADX WARN: Multi-variable type inference failed */
            public a a() {
                if (this.a == null) {
                    this.a = new p2();
                }
                if (this.b == null) {
                    this.b = Looper.getMainLooper();
                }
                return new a(this.a, this.b);
            }
        }

        public a(bx0 bx0Var, Account account, Looper looper) {
            this.a = bx0Var;
            this.b = looper;
        }
    }

    public wx(Context context, Activity activity, m2 m2Var, m2.d dVar, a aVar) {
        mj0.j(context, "Null context is not permitted.");
        mj0.j(m2Var, "Api must not be null.");
        mj0.j(aVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.a = context.getApplicationContext();
        String str = null;
        if (qi0.k()) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        this.b = str;
        this.c = m2Var;
        this.d = dVar;
        this.f = aVar.b;
        r2 a2 = r2.a(m2Var, dVar, str);
        this.e = a2;
        this.h = new yb1(this);
        ay x = ay.x(this.a);
        this.j = x;
        this.g = x.m();
        this.i = aVar.a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            hb1.u(activity, x, a2);
        }
        x.b(this);
    }

    public ac.a b() {
        ac.a aVar = new ac.a();
        aVar.d(null);
        aVar.c(Collections.emptySet());
        aVar.e(this.a.getClass().getName());
        aVar.b(this.a.getPackageName());
        return aVar;
    }

    public zy0 c(az0 az0Var) {
        return i(2, az0Var);
    }

    public final r2 d() {
        return this.e;
    }

    public String e() {
        return this.b;
    }

    public final int f() {
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m2.f g(Looper looper, tb1 tb1Var) {
        m2.f b = ((m2.a) mj0.i(this.c.a())).b(this.a, looper, b().a(), this.d, tb1Var, tb1Var);
        String e = e();
        if (e != null && (b instanceof z7)) {
            ((z7) b).P(e);
        }
        if (e == null || !(b instanceof bf0)) {
            return b;
        }
        throw null;
    }

    public final mc1 h(Context context, Handler handler) {
        return new mc1(context, handler, b().a());
    }

    public final zy0 i(int i, az0 az0Var) {
        bz0 bz0Var = new bz0();
        this.j.D(this, i, az0Var, bz0Var, this.i);
        return bz0Var.a();
    }

    public wx(Context context, m2 m2Var, m2.d dVar, a aVar) {
        this(context, null, m2Var, dVar, aVar);
    }
}
