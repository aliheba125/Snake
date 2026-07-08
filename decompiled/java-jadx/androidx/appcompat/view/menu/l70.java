package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class l70 {
    public static final Object a(k70 k70Var, Object obj) {
        z50.e(k70Var, "<this>");
        if (k70Var.b(obj)) {
            z50.c(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.cast");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + k70Var.a());
    }
}
