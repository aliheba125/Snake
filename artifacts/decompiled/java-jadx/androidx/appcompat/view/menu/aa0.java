package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class aa0 {
    public static final Object a = new my0("CONDITION_FALSE");

    public static final Object a() {
        return a;
    }

    public static final ba0 b(Object obj) {
        ba0 ba0Var;
        to0 to0Var = obj instanceof to0 ? (to0) obj : null;
        if (to0Var != null && (ba0Var = to0Var.a) != null) {
            return ba0Var;
        }
        z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (ba0) obj;
    }
}
