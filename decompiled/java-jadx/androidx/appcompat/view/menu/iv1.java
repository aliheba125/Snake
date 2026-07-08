package androidx.appcompat.view.menu;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes.dex */
public abstract class iv1 {
    public static final o4 a = new o4();

    public static synchronized Uri a(String str) {
        Uri uri;
        synchronized (iv1.class) {
            o4 o4Var = a;
            uri = (Uri) o4Var.get(str);
            if (uri == null) {
                uri = Uri.parse("content://com.google.android.gms.phenotype/" + Uri.encode(str));
                o4Var.put(str, uri);
            }
        }
        return uri;
    }

    public static String b(Context context, String str) {
        if (str.contains("#")) {
            throw new IllegalArgumentException("The passed in package cannot already have a subpackage: " + str);
        }
        return str + "#" + context.getPackageName();
    }
}
