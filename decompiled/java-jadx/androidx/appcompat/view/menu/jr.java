package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import com.snake.helper.FileProvider;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class jr {
    public static File a(Context context, Uri uri) {
        Iterator it = jv0.M2().iterator();
        while (it.hasNext()) {
            try {
                File d = FileProvider.d(context, ((ProviderInfo) it.next()).authority, uri);
                if (d != null && d.exists()) {
                    return d;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Uri b(Context context, Uri uri) {
        if (!y8.c()) {
            return uri;
        }
        File a = a(context, uri);
        if (a == null) {
            return null;
        }
        return yu0.l().g(a.getAbsolutePath());
    }
}
