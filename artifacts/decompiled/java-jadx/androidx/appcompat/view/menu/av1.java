package androidx.appcompat.view.menu;

import android.content.Context;
import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class av1 implements qu1 {
    public static av1 c;
    public final Context a;
    public final ContentObserver b;

    public av1() {
        this.a = null;
        this.b = null;
    }

    public static av1 a(Context context) {
        av1 av1Var;
        synchronized (av1.class) {
            try {
                if (c == null) {
                    c = xh0.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new av1(context) : new av1();
                }
                av1Var = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return av1Var;
    }

    public static synchronized void b() {
        Context context;
        synchronized (av1.class) {
            try {
                av1 av1Var = c;
                if (av1Var != null && (context = av1Var.a) != null && av1Var.b != null) {
                    context.getContentResolver().unregisterContentObserver(c.b);
                }
                c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ String c(String str) {
        return ot1.a(this.a.getContentResolver(), str, null);
    }

    @Override // androidx.appcompat.view.menu.qu1
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final String h(final String str) {
        Context context = this.a;
        if (context != null && !zt1.b(context)) {
            try {
                return (String) wu1.a(new uu1() { // from class: androidx.appcompat.view.menu.yu1
                    @Override // androidx.appcompat.view.menu.uu1
                    public final Object a() {
                        return av1.this.c(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException unused) {
                new StringBuilder("Unable to read GServices for: ").append(str);
            }
        }
        return null;
    }

    public av1(Context context) {
        this.a = context;
        ev1 ev1Var = new ev1(this, null);
        this.b = ev1Var;
        context.getContentResolver().registerContentObserver(ot1.a, true, ev1Var);
    }
}
