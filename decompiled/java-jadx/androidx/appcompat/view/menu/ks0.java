package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ks0 {
    public static Object a(Object obj) {
        return obj;
    }

    public static final js0 b(Object obj) {
        if (obj == ye.a) {
            throw new IllegalStateException("Does not contain segment".toString());
        }
        z50.c(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (js0) obj;
    }

    public static final boolean c(Object obj) {
        return obj == ye.a;
    }
}
