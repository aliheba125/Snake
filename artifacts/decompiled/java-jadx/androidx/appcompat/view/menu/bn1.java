package androidx.appcompat.view.menu;

import android.util.Log;

/* loaded from: classes.dex */
public final class bn1 extends ClassLoader {
    @Override // java.lang.ClassLoader
    public final Class loadClass(String str, boolean z) {
        if (str != "com.google.android.gms.iid.MessengerCompat" && (str == null || !str.equals("com.google.android.gms.iid.MessengerCompat"))) {
            return super.loadClass(str, z);
        }
        Log.isLoggable("CloudMessengerCompat", 3);
        return ep1.class;
    }
}
