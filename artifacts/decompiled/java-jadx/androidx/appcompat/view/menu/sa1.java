package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public class sa1 {
    public static sa1 b = new sa1();
    public ah0 a = null;

    public static ah0 a(Context context) {
        return b.b(context);
    }

    public final synchronized ah0 b(Context context) {
        try {
            if (this.a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.a = new ah0(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.a;
    }
}
