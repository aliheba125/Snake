package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class mg {
    public static void a(Context context) {
        int i = 0;
        do {
            try {
                if (!(context instanceof ContextWrapper)) {
                    tg.d.e(context, null);
                    try {
                        context.getPackageManager();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    tg.b.e(context, yu0.o());
                    ug.b.e(context, yu0.o());
                    jg.b.e(context.getContentResolver(), yu0.o());
                    if (y8.h()) {
                        b(tg.f.b(context, new Object[0]), jv0.J2());
                        return;
                    }
                    return;
                }
                context = ((ContextWrapper) context).getBaseContext();
                i++;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        } while (i < 10);
    }

    public static void b(Object obj, int i) {
        go0.b bVar;
        if (obj == null || (bVar = f5.b) == null) {
            return;
        }
        Object c = bVar.c(obj);
        g5.b.e(c, yu0.o());
        g5.c.e(c, Integer.valueOf(i));
        b(f5.c.b(obj, new Object[0]), i);
    }
}
