package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class zq {
    public static final boolean a = false;

    static {
        Object a2;
        try {
            np0.a aVar = np0.m;
            a2 = np0.a(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            np0.a aVar2 = np0.m;
            a2 = np0.a(op0.a(th));
        }
        np0.d(a2);
    }

    public static final boolean a() {
        return a;
    }
}
