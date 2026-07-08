package androidx.appcompat.view.menu;

import android.os.Trace;

/* loaded from: classes.dex */
public abstract class ps {
    public static void a() {
        Trace.endSection();
    }

    public static void b(String str) {
        Trace.beginSection(str);
    }
}
