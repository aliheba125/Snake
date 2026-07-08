package androidx.appcompat.view.menu;

import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class p90 {
    public static final p90 b = a(new Locale[0]);
    public final q90 a;

    public static class a {
        public static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }

        public static LocaleList b() {
            return LocaleList.getAdjustedDefault();
        }

        public static LocaleList c() {
            return LocaleList.getDefault();
        }
    }

    public p90(q90 q90Var) {
        this.a = q90Var;
    }

    public static p90 a(Locale... localeArr) {
        return d(a.a(localeArr));
    }

    public static p90 d(LocaleList localeList) {
        return new p90(new r90(localeList));
    }

    public Locale b(int i) {
        return this.a.get(i);
    }

    public Object c() {
        return this.a.a();
    }

    public boolean equals(Object obj) {
        return (obj instanceof p90) && this.a.equals(((p90) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
