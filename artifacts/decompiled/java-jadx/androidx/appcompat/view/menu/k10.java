package androidx.appcompat.view.menu;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.view.menu.go0;

/* loaded from: classes.dex */
public abstract class k10 {
    public static final go0 a;
    public static go0.d b;

    static {
        go0 w = go0.w("android.content.IIntentReceiver");
        a = w;
        Class cls = Integer.TYPE;
        Class cls2 = Boolean.TYPE;
        b = w.u("performReceive", Intent.class, cls, String.class, Bundle.class, cls2, cls2, cls);
    }
}
