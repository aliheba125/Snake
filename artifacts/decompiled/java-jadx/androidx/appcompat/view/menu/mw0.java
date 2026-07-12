package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;

/* loaded from: classes.dex */
public abstract class mw0 {
    public static final StackTraceElement a = new z4().a();
    public static final String b;
    public static final String c;

    static {
        Object a2;
        Object a3;
        try {
            np0.a aVar = np0.m;
            a2 = np0.a(y7.class.getCanonicalName());
        } catch (Throwable th) {
            np0.a aVar2 = np0.m;
            a2 = np0.a(op0.a(th));
        }
        if (np0.b(a2) != null) {
            a2 = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        b = (String) a2;
        try {
            a3 = np0.a(mw0.class.getCanonicalName());
        } catch (Throwable th2) {
            np0.a aVar3 = np0.m;
            a3 = np0.a(op0.a(th2));
        }
        if (np0.b(a3) != null) {
            a3 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        c = (String) a3;
    }

    public static final Throwable a(Throwable th) {
        return th;
    }
}
