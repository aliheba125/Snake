package androidx.appcompat.view.menu;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class t41 {
    public static final long b = TimeUnit.HOURS.toSeconds(1);
    public static final Pattern c = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static t41 d;
    public final dc a;

    public t41(dc dcVar) {
        this.a = dcVar;
    }

    public static t41 c() {
        return d(sy0.b());
    }

    public static t41 d(dc dcVar) {
        if (d == null) {
            d = new t41(dcVar);
        }
        return d;
    }

    public static boolean g(String str) {
        return c.matcher(str).matches();
    }

    public static boolean h(String str) {
        return str.contains(":");
    }

    public long a() {
        return this.a.a();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(ai0 ai0Var) {
        return TextUtils.isEmpty(ai0Var.b()) || ai0Var.h() + ai0Var.c() < b() + b;
    }
}
