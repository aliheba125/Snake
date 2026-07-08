package androidx.appcompat.view.menu;

import android.content.res.Configuration;
import android.os.LocaleList;

/* loaded from: classes.dex */
public abstract class af {

    public static class a {
        public static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }

        public static void b(Configuration configuration, p90 p90Var) {
            configuration.setLocales((LocaleList) p90Var.c());
        }
    }

    public static p90 a(Configuration configuration) {
        return p90.d(a.a(configuration));
    }
}
